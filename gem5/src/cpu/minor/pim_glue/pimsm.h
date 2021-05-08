#ifndef __PIMSM_H__
#define __PIMSM_H__
#include <cstdint>
#include <string>

#include "cpu/minor/pim_func_unit/AES.hh"

#define NUM_LINES 64

namespace pim
{
	/* PimSM
	 */
	class PimSM
	{
		public:

			uint64_t& op() { return op_reg; }
			uint64_t& Src1() { return src1_reg; }
			uint64_t& Src2() { return src2_reg; }
			uint64_t& Dst() { return dst_reg; }
			std::string& encbuf() { return encryption_buffer; }
			AES& aes_instance() { return aes; }

			/* push_data
			 * Pushes a cache line on to the encryption buffer.
			 */
			void push_data(MetaTLB& mtlb, BaseCache* bc)
			{
				
				// Find the source 1 block
				CacheBlk* src1 = bc->tags->findBlock(mtlb.lookup_paddr(src1_reg), false);

				// Find the source 2 block
				CacheBlk* src2 = bc->tags->findBlock(mtlb.lookup_paddr(src1_reg), false);

				// Make sure our cache blocks are valid.
				assert(src1 != nullptr && src2 != nullptr);

				// Add this data to the buffer 
				for(size_t s = 0; s < NUM_LINES; ++s)
				{
					char * s1_ptr = reinterpret_cast<char*>(src1->data + s);
					encryption_buffer += *s1_ptr;
				}
				for(size_t s = 0; s < NUM_LINES; ++s)
				{
					char * s2_ptr = reinterpret_cast<char*>(src2->data + s);
					encryption_buffer += *s2_ptr;
				}
			}

			// Reset state
			PimSM() :
				aes(256),
				op_reg(0),
				src1_reg(0),
				src2_reg(0),
				dst_reg(0)
			{
			}

		private:
			AES aes;
			uint64_t op_reg;
			uint64_t src1_reg;
			uint64_t src2_reg;
			uint64_t dst_reg;
			std::string encryption_buffer;
	};
}

#endif
