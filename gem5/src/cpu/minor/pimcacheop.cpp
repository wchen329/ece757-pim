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

		std::string output_buf;
		unsigned char* ctext = nullptr;

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
				std::copy<VTypeItr, int32_t*>(dst_32.begin(), dst_32.end(),
					reinterpret_cast<int32_t*>(dst->data));
				break;
			case MCC_ADD:
				adder(s1_32, s2_32);
				dst_32 = s1_32;
				std::copy<VTypeItr, int32_t*>(dst_32.begin(), dst_32.end(),
					reinterpret_cast<int32_t*>(dst->data));
				break;
			case MCC_MUL:
				multiplier(s1_32, s2_32);
				dst_32 = s1_32;
				std::copy<VTypeItr, int32_t*>(dst_32.begin(), dst_32.end(),
					reinterpret_cast<int32_t*>(dst->data));
				break;
			case MCC_SHA:
				output_buf = sha1(state.encbuf());
				for(size_t itr = 0; itr < output_buf.size(); ++itr)
				{
					dst->data[itr] = output_buf[itr];
				}
				break;
			case MCC_AES_BC:
				unsigned num_bytes = 64;
				unsigned& gcc_bytes = num_bytes;
				adder(s1_32, s2_32);
				dst_32 = s1_32;
				std::copy<VTypeItr, int32_t*>(dst_32.begin(), dst_32.end(),
				// Argument arrangement
				// -
				// Src1: 64 bytes of data to encrypt
				// Src2: lower 32 bytes: key, upper 32 bytes: IV
				// Dst: full CBC of all 64 bytes of Src1 with IV and key as specified
				ctext = state.aes_instance().EncryptCBC(src1->data, gcc_bytes, src2->data, src2->data + num_bytes/2, gcc_bytes);
				// Copy cipher text back
				for(size_t itr = 0; itr < num_bytes; ++itr)
				{
					dst->data[itr] = ctext[itr];
				}
				delete[] ctext;
				break;
		}

		// Finish it off by writing back to the destination line
	}
}

