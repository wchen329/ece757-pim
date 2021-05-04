#include <cstdio>

#include "pimevent.h"
#include "pimnoop.h"

int main()
{
	using namespace pim;
	printf("Testing Pim Event Queue...\n");
	PimEventQueue peq;
	m_PimEvent mpn_1(new PimNoop); peq.insertEvent(mpn_1);
	m_PimEvent mpn_2(new PimNoop); peq.insertEvent(mpn_2);
	mpn_2->set_cycle_time(10);
	m_PimEvent mpn_3(new PimNoop); peq.insertEvent(mpn_3);
	mpn_3->set_cycle_time(10);
	m_PimEvent mpn_4(new PimNoop); peq.insertEvent(mpn_4);
	mpn_4->set_cycle_time(11);

	for(int c = 0; c < 20; ++c)
	{
		fprintf(stdout, "[PIM] Cycle %d\n", c + 1);
		peq.cycle();
	}
}
