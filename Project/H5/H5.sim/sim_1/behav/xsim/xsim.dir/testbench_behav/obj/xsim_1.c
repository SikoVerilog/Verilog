/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_7719(char*, char *);
extern void execute_7720(char*, char *);
extern void execute_7721(char*, char *);
extern void execute_7730(char*, char *);
extern void execute_7731(char*, char *);
extern void execute_7732(char*, char *);
extern void execute_7733(char*, char *);
extern void execute_3(char*, char *);
extern void execute_7718(char*, char *);
extern void execute_7726(char*, char *);
extern void execute_7727(char*, char *);
extern void execute_7728(char*, char *);
extern void execute_7729(char*, char *);
extern void execute_1827(char*, char *);
extern void execute_1833(char*, char *);
extern void execute_1834(char*, char *);
extern void execute_1840(char*, char *);
extern void execute_1841(char*, char *);
extern void execute_1852(char*, char *);
extern void execute_1863(char*, char *);
extern void execute_1874(char*, char *);
extern void execute_1885(char*, char *);
extern void execute_1896(char*, char *);
extern void execute_1907(char*, char *);
extern void execute_1918(char*, char *);
extern void execute_1919(char*, char *);
extern void execute_1925(char*, char *);
extern void execute_1926(char*, char *);
extern void execute_1937(char*, char *);
extern void execute_1938(char*, char *);
extern void execute_1944(char*, char *);
extern void execute_1945(char*, char *);
extern void execute_544(char*, char *);
extern void execute_550(char*, char *);
extern void execute_551(char*, char *);
extern void execute_562(char*, char *);
extern void execute_573(char*, char *);
extern void execute_584(char*, char *);
extern void execute_595(char*, char *);
extern void execute_596(char*, char *);
extern void execute_602(char*, char *);
extern void execute_603(char*, char *);
extern void execute_68(char*, char *);
extern void execute_119(char*, char *);
extern void execute_145(char*, char *);
extern void execute_153(char*, char *);
extern void execute_22(char*, char *);
extern void execute_24(char*, char *);
extern void execute_26(char*, char *);
extern void execute_65(char*, char *);
extern void execute_66(char*, char *);
extern void execute_107(char*, char *);
extern void execute_104(char*, char *);
extern void execute_105(char*, char *);
extern void execute_142(char*, char *);
extern void execute_143(char*, char *);
extern void execute_147(char*, char *);
extern void execute_149(char*, char *);
extern void execute_151(char*, char *);
extern void execute_37(char*, char *);
extern void execute_58(char*, char *);
extern void execute_59(char*, char *);
extern void execute_60(char*, char *);
extern void execute_61(char*, char *);
extern void execute_62(char*, char *);
extern void execute_63(char*, char *);
extern void execute_64(char*, char *);
extern void execute_75(char*, char *);
extern void execute_118(char*, char *);
extern void execute_549(char*, char *);
extern void execute_589(char*, char *);
extern void execute_594(char*, char *);
extern void execute_601(char*, char *);
extern void execute_1249(char*, char *);
extern void execute_1273(char*, char *);
extern void execute_1322(char*, char *);
extern void execute_1346(char*, char *);
extern void execute_1388(char*, char *);
extern void execute_1389(char*, char *);
extern void execute_1390(char*, char *);
extern void execute_1391(char*, char *);
extern void execute_1187(char*, char *);
extern void execute_1189(char*, char *);
extern void execute_1191(char*, char *);
extern void execute_1193(char*, char *);
extern void execute_1195(char*, char *);
extern void execute_1197(char*, char *);
extern void execute_1199(char*, char *);
extern void execute_1259(char*, char *);
extern void execute_1260(char*, char *);
extern void execute_1270(char*, char *);
extern void execute_1271(char*, char *);
extern void execute_1332(char*, char *);
extern void execute_1333(char*, char *);
extern void execute_1343(char*, char *);
extern void execute_1344(char*, char *);
extern void execute_1351(char*, char *);
extern void execute_1248(char*, char *);
extern void execute_1387(char*, char *);
extern void execute_1396(char*, char *);
extern void execute_1401(char*, char *);
extern void execute_1416(char*, char *);
extern void execute_1421(char*, char *);
extern void execute_1426(char*, char *);
extern void execute_1496(char*, char *);
extern void execute_1501(char*, char *);
extern void execute_1767(char*, char *);
extern void execute_1773(char*, char *);
extern void execute_1774(char*, char *);
extern void execute_1785(char*, char *);
extern void execute_1796(char*, char *);
extern void execute_1807(char*, char *);
extern void execute_1818(char*, char *);
extern void execute_1819(char*, char *);
extern void execute_1825(char*, char *);
extern void execute_1826(char*, char *);
extern void execute_1510(char*, char *);
extern void execute_1512(char*, char *);
extern void execute_1514(char*, char *);
extern void execute_1520(char*, char *);
extern void execute_1525(char*, char *);
extern void execute_1931(char*, char *);
extern void execute_7723(char*, char *);
extern void execute_7724(char*, char *);
extern void execute_7725(char*, char *);
extern void execute_7734(char*, char *);
extern void execute_7735(char*, char *);
extern void execute_7736(char*, char *);
extern void execute_7737(char*, char *);
extern void execute_7738(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_7(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_11(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_12(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_13(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_14(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_16(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_15(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[139] = {(funcp)execute_7719, (funcp)execute_7720, (funcp)execute_7721, (funcp)execute_7730, (funcp)execute_7731, (funcp)execute_7732, (funcp)execute_7733, (funcp)execute_3, (funcp)execute_7718, (funcp)execute_7726, (funcp)execute_7727, (funcp)execute_7728, (funcp)execute_7729, (funcp)execute_1827, (funcp)execute_1833, (funcp)execute_1834, (funcp)execute_1840, (funcp)execute_1841, (funcp)execute_1852, (funcp)execute_1863, (funcp)execute_1874, (funcp)execute_1885, (funcp)execute_1896, (funcp)execute_1907, (funcp)execute_1918, (funcp)execute_1919, (funcp)execute_1925, (funcp)execute_1926, (funcp)execute_1937, (funcp)execute_1938, (funcp)execute_1944, (funcp)execute_1945, (funcp)execute_544, (funcp)execute_550, (funcp)execute_551, (funcp)execute_562, (funcp)execute_573, (funcp)execute_584, (funcp)execute_595, (funcp)execute_596, (funcp)execute_602, (funcp)execute_603, (funcp)execute_68, (funcp)execute_119, (funcp)execute_145, (funcp)execute_153, (funcp)execute_22, (funcp)execute_24, (funcp)execute_26, (funcp)execute_65, (funcp)execute_66, (funcp)execute_107, (funcp)execute_104, (funcp)execute_105, (funcp)execute_142, (funcp)execute_143, (funcp)execute_147, (funcp)execute_149, (funcp)execute_151, (funcp)execute_37, (funcp)execute_58, (funcp)execute_59, (funcp)execute_60, (funcp)execute_61, (funcp)execute_62, (funcp)execute_63, (funcp)execute_64, (funcp)execute_75, (funcp)execute_118, (funcp)execute_549, (funcp)execute_589, (funcp)execute_594, (funcp)execute_601, (funcp)execute_1249, (funcp)execute_1273, (funcp)execute_1322, (funcp)execute_1346, (funcp)execute_1388, (funcp)execute_1389, (funcp)execute_1390, (funcp)execute_1391, (funcp)execute_1187, (funcp)execute_1189, (funcp)execute_1191, (funcp)execute_1193, (funcp)execute_1195, (funcp)execute_1197, (funcp)execute_1199, (funcp)execute_1259, (funcp)execute_1260, (funcp)execute_1270, (funcp)execute_1271, (funcp)execute_1332, (funcp)execute_1333, (funcp)execute_1343, (funcp)execute_1344, (funcp)execute_1351, (funcp)execute_1248, (funcp)execute_1387, (funcp)execute_1396, (funcp)execute_1401, (funcp)execute_1416, (funcp)execute_1421, (funcp)execute_1426, (funcp)execute_1496, (funcp)execute_1501, (funcp)execute_1767, (funcp)execute_1773, (funcp)execute_1774, (funcp)execute_1785, (funcp)execute_1796, (funcp)execute_1807, (funcp)execute_1818, (funcp)execute_1819, (funcp)execute_1825, (funcp)execute_1826, (funcp)execute_1510, (funcp)execute_1512, (funcp)execute_1514, (funcp)execute_1520, (funcp)execute_1525, (funcp)execute_1931, (funcp)execute_7723, (funcp)execute_7724, (funcp)execute_7725, (funcp)execute_7734, (funcp)execute_7735, (funcp)execute_7736, (funcp)execute_7737, (funcp)execute_7738, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_7, (funcp)transaction_11, (funcp)transaction_12, (funcp)transaction_13, (funcp)transaction_14, (funcp)transaction_16, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_15};
const int NumRelocateId= 139;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/testbench_behav/xsim.reloc",  (void **)funcTab, 139);
	iki_vhdl_file_variable_register(dp + 676992);
	iki_vhdl_file_variable_register(dp + 677048);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/testbench_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/testbench_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 691952, dp + 690504, 96, 127, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 1044048, dp + 690504, 64, 95, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 1396144, dp + 690504, 32, 63, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 1748240, dp + 690504, 0, 31, 0, 31, 32, 1);
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/testbench_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/testbench_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/testbench_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
