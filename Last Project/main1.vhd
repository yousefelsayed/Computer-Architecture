----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:23:15 04/09/2017 
-- Design Name: 
-- Module Name:    main1 - Behavioral 
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
use work.news.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main1 is
    Port ( 
	 clk , start :in STD_LOGIC;
	 data : out  STD_LOGIC_VECTOR (31 downto 0)
	 
	 );
	 
end main1;

architecture Behavioral of main1 is
signal temp:STD_LOGIC_VECTOR (31 downto 0);
signal ou:STD_LOGIC_VECTOR (5 downto 0);
begin

r1:reg generic Map (6) Port Map ("000000", clk , '0' ,start,NOT(start),ou);


temp <= "000000000000000000000000" & ou & "00";



m1:INSTRMEMORY Port Map(start,data,temp,clk);


end Behavioral;

