#include "uopdecoder.h"

namespace pim
{

	void Microop_Decoder::cycle()
	{

	}


	Microop Microop_Decoder::getNextMicroop()
	{
		// If microop buffer doesn't have anything, return no op
		if(uop_buffer.empty())
		{
			return Microop(CC_NOP, 0, 0, 0);
		}		
		else
		{
			// Otherwise, returnn the next instruction
			Microop next = uop_buffer.front();
			uop_buffer.pop();
			return next;
		}
	}

	std::list<Microop> Microop_Decoder::decompose()
	{
		std::list<Microop> nextops;
		return nextops;

/*
		MACOP mopc = mop_buffer.getOpcode();
		h_Array src1_f = mop_buffer.getSrc1();
		h_Array src2_f = mop_buffer.getSrc2();
		h_Array dst_f = mop_buffer.getDst();

		switch(mopc)
		{
			// An add operation
			case MCC_ADD:
				nextops.push_back(Microop(CC_OR, src1_f, src2_f, TMP_1)); // Propagate
				nextops.push_back(Microop(CC_XOR, src1_f, src2_f, TMP_2)); // Generate
				nextops.push_back(Microop(CC_NOT, TMP_2, 0, TMP_3); // get ~Generate
			
				// Find Cin, store in TMP_9
				nextops.push_back(Microop(CC_AND, src1_f, src2_f, TMP_9)); 
	
				// Perform final step of add, remembering where Generate is
				nextops.push_back(Microop(CC_XOR, TMP_2, TMP_9, dst_f)); 

			break;

			// A sub operation is an add,
			// but where the second operand is negated to begin with
			case MCC_SUB:

			break;

			// A mul would just be an iterated add
			case MCC_MUL:

			break;

			case MCC_SHA:

			break;

			case MCC_SHA2:

			break;

			case MCC_AES_BC:

			break;

		}
*/
	}
}
