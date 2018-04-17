----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:38:20 04/19/2017 
-- Design Name: 
-- Module Name:    MainModule - Behavioral 
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
use work.MMPackage.All;
use work.news.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MainModule is
Port (
START: IN STD_LOGIC;  
CLK: IN STD_LOGIC;  
RegFileOut1: OUT STD_LOGIC_VECTOR(31 downto 0);  
RegFileOut2: OUT STD_LOGIC_VECTOR(31 downto 0);  
ALUOut: OUT STD_LOGIC_VECTOR(31 downto 0));
end MainModule;

architecture Behavioral of MainModule is
signal temp:STD_LOGIC_VECTOR (31 downto 0);
signal ou:STD_LOGIC_VECTOR (5 downto 0);
signal dataA:std_logic_vector(31 downto 0);
signal Alu_opa:std_logic_vector(3 downto 0);
signal WE:std_logic;
signal R1:std_logic_vector(31 downto 0);
signal R2:std_logic_vector(31 downto 0);
signal A1:std_logic_vector(31 downto 0);
signal cflg: std_logic;
signal zflg: std_logic;
signal oflg: std_logic;
begin


CD:Condition Port Map (dataA(31 downto 26),WE);

pc:reg generic Map (6) Port Map ("000000", CLK , '0' ,START,NOT(START),ou);


temp <= "000000000000000000000000" & ou & "00";



m1:INSTRMEMORY Port Map(not(START),dataA,temp,CLK);





RF:RegisterFile Port Map (dataA(25 downto 21),dataA(20 downto 16),dataA(15 downto 11),WE,CLK,A1,R1,R2);
RegFileOut1 <= R1;
RegFileOut2 <=R2;
TC:Transational_Circuit Port MAP (dataA(5 downto 0),Alu_opa);


AL:ALU Port Map (R1,R2,Alu_opa,Alu_opa(2),A1,cflg,zflg,oflg);
ALUOut <= A1;

end Behavioral;

