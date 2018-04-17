----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:03:46 04/05/2017 
-- Design Name: 
-- Module Name:    adder_bit - Behavioral 
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


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_bit is
port(
           a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  Carry_in : in STD_LOGIC;
			  Carry_out : out STD_LOGIC;
           result : out  STD_LOGIC);
end adder_bit;

architecture Behavioral of adder_bit is
signal tmp: STD_LOGIC_VECTOR(1 downto 0);
begin
tmp <=('0' & a)+('0' & b) + ('0' & Carry_in);
result <=tmp(0); 
Carry_out <=tmp(1);

end Behavioral;

