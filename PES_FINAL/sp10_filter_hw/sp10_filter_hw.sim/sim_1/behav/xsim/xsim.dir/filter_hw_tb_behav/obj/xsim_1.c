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
extern void execute_361(char*, char *);
extern void execute_362(char*, char *);
extern void execute_363(char*, char *);
extern void execute_364(char*, char *);
extern void execute_66(char*, char *);
extern void execute_67(char*, char *);
extern void execute_68(char*, char *);
extern void execute_246(char*, char *);
extern void execute_89(char*, char *);
extern void execute_80(char*, char *);
extern void execute_81(char*, char *);
extern void execute_145(char*, char *);
extern void execute_146(char*, char *);
extern void execute_92(char*, char *);
extern void execute_94(char*, char *);
extern void execute_121(char*, char *);
extern void execute_109(char*, char *);
extern void execute_110(char*, char *);
extern void execute_103(char*, char *);
extern void execute_104(char*, char *);
extern void execute_106(char*, char *);
extern void execute_107(char*, char *);
extern void execute_296(char*, char *);
extern void execute_297(char*, char *);
extern void execute_274(char*, char *);
extern void execute_275(char*, char *);
extern void execute_276(char*, char *);
extern void execute_277(char*, char *);
extern void execute_278(char*, char *);
extern void execute_279(char*, char *);
extern void execute_280(char*, char *);
extern void execute_281(char*, char *);
extern void execute_261(char*, char *);
extern void execute_262(char*, char *);
extern void execute_264(char*, char *);
extern void execute_265(char*, char *);
extern void execute_285(char*, char *);
extern void execute_286(char*, char *);
extern void execute_289(char*, char *);
extern void execute_299(char*, char *);
extern void execute_300(char*, char *);
extern void execute_301(char*, char *);
extern void execute_302(char*, char *);
extern void execute_303(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_368(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_370(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_463(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_465(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[50] = {(funcp)execute_361, (funcp)execute_362, (funcp)execute_363, (funcp)execute_364, (funcp)execute_66, (funcp)execute_67, (funcp)execute_68, (funcp)execute_246, (funcp)execute_89, (funcp)execute_80, (funcp)execute_81, (funcp)execute_145, (funcp)execute_146, (funcp)execute_92, (funcp)execute_94, (funcp)execute_121, (funcp)execute_109, (funcp)execute_110, (funcp)execute_103, (funcp)execute_104, (funcp)execute_106, (funcp)execute_107, (funcp)execute_296, (funcp)execute_297, (funcp)execute_274, (funcp)execute_275, (funcp)execute_276, (funcp)execute_277, (funcp)execute_278, (funcp)execute_279, (funcp)execute_280, (funcp)execute_281, (funcp)execute_261, (funcp)execute_262, (funcp)execute_264, (funcp)execute_265, (funcp)execute_285, (funcp)execute_286, (funcp)execute_289, (funcp)execute_299, (funcp)execute_300, (funcp)execute_301, (funcp)execute_302, (funcp)execute_303, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_368, (funcp)transaction_370, (funcp)transaction_463, (funcp)transaction_465};
const int NumRelocateId= 50;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/filter_hw_tb_behav/xsim.reloc",  (void **)funcTab, 50);
	iki_vhdl_file_variable_register(dp + 106784);
	iki_vhdl_file_variable_register(dp + 106840);
	iki_vhdl_file_variable_register(dp + 110808);
	iki_vhdl_file_variable_register(dp + 111000);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/filter_hw_tb_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/filter_hw_tb_behav/xsim.reloc");

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
    iki_set_sv_type_file_path_name("xsim.dir/filter_hw_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/filter_hw_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/filter_hw_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
