----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:14:08 04/30/2017 
-- Design Name: 
-- Module Name:    ALUControl - Behavioral 
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

entity ALUControl is
    Port ( Func : in  STD_LOGIC_VECTOR (5 downto 0);
           AluOp : in  STD_LOGIC_VECTOR (1 downto 0);
           Operation : out  STD_LOGIC_VECTOR (3 downto 0));
end ALUControl;

architecture Behavioral of ALUControl is
signal  tmp1 : STD_LOGIC;
signal  tmp2 : STD_LOGIC;
signal  Optmp0 : STD_LOGIC;
signal  Optmp1 : STD_LOGIC;
signal  Optmp2 : STD_LOGIC;
signal  Optmp3 : STD_LOGIC;
signal  tmp3 : STD_LOGIC;
begin

 
 
 Optmp3 <= Func(0) and Func(1) and Aluop(1);
 Operation(3) <= Optmp3;
 tmp1 <= Func(3) OR Func(0) ;
 tmp2 <= tmp1 and AluOp(1) ;
 
Optmp0 <= tmp2 and not(Optmp3);
  Optmp1 <= (not(Func(2) ))OR (not(AluOp(1)));
 tmp3 <= Func(1) AND Aluop(1) ;
 Optmp2 <= Aluop(0) OR tmp3 ;
 operation <= Optmp3&Optmp2&Optmp1&Optmp0;
end Behavioral;

