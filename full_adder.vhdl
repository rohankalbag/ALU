library ieee;
use ieee.std_logic_1164.all;

entity full_adder is 
    port(
        a,b,cin:in std_logic;
        g,p,s:out std_logic
    );
end entity full_adder;

architecture behave of full_adder is
signal xor_sig: std_logic;
begin
    xor_sig <= (a xor b);
    s <= xor_sig xor cin;
    g <= (a and b);
    p <= xor_sig;
end;