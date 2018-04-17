
library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MYPackage2 is
component reg is
GENERIC(n:NATURAL := 32);
PORT(
I:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
CLK,LOD,INC,CLR :IN STD_LOGIC;
O:OUT STD_LOGIC_VECTOR(31 downto 0) );
END Component;
Component reg32_1 IS
	PORT (
	I: IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0));
END component;
component Reg32_0 IS
	GENERIC(n:NATURAL := 32);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
END component;

Component MUX is 
    Port (   
	 	     I0 : in  STD_LOGIC_vector(31 downto 0);
	        I1 : in  STD_LOGIC_vector(31 downto 0);
			  I2 : in  STD_LOGIC_vector(31 downto 0);
			  I3 : in  STD_LOGIC_vector(31 downto 0);
			  I4 : in  STD_LOGIC_vector(31 downto 0);
			  I5 : in  STD_LOGIC_vector(31 downto 0);      --I : in  STD_LOGIC_vector(n-1 downto 0);
			  I6 : in  STD_LOGIC_vector(31 downto 0);
	        I7 : in  STD_LOGIC_vector(31 downto 0);
			  I8 : in  STD_LOGIC_vector(31 downto 0);
			  I9 : in  STD_LOGIC_vector(31 downto 0);
			  I10 : in  STD_LOGIC_vector(31 downto 0);
			  I11 : in  STD_LOGIC_vector(31 downto 0);
			  I12 : in  STD_LOGIC_vector(31 downto 0);
			  I13 : in  STD_LOGIC_vector(31 downto 0);
			  I14 : in  STD_LOGIC_vector(31 downto 0);
			  I15 : in  STD_LOGIC_vector(31 downto 0);
			  I16 : in  STD_LOGIC_vector(31 downto 0);
			  I17 : in  STD_LOGIC_vector(31 downto 0);
			  I18 : in  STD_LOGIC_vector(31 downto 0);
			  I19 : in  STD_LOGIC_vector(31 downto 0);    --I : in  STD_LOGIC_vector(n-1 downto 0);
			  I20 : in  STD_LOGIC_vector(31 downto 0);
	        I21 : in  STD_LOGIC_vector(31 downto 0);
			  I22 : in  STD_LOGIC_vector(31 downto 0);
			  I23 : in  STD_LOGIC_vector(31 downto 0);
			  I24 : in  STD_LOGIC_vector(31 downto 0);
			  I25 : in  STD_LOGIC_vector(31 downto 0);
			  I26 : in  STD_LOGIC_vector(31 downto 0);
			  I27 : in  STD_LOGIC_vector(31 downto 0);
			  I28 : in  STD_LOGIC_vector(31 downto 0);
			  I29 : in  STD_LOGIC_vector(31 downto 0);
			  I30 : in  STD_LOGIC_vector(31 downto 0);
			  I31 : in  STD_LOGIC_vector(31 downto 0);
			  S : in  STD_LOGIC_VECTOR (4 downto 0);
          OUTPUT : out  STD_LOGIC_vector( 31 downto 0)
          --- HOUTPUT : out std_logic_vector(n-1 downto 0);			  
        
			 );
end Component;

Component DEC is
    Port ( i : in  STD_LOGIC_VECTOR (4 downto 0);
	 	 O0: out std_logic;
	 	 O1: out std_logic;
	 	 O2: out std_logic;
	 	 O3: out std_logic;
	 	 O4: out std_logic;
	 	 O5: out std_logic;
	 	 O6: out std_logic;
	 	 O7: out std_logic;
	 	 O8: out std_logic;
	 	 O9: out std_logic;
	 	 O10: out std_logic;
	 	 O11: out std_logic;
	 	 O12: out std_logic;
	 	 O13: out std_logic;
	 	 O14: out std_logic;
	 	 O15: out std_logic;
	 	 O16: out std_logic;
	 	 O17: out std_logic;
	 	 O18: out std_logic;
	 	 O19: out std_logic;
	 	 O20: out std_logic;
	 	 O21: out std_logic;
	 	 O22: out std_logic;
	 	 O23: out std_logic;
	 	 O24: out std_logic;
	 	 O25: out std_logic;
	 	 O26: out std_logic;
	 	 O27: out std_logic;
	 	 O28: out std_logic;
	 	 O29: out std_logic;
	 	 O30: out std_logic;
	 	 O31: out std_logic
			  );
end Component;


end MYPackage2;
