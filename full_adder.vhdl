library ieee;
use ieee.std_logic_1164.all;

entity full_adder is 
    port(
        a,b,cin:in std_logic;
        cout,s:out std_logic
    );
end entity full_adder;

architecture behave of full_adder is
begin
    s <= (a xor b) xor cin;
    cout <= (a and b) or (cin and (a xor b));
end;