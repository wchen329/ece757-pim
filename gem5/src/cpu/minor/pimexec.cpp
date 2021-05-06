#include "pimexec.h"

namespace pim
{
	void PimMMIORegSt::execute()
	{
		// Pim MMIO Reg St
		field_ref = buf;
		fprintf(stdout, "[PIM] performed update on register: value = %lx\n", field_ref);
	}
}

