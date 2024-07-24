----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:08:24 03/28/2023 
-- Design Name: 
-- Module Name:    blockY - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity blockY is
    Port ( di1 : in  STD_LOGIC;
           a11 : in  STD_LOGIC;
           di2 : in  STD_LOGIC;
           a12 : in  STD_LOGIC;
           pi1 : in  STD_LOGIC;
           pi2 : in  STD_LOGIC;
           ci1 : in  STD_LOGIC;
           ci2 : in  STD_LOGIC;
           a22 : in  STD_LOGIC;
           co1 : out  STD_LOGIC;
           co2 : out  STD_LOGIC;
           s11 : out  STD_LOGIC;
           do1 : out  STD_LOGIC;
           do2 : out  STD_LOGIC;
           s21 : out  STD_LOGIC;
           s22 : out  STD_LOGIC;
           po1 : out  STD_LOGIC;
           po2 : out  STD_LOGIC);
end blockY;

architecture Behavioral of blockY is
component cas is
    Port ( X : in  STD_LOGIC;
           Pin : in  STD_LOGIC;
			  Pout: out STD_LOGIC;
           D : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           R : out  STD_LOGIC);
end component;

signal cci, ri, ck, w1, w2 : STD_LOGIC;

begin
     
	 ah: cas port map
	 ( X => a11,
      Pin => pi1,
		Pout => w1,
      D => di1,
      Cin => cci,
      Cout => co1,
      R => s11 ); 
		 
		ai: cas port map
	 ( X => a12,
      Pin => w1,
		Pout => PO1,
      D => di2,
      Cin => ci1,
      Cout => cci,
      R => ri );
		
		aj: cas port map
	 ( X => ri,
      Pin => pi2,
		Pout => w2,
      D => di1,
      Cin => ck,
      Cout => co2,
      R => s21 );
		
		ak: cas port map
	 ( X => a22,
      Pin => w2,
		Pout => PO2,
      D => di2,
      Cin => ci2,
      Cout => ck,
      R => s22 );
		
		do2 <= di2;
		do1 <= di1;


end Behavioral;

