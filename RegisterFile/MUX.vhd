
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX is generic( n : natural := 32 );
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
end MUX;
architecture Behavioral of MUX is
 signal    O : STD_LOGIC_vector(n-1 downto 0); 
begin
  O <=        I0 When S="00000"ELSE
             I1 When S="00001"ELSE
	          I2 When S="00010"ELSE
	          I3 When S="00011"ELSE
	          I4 When S="00100"ELSE
		       I5 When S="00101"ELSE
		       I6 When S="00110"ELSE
	     	    I7 When S="00111"ELSE
			    I8 When S="01000"ELSE
			    I9 When S="01001"ELSE
			    I10 When S="01010"ELSE
				 I11 When S="01011"ELSE
				 I12 When S="01100"ELSE
				 I13 When S="01101"ELSE
				 I14 When S="01110"ELSE
			    I15 When S="01111"ELSE
				 I16 When S="10000"ELSE
			    I17 When S="10001"ELSE
				 I18 When S="10010"ELSE
			    I19 When S="10011"ELSE
				 I20 When S="10100"ELSE
				 I21 When S="10101"ELSE
				 I22 When S="10110"ELSE
				 I23 When S="10111"ELSE	
				 I24 When S="11000"ELSE
				 I25 When S="11001"ELSE	
				 I26 When S="11010"else
				 I27 When S="11011"ELSE
			    I28 When S="11100"ELSE
				 I29 When S="11101"ELSE
				 I30 When S="11110"ELSE
				 I31 When S="11111";
		    	 OUTPUT <= O ;	 
				 

end Behavioral;

