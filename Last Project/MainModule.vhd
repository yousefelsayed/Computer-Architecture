----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:27:07 04/30/2017 
-- Design Name: 
-- Module Name:    MainModule - Behavioral 
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
use work.MAINPACKAGE.all;
use work.MMPackage.All;
use work.news.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MainModule is
port(
START: IN STD_LOGIC;
CLK: IN STD_LOGIC;
RegFileOut1: OUT STD_LOGIC_VECTOR(31 downto 0);
RegFileOut2: OUT STD_LOGIC_VECTOR(31 downto 0);
ALUOut: OUT STD_LOGIC_VECTOR(31 downto 0);
PCOut: OUT STD_LOGIC_VECTOR(31 downto 0);
DataMemOut: OUT STD_LOGIC_VECTOR(31 downto 0));
end MainModule;

architecture Behavioral of MainModule is

signal temp:STD_LOGIC_VECTOR (31 downto 0);
signal ou:STD_LOGIC_VECTOR (31 downto 0);
signal dataA:std_logic_vector(31 downto 0);
signal Alu_opa:std_logic_vector(3 downto 0);
signal WriteReg:std_logic_vector(4 downto 0);
signal Rdata1:std_logic_vector(31 downto 0);
signal Rdata2:std_logic_vector(31 downto 0);
signal RegOut:std_logic_vector(31 downto 0);
signal cflg: std_logic;
signal zflg: std_logic;
signal oflg: std_logic;
--maincontrol 
signal RegDst: std_logic;
signal AluSrc: std_logic;
signal MemtoReg: std_logic;
signal RegWtite: std_logic;
signal MemRead: std_logic;
signal MemWrite: std_logic;
signal Beq: std_logic;
signal Bnq: std_logic;
signal Jump: std_logic;
signal ALUop: std_logic_vector(1 downto 0);
--ALuControl
signal Operation_ALU_Control :std_logic_vector(3 downto 0);
--signextend
signal Osignextend :  STD_LOGIC_VECTOR (31 downto 0);
signal Osignextend_shifted :  STD_LOGIC_VECTOR (31 downto 0);
--ALUMUXout
signal ALU_MUX_out :  STD_LOGIC_VECTOR (31 downto 0);
--ALU
signal ALU_out :  STD_LOGIC_VECTOR (31 downto 0);
--DataMEMORY
signal Data_M_out :  STD_LOGIC_VECTOR (31 downto 0);
--DataMEMORYMUX
signal Write_Data :STD_LOGIC_VECTOR (31 downto 0);
--PC
signal PC_input :STD_LOGIC_VECTOR (31 downto 0);
signal Four :STD_LOGIC_VECTOR (31 downto 0) :="00000000000000000000000000000100";
signal Pc_out :STD_LOGIC_VECTOR (31 downto 0);
signal Pc_Cflag :STD_LOGIC;
signal Pc_Zflag :STD_LOGIC;
signal Pc_Oflag :STD_LOGIC;
signal Pc_C :STD_LOGIC;
signal Pc_Z :STD_LOGIC;
signal Pc_O:STD_LOGIC;
signal Pc_SLL :STD_LOGIC_VECTOR (31 downto 0);
signal Branch :STD_LOGIC;
signal PC_Branch_out:STD_LOGIC_VECTOR (31 downto 0);
signal PC_Jump:STD_LOGIC_VECTOR (31 downto 0);
begin
--PC
Four <= "00000000000000000000000000000100";
pc:reg generic map(32) Port Map(PC_input, CLK ,START ,'0',NOT(START),ou); --FINAL OUTPUT(ou)
PC_adder:ALU Port Map(ou,Four,"0010",'0',Pc_out,Pc_C,Pc_Z,Pc_O);--PC +4 OUTPUT(Pc_out)
PC_alu:ALU Port Map(ou,Osignextend_shifted,"0010",'0',Pc_SLL,Pc_Cflag,Pc_Zflag,Pc_Oflag); --PC OUTPUT(Pc_SLL)
PC_mux1 :NewMUX2x1 generic map(32) Port Map (Pc_out ,Pc_SLL,Branch,PC_Branch_out); --first mux output (PC_Branch_out)
PC_Jump <= ( dataA(31 downto 28)&dataA(25 downto 0) &"00");
PC_mux2 :NewMUX2x1 generic map(32) Port Map (PC_Branch_out,PC_Jump ,Jump,PC_input); --PC FINAL INPUT
-------------------------------------------------------------
m1:INSTRMEMORY generic map(64,32,32)Port Map(not(START),dataA,ou,CLK);


TC:Transational_Circuit Port MAP (dataA(5 downto 0),Alu_opa);
--------------------------------------------------------------

--milestone3(controluint) 
MainControl:CU Port Map (dataA(31 downto 26), RegDst,AluSrc,MemtoReg,RegWtite,MemRead,MemWrite,Beq,Bnq,Jump,ALUop); --RegDst,AluSrc,MemtoReg,RegWtite,MemRead,MemWrite,Beq,Bnq,Jump,ALUop (OUTPUT)
--milestone3(ALUCONTROL) 
AluControlblock:ALUControl Port Map (dataA(5 downto 0), ALUop,Operation_ALU_Control); --Operation_ALU_Control  (OUTPUT)
--milestone3(SIGNEXTENDED) 
Signex:SignExtend Port Map(dataA(15 downto 0),Osignextend); --Osignextend OUTPUT
Osignextend_shifted <= Osignextend(29 downto 0) & "00";
--muxREgFile
REG_mux: NewMUX2x1 generic map(5) Port Map (dataA(20 downto 16) ,dataA(15 downto 11),RegDst,WriteReg); --WriteReg (OUTPUT)
--REGFile
RF:RegisterFile Port Map (dataA(25 downto 21),dataA(20 downto 16),WriteReg,RegWtite,CLK,Write_Data,Rdata1,Rdata2); --Rdata1 Rdata2 (OUTPUT)

--------------------------------------------------------------
---muxALU
AL_mux: NewMUX2x1 generic map(32) Port Map ( Rdata2,Osignextend,AluSrc,ALU_MUX_out); --ALU_MUX_out (OUTPUT)
--ALU
AL: ALU Port Map (Rdata1,ALU_MUX_out,Operation_ALU_Control,Alu_opa(2),ALU_out,cflg,zflg,oflg);

---------------------------------------------------------------
--DATAMEMORY uint
MemoData: DATAMEMORY Port Map ( not START,Rdata2,Data_M_out,MemRead,MemWrite,ALU_Out,CLK);
MuxDmemory:newMUX2x1 generic map(32) Port Map (ALU_out,Data_M_out,MemtoReg,Write_Data);
Branch <= ( (zflg and Beq ) or ( not(zflg) and Bnq ) );
----Outputs ---
DataMemOut <=Data_M_out;
PCout <=ou;
ALUout <=ALU_Out;
RegFileOut1 <= Rdata1;
RegFileOut2 <=Rdata2;
end Behavioral;

