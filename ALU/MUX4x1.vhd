----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:42:46 04/06/2017 
-- Design Name: 
-- Module Name:    MUX4x1 - Behavioral 
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

entity MUX4x1 is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (3 downto 0);
           O : out  STD_LOGIC);
end MUX4x1;

architecture Behavioral of MUX4x1 is

begin

O<= I0 when (S="0000") else
    I1 when (S="0001") else
	 I2 when (S="0010" ) else
	 I3  when (S="0011") else
	 'Z';
	 

end Behavioral;

