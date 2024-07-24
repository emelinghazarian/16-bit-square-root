----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:00:02 04/01/2023 
-- Design Name: 
-- Module Name:    final - Behavioral 
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

entity final is
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           q : out  STD_LOGIC_VECTOR (7 downto 0));
end final;

architecture Behavioral of final is

component blockX is
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
end component;

component blockY is
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
end component;

signal x1,x2,x3,x4,x5: STD_LOGIC;
signal xy1,xy2,xy3,y1,y2,y3,yx1,yx2: STD_LOGIC;
signal x21,x22,x23,x24,x25,x26: STD_LOGIC;
signal yy1,yy2,yy3,yo1,yo2,yo3,yo4,yo5: STD_LOGIC;
signal xo7,xo8,xo9,yr1,yr2,yr3,yr4,yr5,yr6: STD_LOGIC;
signal xo2,xo4,xo5,xo6,xo1,xo3: STD_LOGIC;
signal y81,y82,y83,y71,y72,R7,R8,R9,R10,R11,R12,R13,R14,R15,R16: STD_LOGIC;
signal y91,y92,y93,y84,y85: STD_LOGIC;
signal x101,x102,x103,y94,y95: STD_LOGIC;
signal qn0,qn1,qn2,qn3,qn4,qn5,qn6,qn7: STD_LOGIC;
signal temp: STD_LOGIC_VECTOR (14 downto 0);

begin
	
	  s1: blockX port map
	      ( DI1 => '0',
           A0  => '1',
           A1  => A(15),
           A2  => A(14),
           A3  => A(13),
           A4  => A(12),
           PI1 => '1',
           PI2 => qn7,
           CO1 => qn7,
           CO2 => qn6,
           R0  => temp(0),
           R1  => temp(1),
           R2  => x1,
           R3  => x2,
           R4  => x3,
           DO1 => x4,
           DO2 => x5 );
			  
			  
			  s2: blockX port map
	      ( DI1 => yx1,
           A0  => x3,
           A1  => A(11),
           A2  => A(10),
           A3  => A(9),
           A4  => A(8),
           PI1 => yx1,
           PI2 => yx2,
           CO1 => xy1,
           CO2 => xy2,
           R0  => xy3,
           R1  => x21,
           R2  => x22,
           R3  => x23,
           R4  => x24,
           DO1 => x25,
           DO2 => x26 );
			  
			  s3: blockY port map
	     (  di1 => x4,
           a11 => x1,
           di2 => x5,
           a12 => x2,
           pi1 => qn6,
           pi2 => qn5,
           ci1 => xy1,
           ci2 => xy2,
           a22 => xy3,
           co1 => qn5,
           co2 => qn4,
           s11 => temp(2),
           do1 => y1,
           do2 => y2,
           s21 => temp(3),
           s22 => y3,
           po1 => yx1,
           po2 => yx2 );
			  
			 s4: blockY port map
	     (  di1 => y1,
           a11 => y3,
           di2 => y2,
           a12 => x21,
           pi1 => qn4,
           pi2 => qn3,
           ci1 => yy1,
           ci2 => yy3,
           a22 => yy2,
           co1 => qn3,
           co2 => qn2,
           s11 => temp(4),
           do1 => yo1,
           do2 => yo2,
           s21 => temp(5),
           s22 => yo3,
           po1 => yo4,
           po2 => yo5 );
			 
			   s5: blockY port map
	     (  di1 => x25,
           a11 => x22,
           di2 => x26,
           a12 => x23,
           pi1 => yo4,
           pi2 => yo5,
           ci1 => xo7,
           ci2 => xo9,
           a22 => xo8,
           co1 => yy1,
           co2 => yy3,
           s11 => yy2,
           do1 => yr1,
           do2 => yr3,
           s21 => yr2,
           s22 => yr4,
           po1 => yr5,
           po2 => yr6 );
			  
			  
			  s6: blockX port map
	      ( DI1 => yr5,
           A0  => x24,
           A1  => A(7),
           A2  => A(6),
           A3  => A(5),
           A4  => A(4),
           PI1 => yr5,
           PI2 => yr6,
           CO1 => xo7,
           CO2 => xo9,
           R0  => xo8,
           R1  => xo2,
           R2  => xo4,
           R3  => xo5,
           R4  => xo6,
           DO1 => xo1,
           DO2 => xo3 );
			  
			  
			  s7: blockY port map
	     (  di1 => yo1,
           a11 => yo3,
           di2 => yo2,
           a12 => yr2,
           pi1 => qn2,
           pi2 => qn1,
           ci1 => y81,
           ci2 => y83,
           a22 => y82,
           co1 => qn1,
           co2 => qn0,
           s11 => temp(6),
           do1 => temp(7),
           do2 => temp(8),
           s21 => R7,
           s22 => R8,
           po1 => y71,
           po2 => y72 );
			  
			  s8: blockY port map
	     (  di1 => yr1,
           a11 => yr4,
           di2 => yr3,
           a12 => xo2,
           pi1 => y71,
           pi2 => y72,
           ci1 => y91,
           ci2 => y93,
           a22 => y92,
           co1 => y81,
           co2 => y83,
           s11 => y82,
           do1 => temp(9),
           do2 => temp(10),
           s21 => R9,
           s22 => R10,
           po1 => y84,
           po2 => y85 );
			  
			  s9: blockY port map
	     (  di1 => xo1,
           a11 => xo4,
           di2 => xo3,
           a12 => xo5,
           pi1 => y84,
           pi2 => y85,
           ci1 => x101,
           ci2 => x103,
           a22 => x102,
           co1 => y91,
           co2 => y93,
           s11 => y92,
           do1 => temp(11),
           do2 => temp(12),
           s21 => R11,
           s22 => R12,
           po1 => y94,
           po2 => y95 );
			  
			   s10: blockX port map
	      ( DI1 => y94,
           A0  => xo6,
           A1  => A(3),
           A2  => A(2),
           A3  => A(1),
           A4  => A(0),
           PI1 => y94,
           PI2 => y95,
           CO1 => x101,
           CO2 => x103,
           R0  => x102,
           R1  => R13,
           R2  => R14,
           R3  => R15,
           R4  => R16,
           DO1 => temp(13),
           DO2 => temp(14) );
			  
			   q(7) <= qn7;
	         q(6) <= qn6;
	         q(5) <= qn5;
	         q(4) <= qn4;
        	   q(3) <= qn3;
	         q(2) <= qn2;
	         q(1) <= qn1;
	         q(0) <= qn0;

end Behavioral;

