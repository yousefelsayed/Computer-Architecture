----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:55:20 04/30/2017 
-- Design Name: 
-- Module Name:    CU - Behavioral 
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

entity CU is
    Port ( 
	Func: IN  STD_LOGIC_VECTOR  (5 DOWNTO 0);	
	RegDst:   OUT  STD_LOGIC;
	ALUSrc:   OUT  STD_LOGIC;
	MemToReg: OUT  STD_LOGIC;
	RegWrite: OUT  STD_LOGIC;
	MemRead:  OUT  STD_LOGIC;
	MemWrite: OUT  STD_LOGIC;
	Beq: OUT  STD_LOGIC;
	Bnq: OUT  STD_LOGIC;
	Jump: OUT  STD_LOGIC;
   ALUOp: OUT STD_LOGIC_vector (1 downto 0));
end CU;

architecture Behavioral of CU is
signal  R_type : std_logic ; 
signal LW: std_logic ; 
signal SW :std_logic ; 
signal branch_b:std_logic ;   

begin
R_type<= ( not(Func(0)) and not(Func(1)) and not(Func(2))and not(Func(3))and not(Func(4))and not(Func(5)));
LW <= (Func(0) and Func(1) and not(Func(2)) and not(Func(3)) and not (Func(4)) and Func(5));
SW <= (Func(0) and Func(1) and not(Func(2)) and Func(3) and not(Func(4)) and Func(5));
branch_b <= (not (Func(0)) and not(Func(1)) and Func(2) and not(Func(3)) and not (Func(4)) and not( Func(5)));
Jump <= (  ( not Func(0)) AND Func(1) AND (not Func(2)) AND (not Func(3)) AND (not Func(4)) AND (not Func(5)));
ALUSrc  <= (LW OR SW);
RegWrite <= (LW OR R_type);
RegDst <= R_type ;
MemToReg <= LW;
MemRead <= LW;
MemWrite <= SW;

ALUop(1) <= R_type;
ALUop(0) <= branch_b;
Beq <= branch_b ; --testing 
Bnq <= ((Func(0)) and not(Func(1)) and Func(2) and not(Func(3)) and not (Func(4)) and not( Func(5))); --testing
end Behavioral;

