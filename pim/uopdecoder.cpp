#include "uopdecoder.h"

namespace pim
{

	void Microop_Decoder::cycle()
	{

	}


	Microop Microop_Decoder::getNextMicroop()
	{
		if(uop_buffer.empty())
		{
			return Microop(CC_NOP, 0, 0, 0);
		}		
		else
		{
			Microop next = uop_buffer.front();
			uop_buffer.pop();
			return next;
		}
	}

}
