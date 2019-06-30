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
extern void execute_665(char*, char *);
extern void execute_666(char*, char *);
extern void execute_1693(char*, char *);
extern void execute_1694(char*, char *);
extern void execute_1695(char*, char *);
extern void execute_1696(char*, char *);
extern void execute_1697(char*, char *);
extern void execute_1698(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_7(char*, char *);
extern void execute_8(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_26(char*, char *);
extern void execute_27(char*, char *);
extern void execute_34(char*, char *);
extern void execute_678(char*, char *);
extern void execute_679(char*, char *);
extern void execute_680(char*, char *);
extern void execute_681(char*, char *);
extern void execute_682(char*, char *);
extern void execute_683(char*, char *);
extern void execute_684(char*, char *);
extern void execute_685(char*, char *);
extern void execute_677(char*, char *);
extern void execute_145(char*, char *);
extern void execute_147(char*, char *);
extern void execute_148(char*, char *);
extern void execute_868(char*, char *);
extern void execute_871(char*, char *);
extern void execute_873(char*, char *);
extern void execute_874(char*, char *);
extern void execute_875(char*, char *);
extern void execute_878(char*, char *);
extern void execute_879(char*, char *);
extern void execute_880(char*, char *);
extern void execute_881(char*, char *);
extern void execute_877(char*, char *);
extern void execute_182(char*, char *);
extern void execute_929(char*, char *);
extern void execute_930(char*, char *);
extern void execute_931(char*, char *);
extern void execute_932(char*, char *);
extern void execute_928(char*, char *);
extern void execute_1009(char*, char *);
extern void execute_1010(char*, char *);
extern void execute_1011(char*, char *);
extern void execute_221(char*, char *);
extern void execute_1012(char*, char *);
extern void execute_223(char*, char *);
extern void execute_1013(char*, char *);
extern void execute_1014(char*, char *);
extern void execute_1015(char*, char *);
extern void execute_228(char*, char *);
extern void execute_229(char*, char *);
extern void execute_230(char*, char *);
extern void execute_1021(char*, char *);
extern void execute_1022(char*, char *);
extern void execute_1023(char*, char *);
extern void execute_1024(char*, char *);
extern void execute_257(char*, char *);
extern void execute_258(char*, char *);
extern void execute_259(char*, char *);
extern void execute_1066(char*, char *);
extern void execute_1067(char*, char *);
extern void execute_1068(char*, char *);
extern void execute_1069(char*, char *);
extern void execute_611(char*, char *);
extern void execute_1595(char*, char *);
extern void execute_1596(char*, char *);
extern void execute_1594(char*, char *);
extern void execute_668(char*, char *);
extern void execute_669(char*, char *);
extern void execute_670(char*, char *);
extern void execute_1699(char*, char *);
extern void execute_1700(char*, char *);
extern void execute_1701(char*, char *);
extern void execute_1702(char*, char *);
extern void execute_1703(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_56(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_61(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_63(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_71(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_73(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_76(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_81(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_83(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_86(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_88(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_92(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_94(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_97(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_99(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_102(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_104(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_107(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_109(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_113(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_115(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_118(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_120(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_123(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_125(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_128(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_130(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_138(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_139(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_141(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_142(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_144(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_145(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_147(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_148(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_150(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_151(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_153(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_154(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_156(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_157(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_159(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_160(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_162(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_163(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_165(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_166(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_168(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_169(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_171(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_172(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_174(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_175(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_177(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_178(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_180(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_181(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_183(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_184(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_188(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_189(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_190(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_191(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_192(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_193(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_194(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_195(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_196(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_197(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_198(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_199(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_201(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_203(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_205(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_207(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_209(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_211(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_213(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_692(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_701(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_731(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_736(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_766(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_771(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_801(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_806(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_836(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_877(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_907(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_912(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_942(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_947(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_977(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_982(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1012(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1053(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1083(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1088(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1118(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1123(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1153(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1158(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1188(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1197(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1227(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1232(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1262(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1267(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1297(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1302(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1332(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1359(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1364(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1369(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[198] = {(funcp)execute_665, (funcp)execute_666, (funcp)execute_1693, (funcp)execute_1694, (funcp)execute_1695, (funcp)execute_1696, (funcp)execute_1697, (funcp)execute_1698, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_7, (funcp)execute_8, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_26, (funcp)execute_27, (funcp)execute_34, (funcp)execute_678, (funcp)execute_679, (funcp)execute_680, (funcp)execute_681, (funcp)execute_682, (funcp)execute_683, (funcp)execute_684, (funcp)execute_685, (funcp)execute_677, (funcp)execute_145, (funcp)execute_147, (funcp)execute_148, (funcp)execute_868, (funcp)execute_871, (funcp)execute_873, (funcp)execute_874, (funcp)execute_875, (funcp)execute_878, (funcp)execute_879, (funcp)execute_880, (funcp)execute_881, (funcp)execute_877, (funcp)execute_182, (funcp)execute_929, (funcp)execute_930, (funcp)execute_931, (funcp)execute_932, (funcp)execute_928, (funcp)execute_1009, (funcp)execute_1010, (funcp)execute_1011, (funcp)execute_221, (funcp)execute_1012, (funcp)execute_223, (funcp)execute_1013, (funcp)execute_1014, (funcp)execute_1015, (funcp)execute_228, (funcp)execute_229, (funcp)execute_230, (funcp)execute_1021, (funcp)execute_1022, (funcp)execute_1023, (funcp)execute_1024, (funcp)execute_257, (funcp)execute_258, (funcp)execute_259, (funcp)execute_1066, (funcp)execute_1067, (funcp)execute_1068, (funcp)execute_1069, (funcp)execute_611, (funcp)execute_1595, (funcp)execute_1596, (funcp)execute_1594, (funcp)execute_668, (funcp)execute_669, (funcp)execute_670, (funcp)execute_1699, (funcp)execute_1700, (funcp)execute_1701, (funcp)execute_1702, (funcp)execute_1703, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_46, (funcp)transaction_48, (funcp)transaction_51, (funcp)transaction_53, (funcp)transaction_56, (funcp)transaction_58, (funcp)transaction_61, (funcp)transaction_63, (funcp)transaction_71, (funcp)transaction_73, (funcp)transaction_76, (funcp)transaction_78, (funcp)transaction_81, (funcp)transaction_83, (funcp)transaction_86, (funcp)transaction_88, (funcp)transaction_92, (funcp)transaction_94, (funcp)transaction_97, (funcp)transaction_99, (funcp)transaction_102, (funcp)transaction_104, (funcp)transaction_107, (funcp)transaction_109, (funcp)transaction_113, (funcp)transaction_115, (funcp)transaction_118, (funcp)transaction_120, (funcp)transaction_123, (funcp)transaction_125, (funcp)transaction_128, (funcp)transaction_130, (funcp)transaction_138, (funcp)transaction_139, (funcp)transaction_141, (funcp)transaction_142, (funcp)transaction_144, (funcp)transaction_145, (funcp)transaction_147, (funcp)transaction_148, (funcp)transaction_150, (funcp)transaction_151, (funcp)transaction_153, (funcp)transaction_154, (funcp)transaction_156, (funcp)transaction_157, (funcp)transaction_159, (funcp)transaction_160, (funcp)transaction_162, (funcp)transaction_163, (funcp)transaction_165, (funcp)transaction_166, (funcp)transaction_168, (funcp)transaction_169, (funcp)transaction_171, (funcp)transaction_172, (funcp)transaction_174, (funcp)transaction_175, (funcp)transaction_177, (funcp)transaction_178, (funcp)transaction_180, (funcp)transaction_181, (funcp)transaction_183, (funcp)transaction_184, (funcp)transaction_188, (funcp)transaction_189, (funcp)transaction_190, (funcp)transaction_191, (funcp)transaction_192, (funcp)transaction_193, (funcp)transaction_194, (funcp)transaction_195, (funcp)transaction_196, (funcp)transaction_197, (funcp)transaction_198, (funcp)transaction_199, (funcp)transaction_201, (funcp)transaction_203, (funcp)transaction_205, (funcp)transaction_207, (funcp)transaction_209, (funcp)transaction_211, (funcp)transaction_213, (funcp)transaction_692, (funcp)transaction_701, (funcp)transaction_731, (funcp)transaction_736, (funcp)transaction_766, (funcp)transaction_771, (funcp)transaction_801, (funcp)transaction_806, (funcp)transaction_836, (funcp)transaction_877, (funcp)transaction_907, (funcp)transaction_912, (funcp)transaction_942, (funcp)transaction_947, (funcp)transaction_977, (funcp)transaction_982, (funcp)transaction_1012, (funcp)transaction_1053, (funcp)transaction_1083, (funcp)transaction_1088, (funcp)transaction_1118, (funcp)transaction_1123, (funcp)transaction_1153, (funcp)transaction_1158, (funcp)transaction_1188, (funcp)transaction_1197, (funcp)transaction_1227, (funcp)transaction_1232, (funcp)transaction_1262, (funcp)transaction_1267, (funcp)transaction_1297, (funcp)transaction_1302, (funcp)transaction_1332, (funcp)transaction_1359, (funcp)transaction_1364, (funcp)transaction_1369};
const int NumRelocateId= 198;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/lab2_1_tb_func_synth/xsim.reloc",  (void **)funcTab, 198);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/lab2_1_tb_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/lab2_1_tb_func_synth/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/lab2_1_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/lab2_1_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/lab2_1_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
