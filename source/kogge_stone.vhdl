-- main adder/subtractor entity --

library ieee;
use ieee.std_logic_1164.all;

entity kogge_stone is 
    port(
        m: in std_logic;
        a,b:in std_logic_vector(7 downto 0);
        res:out std_logic_vector(7 downto 0);
        c,o: out std_logic
    );
end entity kogge_stone;

architecture behave of kogge_stone is
    component lookahead is
        port(
            ci: in std_logic;
            g,p:in std_logic_vector(7 downto 0);
            cy: out std_logic_vector(7 downto 0)
        );
    end component;

    component full_adder is 
        port(
            a,b,cin:in std_logic;
            g,p,s:out std_logic
        );
    end component;

    signal g_sig,p_sig,b_sig: std_logic_vector(7 downto 0);
    signal c_sig: std_logic_vector(8 downto 0);
    begin 

    onescomplement: for i in 0 to 7 generate
        b_sig(i) <= b(i) xor m;
    end generate onescomplement;

    la: lookahead port map(ci => m,g=>g_sig,p=>p_sig,cy=>c_sig(8 downto 1));
    
    full_adders: for i in 0 to 7 generate
        fa: full_adder port map(a=>a(i),b=>b_sig(i), cin => c_sig(i), g=>g_sig(i),p => p_sig(i), s=>res(i));
    end generate full_adders;

    c_sig(0) <= m;
    o <= c_sig(8) xor c_sig(7);
    c <= c_sig(8);
end behave;