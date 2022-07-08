--bitwise xor block--
library ieee;
use ieee.std_logic_1164.all;

entity xorblock is
    port(
        a,b: in std_logic_vector(7 downto 0);
        res: out std_logic_vector(7 downto 0)
    );
end entity;

architecture behave of xorblock is
    begin
    res <= a xor b;
end behave;

--bitwise nor block--
library ieee;
use ieee.std_logic_1164.all;

entity norblock is
    port(
        a,b: in std_logic_vector(7 downto 0);
        res: out std_logic_vector(7 downto 0)
    );
end entity;

architecture behave of norblock is
    begin
    res <= a nor b;
end behave;

--bitwise nand block--
library ieee;
use ieee.std_logic_1164.all;

entity nandblock is
    port(
        a,b: in std_logic_vector(7 downto 0);
        res: out std_logic_vector(7 downto 0)
    );
end entity;

architecture behave of nandblock is
    begin
    res <= a nand b;
end behave;

--bitwise and block--
library ieee;
use ieee.std_logic_1164.all;

entity andblock is
    port(
        a,b: in std_logic_vector(7 downto 0);
        res: out std_logic_vector(7 downto 0)
    );
end entity;

architecture behave of andblock is
    begin
    res <= a and b;
end behave;

--bitwise or block--
library ieee;
use ieee.std_logic_1164.all;

entity orblock is
    port(
        a,b: in std_logic_vector(7 downto 0);
        res: out std_logic_vector(7 downto 0)
    );
end entity;

architecture behave of orblock is
    begin
    res <= a or b;
end behave;