----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:43:34 04/04/2017 
-- Design Name: 
-- Module Name:    Code - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
use work.MYPackage2.all;

ENTITY RegisterFile IS

PORT(read_sel1 : in std_logic_vector(4 downto 0);
read_sel2 : in std_logic_vector(4 downto 0);
write_sel : in std_logic_vector(4 downto 0);
write_ena : in std_logic;
clk: in std_logic;
write_data: in std_logic_vector(31 downto 0);
data1: out std_logic_vector(31 downto 0);
data2: out std_logic_vector(31 downto 0));
END RegisterFile;

architecture Behavioral of RegisterFile is
	 	 signal O1:  std_logic;
	 	 signal O2:  std_logic;
	 	 signal O3:  std_logic;
	 	 signal O4:  std_logic;
	 	 signal O5:  std_logic;
	 	 signal O6:  std_logic;
	 	 signal O7:  std_logic;
	 	 signal O8:  std_logic;
	 	 signal O9:  std_logic;
	 	 signal O10:  std_logic;
	 	 signal O11: std_logic;
	 	 signal O12:  std_logic;
	 	 signal O13:  std_logic;
	 	 signal O14:  std_logic;
	 	 signal O15:  std_logic;
	 	 signal O16:  std_logic;
	 	signal O17:  std_logic;
	 	 signal O18:  std_logic;
	 	 signal O19:  std_logic;
	 	 signal O20:  std_logic;
	 	 signal O21:  std_logic;
	 	 signal O22:  std_logic;
	 	 signal O23:  std_logic;
	 	 signal O24: std_logic;
	 	signal O25: std_logic;
	 	signal O26:  std_logic;
	 	signal O27: std_logic;
	 	signal O28:  std_logic;
	 	signal O29:  std_logic;
	 	signal O30:  std_logic;
	 	signal O31:  std_logic;
		signal O32:  std_logic;
signal r1: std_logic_vector(31 downto 0);
signal r2: std_logic_vector(31 downto 0);
signal r3: std_logic_vector(31 downto 0);
signal r4: std_logic_vector(31 downto 0);
signal r5: std_logic_vector(31 downto 0);
signal r6: std_logic_vector(31 downto 0);
signal r7: std_logic_vector(31 downto 0);
signal r8: std_logic_vector(31 downto 0);
signal r9: std_logic_vector(31 downto 0);
signal r10: std_logic_vector(31 downto 0);
signal r11: std_logic_vector(31 downto 0);
signal r12: std_logic_vector(31 downto 0);
signal r13: std_logic_vector(31 downto 0);
signal r14: std_logic_vector(31 downto 0);
signal r15: std_logic_vector(31 downto 0);
signal r16: std_logic_vector(31 downto 0);
signal r17: std_logic_vector(31 downto 0);
signal r18: std_logic_vector(31 downto 0);
signal r19: std_logic_vector(31 downto 0);
signal r20: std_logic_vector(31 downto 0);
signal r21: std_logic_vector(31 downto 0);
signal r22: std_logic_vector(31 downto 0);
signal r23: std_logic_vector(31 downto 0);
signal r24: std_logic_vector(31 downto 0);
signal r25: std_logic_vector(31 downto 0);
signal r26: std_logic_vector(31 downto 0);
signal r27: std_logic_vector(31 downto 0);
signal r28: std_logic_vector(31 downto 0);
signal r29: std_logic_vector(31 downto 0);
signal r30: std_logic_vector(31 downto 0);
signal r31: std_logic_vector(31 downto 0);
signal r32: std_logic_vector(31 downto 0);


begin

Dec1:DEC  PORT MAP(write_sel,O1,O2,O3,O4,O5,O6,O7,O8,O9,O10,O11,O12,O13,O14,O15,O16,O17,O18,O19,O20,O21,O22,O23,O24,O25,O26,O27,O28,O29,O30,O31,O32);
reg1:reg32_0 PORT MAP(write_data,clk,(O1 and write_ena),'0','0',r1);
reg2:reg32_1 PORT MAP(write_data,clk,(O2 and write_ena),'0','0',r2);
reg3:reg PORT MAP(write_data,clk,O3 and write_ena,'0','0',r3);
reg4:reg PORT MAP(write_data,clk,O4 and write_ena,'0','0',r4);
reg5:reg PORT MAP(write_data,clk,O5 and write_ena,'0','0',r5);
reg6:reg PORT MAP(write_data,clk,O6 and write_ena,'0','0',r6);
reg7:reg PORT MAP(write_data,clk,O7 and write_ena,'0','0',r7);
reg8:reg PORT MAP(write_data,clk,O8 and write_ena,'0','0',r8);
reg9:reg PORT MAP(write_data,clk,O9 and write_ena,'0','0',r9);
reg10:reg PORT MAP(write_data,clk,O10 and write_ena,'0','0',r10);
reg11:reg PORT MAP(write_data,clk,O11 and write_ena,'0','0',r11);
reg12:reg PORT MAP(write_data,clk,O12 and write_ena,'0','0',r12);
reg13:reg PORT MAP(write_data,clk,O13 and write_ena,'0','0',r13);
reg14:reg PORT MAP(write_data,clk,O14 and write_ena,'0','0',r14);
reg15:reg PORT MAP(write_data,clk,O15 and write_ena,'0','0',r15);
reg16:reg PORT MAP(write_data,clk,O16 and write_ena,'0','0',r16);
reg17:reg PORT MAP(write_data,clk,O17 and write_ena,'0','0',r17);
reg18:reg PORT MAP(write_data,clk,O18 and write_ena,'0','0',r18);
reg19:reg PORT MAP(write_data,clk,O19 and write_ena,'0','0',r19);
reg21:reg PORT MAP(write_data,clk,O21 and write_ena,'0','0',r21);
reg22:reg PORT MAP(write_data,clk,O22 and write_ena,'0','0',r22);
reg23:reg PORT MAP(write_data,clk,O23 and write_ena,'0','0',r23);
reg24:reg PORT MAP(write_data,clk,O24 and write_ena,'0','0',r24);
reg25:reg PORT MAP(write_data,clk,O25 and write_ena,'0','0',r25);
reg26:reg PORT MAP(write_data,clk,O26 and write_ena,'0','0',r26);
reg27:reg PORT MAP(write_data,clk,O27 and write_ena,'0','0',r27);
reg28:reg PORT MAP(write_data,clk,O28 and write_ena,'0','0',r28);
reg29:reg PORT MAP(write_data,clk,O29 and write_ena,'0','0',r29);
reg30:reg PORT MAP(write_data,clk,O30 and write_ena,'0','0',r30);
reg31:reg PORT MAP(write_data,clk,O31 and write_ena,'0','0',r31);
reg32:reg PORT MAP(write_data,clk,O32 and write_ena,'0','0',r32);

MUX1:MUX  PORT MAP(r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,read_sel1,data1); 
MUX2:MUX  PORT MAP(r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,read_sel2,data2);

end Behavioral;

