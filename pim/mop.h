#ifndef __MOP_H__
#define __MOP_H__
#include <cstdint>

/* Macro-op ISA
 * Definitions
 *
 */
namespace pim
{
	enum MACOP
	{
		MCC_NOOP,
		MCC_ADD,
		MCC_SUB,
		MCC_MUL,
		MCC_SHA,
		MCC_SHA2,
		MCC_AES_BC
	};

	// Array Handle
	typedef uint64_t h_Array;

	/* Macroop
	 * A Macroop contains a (1) opcode, (2) src1, (2) src2, and (3) dst handles
	 */
	class Macroop
	{
		public:
			MACOP getOpcode() { return opc; }
			h_Array getSrc1() { return src1; }
			h_Array getSrc2() { return src2; }
			h_Array getDst() { return dst; }

			Macroop() :
				opc(MCC_NOOP),
				src1(0),
				src2(0),
				dst(0)
			{
			}

			Macroop(
				MACOP opc_in,
				h_Array src1_in,
				h_Array src2_in,
				h_Array dst_in
			) :
				opc(opc_in),
				src1(src1_in),
				src2(src2_in),
				dst(dst_in)
			{
			}

		private:
			
			MACOP opc;
			h_Array src1, src2, dst;
	};
}

#endif
