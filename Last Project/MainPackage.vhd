

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MAINPACKAGE is


component CU is
    Port ( 
	Func: IN  STD_LOGIC_VECTOR  (5 DOWNTO 0);	
	RegDst:   OUT  STD_LOGIC;
	ALUSrc:   OUT  STD_LOGIC;
	MemToReg: OUT  STD_LOGIC;
	RegWrite: OUT  STD_LOGIC;
	MemRead:  OUT  STD_LOGIC;
	MemWrite: OUT  STD_LOGIC;
	Beq: OUT  STD_LOGIC;
	Bnq: OUT  STD_LOGIC;
	Jump: OUT  STD_LOGIC;
   ALUOp: OUT STD_LOGIC_vector (1 downto 0));
end component;
component ALUControl is
    Port ( Func : in  STD_LOGIC_VECTOR (5 downto 0);
           AluOp : in  STD_LOGIC_VECTOR (1 downto 0);
           Operation : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
component SignExtend is
    Port ( I : in  STD_LOGIC_VECTOR (15 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
component NewMUX2x1 is
   GENERIC(n:NATURAL := 32);
    Port ( I0 : in  STD_LOGIC_vector( n-1 downto 0 );
           I1 : in  STD_LOGIC_vector( n-1 downto 0 );
           S : in  STD_LOGIC;
           O : out  STD_LOGIC_vector( n-1 downto 0 ));
end component;
component DATAMEMORY is
  Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port ( LoadIt: in STD_LOGIC;
  			INPUT     : in STD_LOGIC_VECTOR (wordsize-1 downto 0);
			OUTPUT    : out STD_LOGIC_VECTOR (wordsize-1 downto 0);
         MEM_READ : in STD_LOGIC;
			MEM_WRITE : in STD_LOGIC;
			ADDRESS   : in STD_LOGIC_VECTOR (addresssize-1 downto 0);
			CLK       : in STD_LOGIC
			);

end component;
end MAINPACKAGE;

