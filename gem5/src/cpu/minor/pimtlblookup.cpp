#include "pimtlblookup.h"

namespace pim
{
	uint64_t MetaTLB::lookup_paddr(uint64_t vaddr)
	{
		return v_to_p[vaddr];
	}

	void MetaTLB::register_mapping(uint64_t vaddr, uint64_t paddr)
	{
		v_to_p[vaddr] = paddr;
	}
}
