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
static const char *ng0 = "C:/Users/yousef/Downloads/Compressed/ALU/ALU/test.vhd";



static void work_a_1599699025_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned int t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;
    unsigned char t19;
    char *t20;
    unsigned char t21;
    unsigned char t22;

LAB0:    t1 = (t0 + 3312U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(63, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 3120);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 6152);
    t5 = (t0 + 3696);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 6184);
    t5 = (t0 + 3760);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 6216);
    t5 = (t0 + 3824);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(68, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 3120);
    xsi_process_wait(t2, t3);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 6220);
    xsi_report(t2, 5U, 0);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t2 = (t0 + 6225);
    t11 = 1;
    if (32U == 32U)
        goto LAB17;

LAB18:    t11 = 0;

LAB19:    if (t11 == 1)
        goto LAB14;

LAB15:    t10 = (unsigned char)0;

LAB16:    if (t10 == 0)
        goto LAB12;

LAB13:    xsi_set_current_line(72, ng0);
    t3 = (1 * 1000LL);
    t2 = (t0 + 3120);
    xsi_process_wait(t2, t3);

LAB25:    *((char **)t1) = &&LAB26;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    t8 = (t0 + 6257);
    xsi_report(t8, 6U, (unsigned char)2);
    goto LAB13;

LAB14:    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t13 = *((unsigned char *)t9);
    t14 = (t13 == (unsigned char)2);
    t10 = t14;
    goto LAB16;

LAB17:    t12 = 0;

LAB20:    if (t12 < 32U)
        goto LAB21;
    else
        goto LAB19;

LAB21:    t6 = (t4 + t12);
    t7 = (t2 + t12);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB18;

LAB22:    t12 = (t12 + 1);
    goto LAB20;

LAB23:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 6263);
    t5 = (t0 + 3696);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 6295);
    t5 = (t0 + 3760);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 6327);
    t5 = (t0 + 3824);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(78, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 3120);
    xsi_process_wait(t2, t3);

LAB29:    *((char **)t1) = &&LAB30;
    goto LAB1;

LAB24:    goto LAB23;

LAB26:    goto LAB24;

LAB27:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 6331);
    xsi_report(t2, 5U, 0);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t2 = (t0 + 6336);
    t11 = 1;
    if (32U == 32U)
        goto LAB36;

LAB37:    t11 = 0;

LAB38:    if (t11 == 1)
        goto LAB33;

LAB34:    t10 = (unsigned char)0;

LAB35:    if (t10 == 0)
        goto LAB31;

LAB32:    xsi_set_current_line(82, ng0);
    t3 = (1 * 1000LL);
    t2 = (t0 + 3120);
    xsi_process_wait(t2, t3);

LAB44:    *((char **)t1) = &&LAB45;
    goto LAB1;

LAB28:    goto LAB27;

LAB30:    goto LAB28;

LAB31:    t8 = (t0 + 6368);
    xsi_report(t8, 6U, (unsigned char)2);
    goto LAB32;

LAB33:    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t13 = *((unsigned char *)t9);
    t14 = (t13 == (unsigned char)2);
    t10 = t14;
    goto LAB35;

LAB36:    t12 = 0;

LAB39:    if (t12 < 32U)
        goto LAB40;
    else
        goto LAB38;

LAB40:    t6 = (t4 + t12);
    t7 = (t2 + t12);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB37;

LAB41:    t12 = (t12 + 1);
    goto LAB39;

LAB42:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 6374);
    t5 = (t0 + 3696);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 6406);
    t5 = (t0 + 3760);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 6438);
    t5 = (t0 + 3824);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(88, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 3120);
    xsi_process_wait(t2, t3);

LAB48:    *((char **)t1) = &&LAB49;
    goto LAB1;

LAB43:    goto LAB42;

LAB45:    goto LAB43;

LAB46:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 6442);
    xsi_report(t2, 5U, 0);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t2 = (t0 + 6447);
    t14 = 1;
    if (32U == 32U)
        goto LAB61;

LAB62:    t14 = 0;

LAB63:    if (t14 == 1)
        goto LAB58;

LAB59:    t13 = (unsigned char)0;

LAB60:    if (t13 == 1)
        goto LAB55;

LAB56:    t11 = (unsigned char)0;

LAB57:    if (t11 == 1)
        goto LAB52;

LAB53:    t10 = (unsigned char)0;

LAB54:    if (t10 == 0)
        goto LAB50;

LAB51:    xsi_set_current_line(92, ng0);
    t3 = (1 * 1000LL);
    t2 = (t0 + 3120);
    xsi_process_wait(t2, t3);

LAB69:    *((char **)t1) = &&LAB70;
    goto LAB1;

LAB47:    goto LAB46;

LAB49:    goto LAB47;

LAB50:    t8 = (t0 + 6479);
    xsi_report(t8, 6U, (unsigned char)2);
    goto LAB51;

LAB52:    t8 = (t0 + 1992U);
    t20 = *((char **)t8);
    t21 = *((unsigned char *)t20);
    t22 = (t21 == (unsigned char)2);
    t10 = t22;
    goto LAB54;

LAB55:    t8 = (t0 + 1832U);
    t15 = *((char **)t8);
    t18 = *((unsigned char *)t15);
    t19 = (t18 == (unsigned char)2);
    t11 = t19;
    goto LAB57;

LAB58:    t8 = (t0 + 2152U);
    t9 = *((char **)t8);
    t16 = *((unsigned char *)t9);
    t17 = (t16 == (unsigned char)2);
    t13 = t17;
    goto LAB60;

LAB61:    t12 = 0;

LAB64:    if (t12 < 32U)
        goto LAB65;
    else
        goto LAB63;

LAB65:    t6 = (t4 + t12);
    t7 = (t2 + t12);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB62;

LAB66:    t12 = (t12 + 1);
    goto LAB64;

LAB67:    goto LAB2;

LAB68:    goto LAB67;

LAB70:    goto LAB68;

}


extern void work_a_1599699025_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1599699025_2372691052_p_0};
	xsi_register_didat("work_a_1599699025_2372691052", "isim/ALUTest_isim_beh.exe.sim/work/a_1599699025_2372691052.didat");
	xsi_register_executes(pe);
}
