
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DEC is
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
end DEC;

architecture Behavioral of DEC is
 signal	 O: std_logic_VECTOR (31 DOWNTO 0);

begin
O <= "00000000000000000000000000000001"  when i="00000" else
     "00000000000000000000000000000010"  when i="00001" else
     "00000000000000000000000000000100"  when i="00010" else
     "00000000000000000000000000001000"  when i="00011" else
     "00000000000000000000000000010000"  when i="00100" else
     "00000000000000000000000000100000"  when i="00101" else
     "00000000000000000000000001000000"  when i="00110" else
     "00000000000000000000000010000000" when i="00111" else
     "00000000000000000000000100000000"  when i="01000" else
     "00000000000000000000001000000000" when i="01001" else
     "00000000000000000000010000000000" when i="01010" else
     "00000000000000000000100000000000" when i="01011" else
     "00000000000000000001000000000000" when i="01100" else
     "00000000000000000010000000000000" when i="01101" else
     "00000000000000000100000000000000" when i="01110" else
     "00000000000000001000000000000000" when i="01111" else
     "00000000000000010000000000000000" when i="10000" else
     "00000000000000100000000000000000" when i="10001" else
     "00000000000001000000000000000000" when i="10010" else
     "00000000000010000000000000000000" when i="10011" else
     "00000000000100000000000000000000" when i="10100" else
     "00000000001000000000000000000000" when i="10101" else
     "00000000010000000000000000000000"when i="10110" else
     "00000000100000000000000000000000" when i="10111" else
     "00000001000000000000000000000000" when i="11000" else
     "00000010000000000000000000000000" when i="11001" else
     "00000100000000000000000000000000" when i="11010" else
     "00001000000000000000000000000000" when i="11011" else
     "00010000000000000000000000000000" when i="11100" else
     "00100000000000000000000000000000" when i="11101" else
     "01000000000000000000000000000000"when i="11110" else
     "10000000000000000000000000000000" when i="11111" else
	  "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" ;
	 
	  O0 <= O(0);
	  O1 <= O(1);
	  O2 <= O(2);
	  O3 <= O(3);
	  O4 <= O(4);
	  O5 <= O(5);
	  O6 <= O(6);
	  O7 <= O(7);
	  O8 <= O(8);
	  O9 <= O(9);
	  O10 <= O(10);
	  O11 <= O(11);
	  O12 <= O(12);
	  O13 <= O(13);
	  O14 <= O(14);
	  O15 <= O(15);
	  O16 <= O(16);
	  O17 <= O(17);
	  O18 <= O(18);
	  O19 <= O(19);
	  O20 <= O(20);
	  O21 <= O(21);
	  O22 <= O(22);
	  O23 <= O(23);
	  O24 <= O(24);
	  O25 <= O(25);
	  O26 <= O(26);
	  O27 <= O(27);
	  O28 <= O(28);
	  O29 <= O(29);
	  O30 <= O(30);
	  O31 <= O(31);
	  
end Behavioral;
