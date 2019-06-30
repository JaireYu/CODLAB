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
extern void execute_277(char*, char *);
extern void execute_278(char*, char *);
extern void execute_663(char*, char *);
extern void execute_664(char*, char *);
extern void execute_665(char*, char *);
extern void execute_666(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_4(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void execute_283(char*, char *);
extern void execute_286(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_288(char*, char *);
extern void execute_289(char*, char *);
extern void execute_290(char*, char *);
extern void execute_293(char*, char *);
extern void execute_294(char*, char *);
extern void execute_295(char*, char *);
extern void execute_296(char*, char *);
extern void execute_292(char*, char *);
extern void execute_10(char*, char *);
extern void execute_298(char*, char *);
extern void execute_299(char*, char *);
extern void execute_300(char*, char *);
extern void execute_301(char*, char *);
extern void execute_302(char*, char *);
extern void execute_303(char*, char *);
extern void execute_304(char*, char *);
extern void execute_305(char*, char *);
extern void execute_297(char*, char *);
extern void execute_29(char*, char *);
extern void execute_353(char*, char *);
extern void execute_354(char*, char *);
extern void execute_355(char*, char *);
extern void execute_356(char*, char *);
extern void execute_352(char*, char *);
extern void execute_31(char*, char *);
extern void execute_32(char*, char *);
extern void execute_33(char*, char *);
extern void execute_357(char*, char *);
extern void execute_358(char*, char *);
extern void execute_359(char*, char *);
extern void execute_360(char*, char *);
extern void execute_369(char*, char *);
extern void execute_370(char*, char *);
extern void execute_371(char*, char *);
extern void execute_44(char*, char *);
extern void execute_372(char*, char *);
extern void execute_46(char*, char *);
extern void execute_373(char*, char *);
extern void execute_374(char*, char *);
extern void execute_375(char*, char *);
extern void execute_54(char*, char *);
extern void execute_55(char*, char *);
extern void execute_88(char*, char *);
extern void execute_89(char*, char *);
extern void execute_93(char*, char *);
extern void execute_94(char*, char *);
extern void execute_185(char*, char *);
extern void execute_186(char*, char *);
extern void execute_187(char*, char *);
extern void execute_515(char*, char *);
extern void execute_516(char*, char *);
extern void execute_517(char*, char *);
extern void execute_518(char*, char *);
extern void execute_280(char*, char *);
extern void execute_281(char*, char *);
extern void execute_282(char*, char *);
extern void execute_667(char*, char *);
extern void execute_668(char*, char *);
extern void execute_669(char*, char *);
extern void execute_670(char*, char *);
extern void execute_671(char*, char *);
extern void transaction_12(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_13(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_14(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_15(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_20(char*, char*, unsigned, unsigned, unsigned);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_56(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_65(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_66(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_68(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_69(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_71(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_72(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_74(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_75(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_80(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_82(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_84(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_167(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_172(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_177(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_358(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_388(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_393(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_423(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_428(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_458(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_463(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_493(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_498(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_503(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_508(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_513(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[114] = {(funcp)execute_277, (funcp)execute_278, (funcp)execute_663, (funcp)execute_664, (funcp)execute_665, (funcp)execute_666, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_4, (funcp)execute_6, (funcp)execute_7, (funcp)execute_283, (funcp)execute_286, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_288, (funcp)execute_289, (funcp)execute_290, (funcp)execute_293, (funcp)execute_294, (funcp)execute_295, (funcp)execute_296, (funcp)execute_292, (funcp)execute_10, (funcp)execute_298, (funcp)execute_299, (funcp)execute_300, (funcp)execute_301, (funcp)execute_302, (funcp)execute_303, (funcp)execute_304, (funcp)execute_305, (funcp)execute_297, (funcp)execute_29, (funcp)execute_353, (funcp)execute_354, (funcp)execute_355, (funcp)execute_356, (funcp)execute_352, (funcp)execute_31, (funcp)execute_32, (funcp)execute_33, (funcp)execute_357, (funcp)execute_358, (funcp)execute_359, (funcp)execute_360, (funcp)execute_369, (funcp)execute_370, (funcp)execute_371, (funcp)execute_44, (funcp)execute_372, (funcp)execute_46, (funcp)execute_373, (funcp)execute_374, (funcp)execute_375, (funcp)execute_54, (funcp)execute_55, (funcp)execute_88, (funcp)execute_89, (funcp)execute_93, (funcp)execute_94, (funcp)execute_185, (funcp)execute_186, (funcp)execute_187, (funcp)execute_515, (funcp)execute_516, (funcp)execute_517, (funcp)execute_518, (funcp)execute_280, (funcp)execute_281, (funcp)execute_282, (funcp)execute_667, (funcp)execute_668, (funcp)execute_669, (funcp)execute_670, (funcp)execute_671, (funcp)transaction_12, (funcp)transaction_13, (funcp)transaction_14, (funcp)transaction_15, (funcp)transaction_20, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_41, (funcp)transaction_43, (funcp)transaction_46, (funcp)transaction_48, (funcp)transaction_51, (funcp)transaction_53, (funcp)transaction_56, (funcp)transaction_58, (funcp)transaction_65, (funcp)transaction_66, (funcp)transaction_68, (funcp)transaction_69, (funcp)transaction_71, (funcp)transaction_72, (funcp)transaction_74, (funcp)transaction_75, (funcp)transaction_80, (funcp)transaction_82, (funcp)transaction_84, (funcp)transaction_167, (funcp)transaction_172, (funcp)transaction_177, (funcp)transaction_358, (funcp)transaction_388, (funcp)transaction_393, (funcp)transaction_423, (funcp)transaction_428, (funcp)transaction_458, (funcp)transaction_463, (funcp)transaction_493, (funcp)transaction_498, (funcp)transaction_503, (funcp)transaction_508, (funcp)transaction_513};
const int NumRelocateId= 114;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/tb_func_synth/xsim.reloc",  (void **)funcTab, 114);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/tb_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/tb_func_synth/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
