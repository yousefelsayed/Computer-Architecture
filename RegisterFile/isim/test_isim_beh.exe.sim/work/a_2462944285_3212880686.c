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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/yousef/Desktop/np/np/np/main1.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_2462944285_3212880686_p_0(char *t0)
{
    char t5[16];
    char t7[16];
    char t15[16];
    char t17[16];
    char *t1;
    char *t3;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    char *t12;
    char *t14;
    char *t16;
    char *t18;
    char *t19;
    int t20;
    unsigned int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t1 = (t0 + 6400);
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t6 = ((IEEE_P_2592010699) + 4024);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 23;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t10 = (23 - 0);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t0 + 6312U);
    t3 = xsi_base_array_concat(t3, t5, t6, (char)97, t1, t7, (char)97, t4, t9, (char)101);
    t12 = (t0 + 6424);
    t16 = ((IEEE_P_2592010699) + 4024);
    t18 = (t17 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 0;
    t19 = (t18 + 4U);
    *((int *)t19) = 1;
    t19 = (t18 + 8U);
    *((int *)t19) = 1;
    t20 = (1 - 0);
    t11 = (t20 * 1);
    t11 = (t11 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t11;
    t14 = xsi_base_array_concat(t14, t15, t16, (char)97, t3, t5, (char)97, t12, t17, (char)101);
    t11 = (24U + 6U);
    t21 = (t11 + 2U);
    t22 = (32U != t21);
    if (t22 == 1)
        goto LAB5;

LAB6:    t19 = (t0 + 3976);
    t23 = (t19 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t14, 32U);
    xsi_driver_first_trans_fast(t19);

LAB2:    t27 = (t0 + 3880);
    *((int *)t27) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t21, 0);
    goto LAB6;

}

static void work_a_2462944285_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(47, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 4040);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast(t1);

LAB2:    t9 = (t0 + 3896);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2462944285_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2462944285_3212880686_p_0,(void *)work_a_2462944285_3212880686_p_1};
	xsi_register_didat("work_a_2462944285_3212880686", "isim/test_isim_beh.exe.sim/work/a_2462944285_3212880686.didat");
	xsi_register_executes(pe);
}
