#ifndef __PIMEXEC_H__
#define __PIMEXEC_H__
#include <cstdio>
#include <cstdint>
#include "pimevent.h"

/* PIM Execution Events
 */

namespace pim
{
	/* PimExecution
	 * All lines have to travel memory hierarchy latency. Say 6 cycles base.
	 */
	class PimExecution : public PimEvent
	{
		public:
			virtual void execute() = 0;

			PimExecution() { this->set_cycle_time(6); }

	};

	/* PimMMIORegSt
	 * Store a memory mapped 64-bit register.
	 */
	class PimMMIORegSt : public PimExecution
	{
		public:
			virtual void execute() override;
			PimMMIORegSt(uint64_t field_ref_in, uint64_t nval) :
				field_ref(field_ref_in),
				buf(nval)
			{
			}

		private:
			uint64_t& field_ref;
			uint64_t buf;
	};
}

#endif
