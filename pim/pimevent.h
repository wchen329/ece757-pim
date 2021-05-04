#ifndef __PIMEVENT_H__
#define __PIMEVENT_H__
#include <cstdint>
#include <memory>
#include <list>

namespace pim
{
	class PimEvent
	{
		public:
			/* PimEvent
			 * Just an execute (basically a functor of some sorts)
			 */
			virtual void execute() = 0;

			/* set_cycle_time
			 * Set the cycle time
			 */
			void set_cycle_time(uint64_t et) { cycle_time = et; }

			/* get_cycle_time
			 * Get the cycle time
			 */
			uint64_t get_cycle_time() { return cycle_time; }

			/* cycle()
			 * Lower cycle_time by one
			 */
			void cycle() { --cycle_time; }

			/* Default constructor
			 */
			PimEvent() : cycle_time(0)
			{}
			
		private:
			// cycles until guarenteed the operation is valid
			uint64_t cycle_time;
	};

	typedef std::shared_ptr<PimEvent> m_PimEvent;

	/* PimEventQueue
	 * A queue of PIM events. Every cycle, items on the event queue lower their
	 * countdown by one
	 *
	 * All items on the list with cycles remaining zero, are removed, and then executed
	 * (corresponding to the execute function)
	 *
	 * We use a list, since we will have to update every entry anyways Omega(n) | n
	 * is the list length
	 */
	class PimEventQueue
	{
		public:
			// Perform enumeration on queue entries
			void cycle();

			// Insert an event
			void insertEvent(m_PimEvent ein) { eq.push_back(ein); }

			// Number of events still in queue
			size_t pending_count() { return eq.size(); }
		private:
			std::list<m_PimEvent> eq;
	};
}


#endif
