----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:19:15 04/04/2017 
-- Design Name: 
-- Module Name:    ALU_bit - Behavioral 
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
use ieee.std_logic_unsigned.all;
use work.package1.ALL;
use work.MyPackage.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_bit is
PORT(
			  a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  operation :in STD_LOGIC_Vector(3 downto 0);
			  cin : in  STD_LOGIC;
			  cout : out  STD_LOGIC;
           result : out  STD_LOGIC);
end ALU_bit;

architecture Behavioral of ALU_bit is
signal temp :STD_LOGIC_Vector(1 downto 0);
signal tb:STD_LOGIC;
signal tmp_result:STD_LOGIC;
signal tt:STD_LOGIC;
signal tt1:STD_LOGIC;
signal tt2:STD_LOGIC;
signal tt3:STD_LOGIC;

begin

mux:MUX2x1 port map(b,not (b),operation,tb);
tt2<=tb;
adder:adder_bit port map(a,tt2,cin,tt3,tmp_result);
tt<=tmp_result;
mux4:MUX4x1 port map((a and b),(a or b),tt,tt,operation,tt1);
			result<=tt1;
			cout<=tt3;
end Behavioral;

