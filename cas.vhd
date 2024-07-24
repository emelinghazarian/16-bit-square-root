----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:03:28 03/28/2023 
-- Design Name: 
-- Module Name:    cas - Behavioral 
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

entity cas is
    Port ( X : in  STD_LOGIC;
           Pin : in  STD_LOGIC;
			  Pout: out STD_LOGIC;
           D : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           R : out  STD_LOGIC);
end cas;

architecture Behavioral of cas is
component FA is
    Port ( a1 : in  STD_LOGIC;
           b1 : in  STD_LOGIC;
           ci : in  STD_LOGIC;
           co : out  STD_LOGIC;
           so : out  STD_LOGIC);
end component;

signal g, j : std_logic;

begin

g <= Pin xor D;

j <= Pin;
Pout <= Pin;

   t1: FA port map
     (a1 => X,
      b1 => g,
      ci => Cin,
      co => Cout,
      so => R );


end Behavioral;

