library ieee;
use ieee.std_logic_1164.all;
entity design is
   port(input_vector: in std_logic_vector(17 downto 0);
       	output_vector: out std_logic_vector(9 downto 0));
end entity;

architecture behave of design is
	component alu is
    port(
        en: in std_logic;
        sel: in std_logic_vector(2 downto 0);
        a,b: in std_logic_vector(7 downto 0);
        y: out std_logic_vector(7 downto 0);
        o,c: out std_logic
    );
	end component;
begin
   arithmetic_logical_unit: alu
			port map(
				--inputs--
				en => input_vector(17),
				sel => input_vector(16 downto 14),
				a => input_vector(14 downto 7),
				b => input_vector(7 downto 0),
				y => output_vector(9 downto 2),
				o => output_vector(1),
				c => output_vector(0)
			);
end behave;
