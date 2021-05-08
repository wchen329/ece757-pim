#ifndef __PIMCACHEOP_H__
#define __PIMCACHEOP_H__

#include <algorithm>
#include <cassert>
#include <cstdint>
#include <functional>
#include <vector>

#include "mem/cache/base.hh"
#include "mop.h"
#include "pimexec.h"
#include "pimevent.h"
#include "pimtlblookup.h"
#include "pim_glue/pimsm.h"
#include "pim_func_unit/adder.h"

namespace pim
{
	class PimOpEx : public PimExecution
	{
		public:
			virtual void execute();

			PimOpEx(PimSM state_in, BaseCache* cin, MetaTLB& mtlb_in) :
				state(state_in),
				bc(cin),
				mtlb(mtlb_in)
			{
				// Set our cycle latency
				uint64_t added_time = 0;
				MACOP opcode = static_cast<MACOP>(state.op());
				
				switch(opcode)
				{
					case MCC_ADD:
						added_time = 1;
						break;
					case MCC_SUB:
						added_time = 1;
						break;
					case MCC_MUL:
						added_time = 5;
						break;
					case MCC_SHA:
						added_time = 150;
						break;
					case MCC_AES_BC:
						added_time = 40;
						break;
					default:
						added_time = 1;
				}

				this->set_cycle_time(this->get_cycle_time() + added_time);

			}

		private:

			// Execution state (copy to preserve)
			PimSM state;

			// Cache to execute on.
			BaseCache* bc;

			// Reference to MetaTLB
			MetaTLB& mtlb;
	};
}

#endif
