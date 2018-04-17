--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MyPackage is

Component ALU_bit is PORT (
			  a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  operation :in STD_LOGIC_Vector(3 downto 0);
			  cin : in  STD_LOGIC;
			  less : in STD_LOGIC;
			  set : out STD_LOGIC;
			  overflow : out STD_LOGIC;
			  cout : out  STD_LOGIC;
           result : out  STD_LOGIC);
end Component;

end MyPackage;

