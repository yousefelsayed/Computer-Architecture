----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:31:23 04/06/2017 
-- Design Name: 
-- Module Name:    MUX2x1 - Behavioral 
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

entity MUX2x1 is
    Port ( I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           S : in  STD_LOGIC;
           OO : out  STD_LOGIC);
end MUX2x1;

architecture Behavioral of MUX2x1 is

begin
OO<= I1 when (S='0') else
    I2 when (S='1') else
	 'Z';
	 


end Behavioral;

