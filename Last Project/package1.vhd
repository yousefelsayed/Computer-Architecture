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

package package1 is


--
Component adder_bit is PORT (
			  a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  Carry_in : in STD_LOGIC;
			  Carry_out : out STD_LOGIC;
           result : out  STD_LOGIC);
end Component;
component MUX2x1 is 

Port ( I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           S : in  STD_LOGIC;
           OO : out  STD_LOGIC);
			  
 end component;
 component MUX4x1 is 

 Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (3 downto 0);
           O : out  STD_LOGIC);
			  
 end component;

end package1;


