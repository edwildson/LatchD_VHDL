--
--					LATCH D
--
--			D		Q		¬Q		
--			0		0		 1			=> if clk='1'
--			1		1		 0			=> if clk='1'
--				NÃO MUDA				=> if clk='0'
--
--			AUTOR: EDWILDSON C. RODRIGUES
--			DATA: 28/07/2018
--
--			UNIVERSIDADE FEDERAL DO VALE DO SÃO FRANCISCO
--

library IEEE;
use IEEE.std_logic_1164.all;

entity	L_D 	is	port
(
	D	:	in		std_logic;
	Q	:	out	std_logic;
   Qn	:	out	std_logic;
  clk	:	in		std_logic
);
end L_D;

architecture	hardware	of L_D	is
signal data : std_logic;
begin

	data <= D when (clk='1') else data;
	
	Q 	<= data;
	Qn <= not data;
end hardware;