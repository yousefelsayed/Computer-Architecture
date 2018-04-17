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
char *IEEE_P_3620187407;
char *WORK_P_0157670697;
char *WORK_P_3019231515;
char *IEEE_P_3564397177;
char *IEEE_P_2592010699;
char *IEEE_P_0774719531;
char *WORK_P_4053066488;
char *WORK_P_2423718991;
char *IEEE_P_3499444699;
char *STD_TEXTIO;
char *WORK_P_3047171271;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_1242562249_init();
    work_p_0157670697_init();
    work_p_3019231515_init();
    ieee_p_0774719531_init();
    std_textio_init();
    ieee_p_3564397177_init();
    work_p_2423718991_init();
    work_p_4053066488_init();
    work_a_4275376173_3212880686_init();
    work_a_3125515597_3212880686_init();
    work_a_0763730103_3212880686_init();
    work_a_1664626272_3212880686_init();
    work_a_0084720048_3212880686_init();
    work_a_0293385300_3212880686_init();
    work_a_0143937076_3212880686_init();
    work_a_0154542031_3212880686_init();
    work_a_2166523021_3212880686_init();
    work_a_0734013320_3212880686_init();
    work_p_3047171271_init();
    work_a_0734482308_3212880686_init();
    work_a_2811129428_3212880686_init();
    work_a_3279062471_3212880686_init();
    work_a_2590041385_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_0431830435_3212880686_init();
    work_a_1809836099_2372691052_init();


    xsi_register_tops("work_a_1809836099_2372691052");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    WORK_P_0157670697 = xsi_get_engine_memory("work_p_0157670697");
    WORK_P_3019231515 = xsi_get_engine_memory("work_p_3019231515");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    WORK_P_4053066488 = xsi_get_engine_memory("work_p_4053066488");
    WORK_P_2423718991 = xsi_get_engine_memory("work_p_2423718991");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    WORK_P_3047171271 = xsi_get_engine_memory("work_p_3047171271");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
