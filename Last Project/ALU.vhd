----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:33:56 04/04/2017 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use work.MyPackage.All;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
Port(
data1 : in std_logic_vector(31 downto 0);
data2 : in std_logic_vector(31 downto 0);
aluop : in std_logic_vector(3 downto 0);
cin : in std_logic;
dataout: out std_logic_vector(31 downto 0);
cflag: out std_logic;
zflag: out std_logic;
oflag: out std_logic);
end ALU;

architecture Behavioral of ALU is


signal cout: std_logic_vector(31 downto 0);       
signal cin1: std_logic_vector(31 downto 0);      
signal temp:	std_logic_vector(31 downto 0);
signal dataout1: std_logic_vector(31 downto 0);
signal ovrfl: std_logic_vector(31 downto 0);
signal tempo: std_logic_vector(31 downto 0);
begin



B1:ALU_bit Port Map(data1(0),data2(0),aluop,cin,tempo(31),tempo(0),ovrfl(0),cout(0),dataout1(0));
cin1(0)<=cout(0);
B2:ALU_bit Port Map (data1(1),data2(1),aluop,cin1(0),'0',tempo(1),ovrfl(1),cout(1),dataout1(1));
cin1(1)<=cout(1);
B3:ALU_bit Port Map (data1(2),data2(2),aluop,cin1(1),'0',tempo(2),ovrfl(2),cout(2),dataout1(2));
cin1(2)<=cout(2);
B4:ALU_bit Port Map (data1(3),data2(3),aluop,cin1(2),'0',tempo(3),ovrfl(3),cout(3),dataout1(3));
cin1(3)<=cout(3);
B5:ALU_bit Port Map (data1(4),data2(4),aluop,cin1(3),'0',tempo(4),ovrfl(4),cout(4),dataout1(4));
cin1(4)<=cout(4);
B6:ALU_bit Port Map (data1(5),data2(5),aluop,cin1(4),'0',tempo(5),ovrfl(5),cout(5),dataout1(5));
cin1(5)<=cout(5);
B7:ALU_bit Port Map (data1(6),data2(6),aluop,cin1(5),'0',tempo(6),ovrfl(6),cout(6),dataout1(6));
cin1(6)<=cout(6);
B8:ALU_bit Port Map (data1(7),data2(7),aluop,cin1(6),'0',tempo(7),ovrfl(7),cout(7),dataout1(7));
cin1(7)<=cout(7);
B9:ALU_bit Port Map (data1(8),data2(8),aluop,cin1(7),'0',tempo(8),ovrfl(8),cout(8),dataout1(8));
cin1(8)<=cout(8);
B10:ALU_bit Port Map (data1(9),data2(9),aluop,cin1(8),'0',tempo(9),ovrfl(9),cout(9),dataout1(9));
cin1(9)<=cout(9);
B11:ALU_bit Port Map (data1(10),data2(10),aluop,cin1(9),'0',tempo(10),ovrfl(10),cout(10),dataout1(10));
cin1(10)<=cout(10);
B12:ALU_bit Port Map (data1(11),data2(11),aluop,cin1(10),'0',tempo(11),ovrfl(11),cout(11),dataout1(11));
cin1(11)<=cout(11);
B13:ALU_bit Port Map (data1(12),data2(12),aluop,cin1(11),'0',tempo(12),ovrfl(12),cout(12),dataout1(12));
cin1(12)<=cout(12);
B14:ALU_bit Port Map (data1(13),data2(13),aluop,cin1(12),'0',tempo(13),ovrfl(13),cout(13),dataout1(13));
cin1(13)<=cout(13);
B15:ALU_bit Port Map (data1(14),data2(14),aluop,cin1(13),'0',tempo(14),ovrfl(14),cout(14),dataout1(14));
cin1(14)<=cout(14);
B16:ALU_bit Port Map (data1(15),data2(15),aluop,cin1(14),'0',tempo(15),ovrfl(15),cout(15),dataout1(15));
cin1(15)<=cout(15);
B17:ALU_bit Port Map (data1(16),data2(16),aluop,cin1(15),'0',tempo(16),ovrfl(16),cout(16),dataout1(16));
cin1(16)<=cout(16);
B18:ALU_bit Port Map (data1(17),data2(17),aluop,cin1(16),'0',tempo(17),ovrfl(17),cout(17),dataout1(17));
cin1(17)<=cout(17);
B19:ALU_bit Port Map (data1(18),data2(18),aluop,cin1(17),'0',tempo(18),ovrfl(18),cout(18),dataout1(18));
cin1(18)<=cout(18);
B20:ALU_bit Port Map (data1(19),data2(19),aluop,cin1(18),'0',tempo(19),ovrfl(19),cout(19),dataout1(19));
cin1(19)<=cout(19);
B21:ALU_bit Port Map (data1(20),data2(20),aluop,cin1(19),'0',tempo(20),ovrfl(20),cout(20),dataout1(20));
cin1(20)<=cout(20);
B22:ALU_bit Port Map (data1(21),data2(21),aluop,cin1(20),'0',tempo(21),ovrfl(21),cout(21),dataout1(21));
cin1(21)<=cout(21);
B23:ALU_bit Port Map (data1(22),data2(22),aluop,cin1(21),'0',tempo(22),ovrfl(22),cout(22),dataout1(22));
cin1(22)<=cout(22);
B24:ALU_bit Port Map (data1(23),data2(23),aluop,cin1(22),'0',tempo(23),ovrfl(23),cout(23),dataout1(23));
cin1(23)<=cout(23);
B25:ALU_bit Port Map (data1(24),data2(24),aluop,cin1(23),'0',tempo(24),ovrfl(24),cout(24),dataout1(24));
cin1(24)<=cout(24);
B26:ALU_bit Port Map (data1(25),data2(25),aluop,cin1(24),'0',tempo(25),ovrfl(25),cout(25),dataout1(25));
cin1(25)<=cout(25);
B27:ALU_bit Port Map (data1(26),data2(26),aluop,cin1(25),'0',tempo(26),ovrfl(26),cout(26),dataout1(26));
cin1(26)<=cout(26);
B28:ALU_bit Port Map (data1(27),data2(27),aluop,cin1(26),'0',tempo(27),ovrfl(27),cout(27),dataout1(27));
cin1(27)<=cout(27);
B29:ALU_bit Port Map (data1(28),data2(28),aluop,cin1(27),'0',tempo(28),ovrfl(28),cout(28),dataout1(28));
cin1(28)<=cout(28);
B30:ALU_bit Port Map (data1(29),data2(29),aluop,cin1(28),'0',tempo(29),ovrfl(29),cout(29),dataout1(29));
cin1(29)<=cout(29);
B31:ALU_bit Port Map (data1(30),data2(30),aluop,cin1(29),'0',tempo(30),ovrfl(30),cout(30),dataout1(30));
cin1(30)<=cout(30);
B32:ALU_bit Port Map (data1(31),data2(31),aluop,cin1(30),'0',tempo(31),ovrfl(31),cout(31),dataout1(31));


dataout <=dataout1;

oflag <= ovrfl(31);

zflag <= NOT(dataout1(0) or dataout1(1) or dataout1(2) or dataout1(3) or dataout1(4) or dataout1(5) or dataout1(6) or dataout1(7) or dataout1(8) or dataout1(9) or dataout1(10) or dataout1(11) or dataout1(12) or dataout1(13) or dataout1(14) or dataout1(15) or dataout1(16) or dataout1(17) or dataout1(18) or dataout1(19) or dataout1(20) or dataout1(21) or dataout1(22) or dataout1(23) or dataout1(24) or dataout1(25) or dataout1(26) or dataout1(27) or dataout1(28) or dataout1(29) or dataout1(30)or dataout1(31) );

cflag <= cout(31);

end Behavioral;

