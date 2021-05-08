#include "pimcacheop.h"

namespace pim
{
	void PimOpEx::execute()
	{
		// Find the source 1 block
		CacheBlk* src1 = bc->tags->findBlock(mtlb.lookup_paddr(state.Src1()), false);

		// Find the source 2 block
		CacheBlk* src2 = bc->tags->findBlock(mtlb.lookup_paddr(state.Src2()), false);

		// Find the dst block
		CacheBlk* dst = bc->tags->findBlock(mtlb.lookup_paddr(state.Dst()), false);

		// Execute .
		assert(src1 != nullptr && src2 != nullptr && dst != nullptr);	

		std::vector<int32_t> s1_32; 
		std::vector<int32_t> s2_32; 
		std::vector<int32_t> dst_32; 

		typedef std::vector<int32_t> VType;
		typedef VType::iterator VTypeItr;

		// Convert each block to 32-bit vectors
		for(size_t itr = 0; itr < 64 / sizeof(int32_t); ++itr)
		{
			uint64_t incr = itr * sizeof(int32_t);
			int32_t src1_nxt = byte_coalesce<int32_t>(src1->data + incr);
			int32_t src2_nxt = byte_coalesce<int32_t>(src2->data + incr);
			s1_32.push_back(src1_nxt);
			s2_32.push_back(src2_nxt);
		}

		// Perform operation
		switch(state.op())
		{
			case MCC_SUB:
				// Negate src2
				std::transform<VTypeItr, VTypeItr, std::negate<int32_t>>
                                (
							s2_32.begin(),
                                                         s2_32.end(),
							s2_32.begin(),
                                                         std::negate<int32_t>()
                                );// want fall through
				adder(s1_32, s2_32);
				dst_32 = s1_32;
				break;
			case MCC_ADD:
				adder(s1_32, s2_32);
				dst_32 = s1_32;
				break;
			case MCC_MUL:
				break;
			case MCC_SHA:
				break;
			case MCC_AES_BC:
				break;
			default:
				return; // for noops and unsupported operations
		}

		// Finish it off by writing back to the destination line
		std::copy<VTypeItr, int32_t*>(dst_32.begin(), dst_32.end(),
			reinterpret_cast<int32_t*>(dst->data));
	}
}

