----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:54:05 04/19/2017 
-- Design Name: 
-- Module Name:    Transational_Circuit - Behavioral 
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

entity Transational_Circuit is
    Port ( funct : in  STD_LOGIC_VECTOR (5 downto 0);
           ALU_OP : out  STD_LOGIC_VECTOR (3 downto 0));
end Transational_Circuit;

architecture Behavioral of Transational_Circuit is

begin

ALU_OP <="0010" when funct = "100000"else
			"0000" when funct = "100100"else 
			"0001" when funct = "100101"else
			"0110" when funct = "100010"else
			"0111" when funct = "101010"else
			"1100" when funct = "100111";



end Behavioral;

