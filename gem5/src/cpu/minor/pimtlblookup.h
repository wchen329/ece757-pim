#ifndef __PIMTLBLOOKUP_H__
#define __PIMTLBLOOKUP_H__
#include <map>

namespace pim
{
	// Got a packet? It can go through MetaTLB
	class MetaTLB
	{
		public:
			// return physical address
			uint64_t lookup_paddr(uint64_t vaddr);

			// return virtual address
			void register_mapping(uint64_t vaddr, uint64_t paddr);

		private:
			std::map<uint64_t, uint64_t> v_to_p;	
	};
}

#endif
