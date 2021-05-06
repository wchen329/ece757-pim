#ifndef __PIMSM_H__
#define __PIMSM_H__
#include <cstdint>

namespace pim
{
	class PimSM
	{
		public:
//			PimSM(Dcacheport&)

			uint64_t& op() { return op_reg; }
			uint64_t& Src1() { return src1_reg; }
			uint64_t& Src2() { return src2_reg; }
			uint64_t& Dst() { return dst_reg; }
		private:
			uint64_t op_reg;
			uint64_t src1_reg;
			uint64_t src2_reg;
			uint64_t dst_reg;
	};
}

#endif
