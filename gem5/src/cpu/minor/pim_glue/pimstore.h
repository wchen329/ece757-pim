#ifndef __PIMSTORE_H__
#define __PIMSTORE_H__
#include "../lsq.hh"

namespace pim
{
	// PIM Store
	// Just a special store in minor that will "complete" on time after its cycle time is met.
	class PimStore : public PimEvent
	{

		public:
			void execute()
			{
				fprintf(stdout, "[PIM] pim event executing...\n");
				target_lsq.popResponse(target_rq);
			}

			PimStore(Minor::LSQ& lsq_in, Minor::LSQ::LSQRequestPtr rq_in) :
				target_lsq(lsq_in),
				target_rq(rq_in)
			{
				this->set_cycle_time(10);
			}

		private:
			Minor::LSQ& target_lsq;
			Minor::LSQ::LSQRequestPtr target_rq;
	};
}


#endif
