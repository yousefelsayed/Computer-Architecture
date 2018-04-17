/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *STD_STANDARD;
char *WORK_P_3047171271;
char *IEEE_P_3620187407;
char *IEEE_P_2592010699;
char *IEEE_P_3499444699;
char *WORK_P_4053066488;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    work_p_4053066488_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_p_3047171271_init();
    work_a_0734482308_3212880686_init();
    work_a_2811129428_3212880686_init();
    work_a_3279062471_3212880686_init();
    work_a_2590041385_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_1599699025_2372691052_init();


    xsi_register_tops("work_a_1599699025_2372691052");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    WORK_P_3047171271 = xsi_get_engine_memory("work_p_3047171271");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    WORK_P_4053066488 = xsi_get_engine_memory("work_p_4053066488");

    return xsi_run_simulation(argc, argv);

}
