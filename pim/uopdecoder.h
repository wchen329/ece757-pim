#ifndef __UOPDECODER_H__
#define __UOPDECODER_H__
#include <queue>
#include <list>
#include "mop.h"
#include "uop.h"

namespace pim
{
	/* Microop_Decoder
	 * This microop decoder takes in a macroop
	 * and then outputs microops.
	 * The oldest microop appears at the end of the microop buffer
	 */
	class Microop_Decoder
	{
		public:

			/* Microop_Decoder
			 * Advance a cycle
			 */
			void cycle();

			/* getNextMicroop
			 * Get the next micro-op in the buffer, or noop if there is none
			 */
			Microop getNextMicroop();

			/* setMacroop
			 * Set the macroop. Assume that it will be decomposed the next
			 * cycle
			 */
			void setMacroop(Macroop mac_in) { this->mop_buffer = mac_in; }

			/* Decompose
			 * Get a list of micro-ops from the macroop in the mop_buffer. This will also clear the macroop buffer.
			 */
			std::list<Microop> decompose();

		private:
			Macroop mop_buffer;
			std::queue<Microop> uop_buffer; // Assume this is infinite length
	};
}

#endif
