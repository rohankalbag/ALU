library ieee;
use ieee.std_logic_1164.all;

entity mux is
    port(
        s: in std_logic_vector(2 downto 0);
        i0,i1,i2,i3,i4,i5,i6,i7 :in std_logic_vector(7 downto 0);
        y:out std_logic_vector(7 downto 0)
    );
end entity;

architecture behave of mux is
    begin
    process(s,i0,i1,i2,i3,i4,i5,i6,i7) is
    begin
    case s is
        when "000" =>
        y <= i0;
        when "001" =>
        y <= i1;
        when "010" =>
        y <= i2;
        when "011" =>
        y <= i3;
        when "100" =>
        y <= i4;
        when "101" =>
        y <= i5;
        when "110" =>
        y <= i6;
        when "111" =>
        y <= i7;
        when others =>
        y <= i7;
    end case;
    end process;
end behave;

library ieee;
use ieee.std_logic_1164.all;

entity enabler is
    port(
        en: in std_logic;
        sel1,sel2: in std_logic_vector(2 downto 0);
        sel: out std_logic_vector(2 downto 0)
    );
end entity;

architecture behave of enabler is
    begin
    process(en,sel1,sel2)
        begin
        if(en = '1') then
            sel <= sel1;
        else
            sel <= not sel2; 
        end if;
    end process;
end behave;

library ieee;
use ieee.std_logic_1164.all;

entity flag_controller is
    port(
        sel: in std_logic_vector(2 downto 0);
        c1,o1,c2,o2: in std_logic;
        c,o: out std_logic
    );
end entity;

architecture behave of flag_controller is
    begin
    process(c1,o1,c2,o2,sel)
        begin
        if(sel = "101" or sel = "110") then
            c <= c1;
            o <= o1;
        else
            c <= c2;
            o <= o2; 
        end if;
    end process;
end behave;