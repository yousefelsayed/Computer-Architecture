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

package MMPackage is


component main1 is
    Port ( 
	 clk , start :in STD_LOGIC;
	 data : out  STD_LOGIC_VECTOR (31 downto 0)
	 
	 );
	 
end component;

component ALU is
Port(
data1 : in std_logic_vector(31 downto 0);
data2 : in std_logic_vector(31 downto 0);
aluop : in std_logic_vector(3 downto 0);
cin : in std_logic;
dataout: out std_logic_vector(31 downto 0);
cflag: out std_logic;
zflag: out std_logic;
oflag: out std_logic);
end component;

component RegisterFile IS

PORT(read_sel1 : in std_logic_vector(4 downto 0);
read_sel2 : in std_logic_vector(4 downto 0);
write_sel : in std_logic_vector(4 downto 0);
write_ena : in std_logic;
clk: in std_logic;
write_data: in std_logic_vector(31 downto 0);
data1: out std_logic_vector(31 downto 0);
data2: out std_logic_vector(31 downto 0));
END component;

Component Transational_Circuit is
    Port ( funct : in  STD_LOGIC_VECTOR (5 downto 0);
           ALU_OP : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component Condition is
    Port ( OP : in  STD_LOGIC_VECTOR (5 downto 0);
           Wirtable : out  STD_LOGIC);
end component;


end MMPackage;

