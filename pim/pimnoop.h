#ifndef __PIMNOOP_H__
#define __PIMNOOP_H__
#include <cstdio>
#include "pimevent.h"

namespace pim
{
	class PimNoop : public PimEvent
	{
		public:
			void execute() { fprintf(stdout, "[PIM] noop completed.\n"); }

		PimNoop()
		{
			this->set_cycle_time(1);
		}
	};
}

#endif
