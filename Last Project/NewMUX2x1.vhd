----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:01:55 04/30/2017 
-- Design Name: 
-- Module Name:    NewMUX2x1 - Behavioral 
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

entity NewMUX2x1 is
   GENERIC(n:NATURAL := 32);
    Port ( I0 : in  STD_LOGIC_vector( n-1 downto 0 );
           I1 : in  STD_LOGIC_vector( n-1 downto 0 );
           S : in  STD_LOGIC;
           O : out  STD_LOGIC_vector( n-1 downto 0 ));
end NewMUX2x1;

architecture Behavioral of NewMUX2x1 is

begin
O <= I0 when S = '0' else
I1 when S = '1';


end Behavioral;

