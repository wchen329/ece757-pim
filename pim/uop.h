#ifndef __UOP_H__
#define __UOP_H__
#include <cstdint>

#include "array.h"

/* Micro-op ISA
 * Definitions
 *
 */
namespace pim
{
	enum UOP
	{
		CC_NOP,
		CC_COPY,
		CC_BUZ,
		CC_CMP,
		CC_NEQ,
		CC_AND,
		CC_OR,
		CC_XOR,
		CC_NOT,
		CC_RR,
		CC_RL
	};

	/* Microop
	 * A Microop contains a (1) opcode, (2) src1, (2) src2, and (3) dst handles
	 */
	class Microop
	{
		public:
			UOP getOpcode() { return opc; }
			h_Array getSrc1() { return src1; }
			h_Array getSrc2() { return src2; }
			h_Array getDst() { return dst; }

			Microop(
				UOP opc_in,
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
			
			UOP opc;
			h_Array src1, src2, dst;
	};
}

#endif
