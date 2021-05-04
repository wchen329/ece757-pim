#include "pimevent.h"

namespace pim
{
	void PimEventQueue::cycle()
	{
		// List of completed events
		std::list<std::list<m_PimEvent>::iterator> dead_list;

		// Increment down events. Decrement. If we reached a zero
		// count, execute and signal for cleanup.
		for(std::list<m_PimEvent>::iterator itr = eq.begin(); itr != eq.end(); ++itr)
		{
			if((*itr)->get_cycle_time() == 0)
			{
				// If we have waited long enough, perform operation
				(*itr)->execute();
				dead_list.push_back(itr);
			}

			else
			{
				// Otherwise, advance a cycle
				(*itr)->cycle();
			}
		}

		// End, do cleanup of all entries needed.
		for(std::list<std::list<m_PimEvent>::iterator>::iterator
			itr_del = dead_list.begin();
			itr_del != dead_list.end();
			++itr_del
		)
		{
			eq.erase(*itr_del);
		}
	}

	
}
