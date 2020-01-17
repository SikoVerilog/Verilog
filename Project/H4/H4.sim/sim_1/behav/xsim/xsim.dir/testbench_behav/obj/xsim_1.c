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
extern void execute_7995(char*, char *);
extern void execute_7996(char*, char *);
extern void execute_7997(char*, char *);
extern void execute_8006(char*, char *);
extern void execute_8007(char*, char *);
extern void execute_8008(char*, char *);
extern void execute_8009(char*, char *);
extern void execute_3(char*, char *);
extern void execute_7994(char*, char *);
extern void execute_8002(char*, char *);
extern void execute_8003(char*, char *);
extern void execute_8004(char*, char *);
extern void execute_8005(char*, char *);
extern void execute_1896(char*, char *);
extern void execute_1902(char*, char *);
extern void execute_1903(char*, char *);
extern void execute_1909(char*, char *);
extern void execute_1910(char*, char *);
extern void execute_1921(char*, char *);
extern void execute_1932(char*, char *);
extern void execute_1943(char*, char *);
extern void execute_1954(char*, char *);
extern void execute_1965(char*, char *);
extern void execute_1976(char*, char *);
extern void execute_1987(char*, char *);
extern void execute_1988(char*, char *);
extern void execute_1994(char*, char *);
extern void execute_1995(char*, char *);
extern void execute_2006(char*, char *);
extern void execute_2007(char*, char *);
extern void execute_2013(char*, char *);
extern void execute_2014(char*, char *);
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
extern void execute_1836(char*, char *);
extern void execute_1842(char*, char *);
extern void execute_1843(char*, char *);
extern void execute_1854(char*, char *);
extern void execute_1865(char*, char *);
extern void execute_1876(char*, char *);
extern void execute_1887(char*, char *);
extern void execute_1888(char*, char *);
extern void execute_1894(char*, char *);
extern void execute_1895(char*, char *);
extern void execute_1540(char*, char *);
extern void execute_1541(char*, char *);
extern void execute_1554(char*, char *);
extern void execute_1579(char*, char *);
extern void execute_1580(char*, char *);
extern void execute_1593(char*, char *);
extern void execute_1612(char*, char *);
extern void execute_1613(char*, char *);
extern void execute_1614(char*, char *);
extern void execute_1510(char*, char *);
extern void execute_1512(char*, char *);
extern void execute_1514(char*, char *);
extern void execute_1551(char*, char *);
extern void execute_1552(char*, char *);
extern void execute_1590(char*, char *);
extern void execute_1591(char*, char *);
extern void execute_1747(char*, char *);
extern void execute_1749(char*, char *);
extern void execute_1751(char*, char *);
extern void execute_1757(char*, char *);
extern void execute_1762(char*, char *);
extern void execute_1795(char*, char *);
extern void execute_1797(char*, char *);
extern void execute_1799(char*, char *);
extern void execute_1810(char*, char *);
extern void execute_2000(char*, char *);
extern void execute_7999(char*, char *);
extern void execute_8000(char*, char *);
extern void execute_8001(char*, char *);
extern void execute_8010(char*, char *);
extern void execute_8011(char*, char *);
extern void execute_8012(char*, char *);
extern void execute_8013(char*, char *);
extern void execute_8014(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_7(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_11(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_12(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_13(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_14(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_16(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_15(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[159] = {(funcp)execute_7995, (funcp)execute_7996, (funcp)execute_7997, (funcp)execute_8006, (funcp)execute_8007, (funcp)execute_8008, (funcp)execute_8009, (funcp)execute_3, (funcp)execute_7994, (funcp)execute_8002, (funcp)execute_8003, (funcp)execute_8004, (funcp)execute_8005, (funcp)execute_1896, (funcp)execute_1902, (funcp)execute_1903, (funcp)execute_1909, (funcp)execute_1910, (funcp)execute_1921, (funcp)execute_1932, (funcp)execute_1943, (funcp)execute_1954, (funcp)execute_1965, (funcp)execute_1976, (funcp)execute_1987, (funcp)execute_1988, (funcp)execute_1994, (funcp)execute_1995, (funcp)execute_2006, (funcp)execute_2007, (funcp)execute_2013, (funcp)execute_2014, (funcp)execute_544, (funcp)execute_550, (funcp)execute_551, (funcp)execute_562, (funcp)execute_573, (funcp)execute_584, (funcp)execute_595, (funcp)execute_596, (funcp)execute_602, (funcp)execute_603, (funcp)execute_68, (funcp)execute_119, (funcp)execute_145, (funcp)execute_153, (funcp)execute_22, (funcp)execute_24, (funcp)execute_26, (funcp)execute_65, (funcp)execute_66, (funcp)execute_107, (funcp)execute_104, (funcp)execute_105, (funcp)execute_142, (funcp)execute_143, (funcp)execute_147, (funcp)execute_149, (funcp)execute_151, (funcp)execute_37, (funcp)execute_58, (funcp)execute_59, (funcp)execute_60, (funcp)execute_61, (funcp)execute_62, (funcp)execute_63, (funcp)execute_64, (funcp)execute_75, (funcp)execute_118, (funcp)execute_549, (funcp)execute_589, (funcp)execute_594, (funcp)execute_601, (funcp)execute_1249, (funcp)execute_1273, (funcp)execute_1322, (funcp)execute_1346, (funcp)execute_1388, (funcp)execute_1389, (funcp)execute_1390, (funcp)execute_1391, (funcp)execute_1187, (funcp)execute_1189, (funcp)execute_1191, (funcp)execute_1193, (funcp)execute_1195, (funcp)execute_1197, (funcp)execute_1199, (funcp)execute_1259, (funcp)execute_1260, (funcp)execute_1270, (funcp)execute_1271, (funcp)execute_1332, (funcp)execute_1333, (funcp)execute_1343, (funcp)execute_1344, (funcp)execute_1351, (funcp)execute_1248, (funcp)execute_1387, (funcp)execute_1396, (funcp)execute_1401, (funcp)execute_1416, (funcp)execute_1421, (funcp)execute_1426, (funcp)execute_1496, (funcp)execute_1501, (funcp)execute_1836, (funcp)execute_1842, (funcp)execute_1843, (funcp)execute_1854, (funcp)execute_1865, (funcp)execute_1876, (funcp)execute_1887, (funcp)execute_1888, (funcp)execute_1894, (funcp)execute_1895, (funcp)execute_1540, (funcp)execute_1541, (funcp)execute_1554, (funcp)execute_1579, (funcp)execute_1580, (funcp)execute_1593, (funcp)execute_1612, (funcp)execute_1613, (funcp)execute_1614, (funcp)execute_1510, (funcp)execute_1512, (funcp)execute_1514, (funcp)execute_1551, (funcp)execute_1552, (funcp)execute_1590, (funcp)execute_1591, (funcp)execute_1747, (funcp)execute_1749, (funcp)execute_1751, (funcp)execute_1757, (funcp)execute_1762, (funcp)execute_1795, (funcp)execute_1797, (funcp)execute_1799, (funcp)execute_1810, (funcp)execute_2000, (funcp)execute_7999, (funcp)execute_8000, (funcp)execute_8001, (funcp)execute_8010, (funcp)execute_8011, (funcp)execute_8012, (funcp)execute_8013, (funcp)execute_8014, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_7, (funcp)transaction_11, (funcp)transaction_12, (funcp)transaction_13, (funcp)transaction_14, (funcp)transaction_16, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_15};
const int NumRelocateId= 159;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/testbench_behav/xsim.reloc",  (void **)funcTab, 159);
	iki_vhdl_file_variable_register(dp + 699680);
	iki_vhdl_file_variable_register(dp + 699736);


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

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 714640, dp + 713192, 96, 127, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 1078456, dp + 713192, 64, 95, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 1442272, dp + 713192, 32, 63, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 1806088, dp + 713192, 0, 31, 0, 31, 32, 1);
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
