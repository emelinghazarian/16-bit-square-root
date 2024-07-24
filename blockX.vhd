----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:14:57 03/28/2023 
-- Design Name: 
-- Module Name:    blockX - Behavioral 
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

entity blockX is
    Port ( DI1 : in  STD_LOGIC;
           A0 : in  STD_LOGIC;
           A1 : in  STD_LOGIC;
           A2 : in  STD_LOGIC;
           A3 : in  STD_LOGIC;
           A4 : in  STD_LOGIC;
           PI1 : in  STD_LOGIC;
           PI2 : in  STD_LOGIC;
           CO1 : out  STD_LOGIC;
           CO2 : out  STD_LOGIC;
           R0 : out  STD_LOGIC;
           R1 : out  STD_LOGIC;
           R2 : out  STD_LOGIC;
           R3 : out  STD_LOGIC;
           R4 : out  STD_LOGIC;
           DO1 : out  STD_LOGIC;
           DO2 : out  STD_LOGIC);
end blockX;

architecture Behavioral of blockX is

component cas is
    Port ( X : in  STD_LOGIC;
           Pin : in  STD_LOGIC;
			  Pout : out  STD_LOGIC;
           D : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           R : out  STD_LOGIC);
end component;

signal cc, cb, rb, rc, cg, cf, ce : STD_LOGIC;
signal k, k1, k2, k3, k4, k5, k6, k7, k8, f : std_logic;
begin

k1 <= not k;
k6 <= not k5;

       ha: cas port map
	  ( X => A0,
       Pin => PI1,
		 Pout => k,
       D => PI1,
       Cin => cb,
       Cout => CO1,
       R => R0 ); 
		 
		 hb: cas port map
	  ( X => A1,
       Pin => k,
		 Pout => k2, 
       D => k1,
       Cin => cc,
       Cout => cb,
       R => rb );

		 hc: cas port map
	  ( X => A2,
       Pin => k2,
		 Pout => k3,
       D => '1',
       Cin => k3,
       Cout => cc,
       R => rc );
		 
		 hd: cas port map
	  ( X => rb,
       Pin => PI2,
		 Pout => k4,
       D => DI1,
       Cin => ce,
       Cout => CO2,
       R => R1 );
		 
		 he: cas port map
	  ( X => rc,
       Pin => k4,
		 Pout => k5,
       D => k4,
       Cin => cf,
       Cout => ce,
       R => R2 );
		 
		 hf: cas port map
	  ( X => A3,
       Pin => k5,
		 Pout => k7,
       D => k6,
       Cin => cg,
       Cout => cf,
       R => R3 );
		 
		  hg: cas port map
	  ( X => A4,
       Pin => k7,
		 Pout => k8,
       D => '1',
       Cin => k8,
       Cout => cg,
       R => R4 );
		 
		 f <= DI1;
		
		DO1 <= f;
      DO2 <= k4;		

end Behavioral;

