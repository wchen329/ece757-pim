#ifndef __PIM_MEMORY_MAP_HH__
#define __PIM_MEMORY_MAP_HH__
/* PIM Memory Map
 * This describes some defines in the PIM system for
 * special MMIO operations
 */

// Write or load to this address to perform execute of the chosen microop
#define ADDR_PIM_EXECUTE 0xFFFE000000000000 

// Address to write the macroop to
#define ADDR_PIM_MACROOP 0xFFFE0000000000A0

// (ASIC based) This is the address of source 1
#define ADDR_PIM_SRC1 0xFFFE000000000001

// (ASIC based) This is the address of source 2
#define ADDR_PIM_SRC2 0xFFFE000000000002

// (ASIC based) This is the address of dst
#define ADDR_PIM_DST 0xFFFE000000000003

// (ASIC based) This is the address of a PIM write
#define ADDR_PIM_SHA_COMMIT 0xFFFE000000000004

#endif
