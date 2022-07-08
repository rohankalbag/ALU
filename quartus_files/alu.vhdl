library ieee;
use ieee.std_logic_1164.all;

entity alu is
    port(
        en: in std_logic;
        sel: in std_logic_vector(2 downto 0);
        a,b: in std_logic_vector(7 downto 0);
        y: out std_logic_vector(7 downto 0);
        o,c: out std_logic
    );
end entity;

architecture behave of alu is 
    component kogge_stone is 
        port(
            m: in std_logic;
            a,b:in std_logic_vector(7 downto 0);
            res:out std_logic_vector(7 downto 0);
            c,o: out std_logic
        );
    end component;

    component xorblock is
        port(
            a,b: in std_logic_vector(7 downto 0);
            res: out std_logic_vector(7 downto 0)
        );
    end component;

    component norblock is
        port(
            a,b: in std_logic_vector(7 downto 0);
            res: out std_logic_vector(7 downto 0)
        );
    end component;
    
    component nandblock is
        port(
            a,b: in std_logic_vector(7 downto 0);
            res: out std_logic_vector(7 downto 0)
        );
    end component;

    component andblock is
        port(
            a,b: in std_logic_vector(7 downto 0);
            res: out std_logic_vector(7 downto 0)
        );
    end component;

    component orblock is
        port(
            a,b: in std_logic_vector(7 downto 0);
            res: out std_logic_vector(7 downto 0)
        );
    end component;
    
    component mux is
        port(
            s: in std_logic_vector(2 downto 0);
            i0,i1,i2,i3,i4,i5,i6,i7 :in std_logic_vector(7 downto 0);
            y:out std_logic_vector(7 downto 0)
        );
    end component;

    component enabler is
        port(
            en: in std_logic;
            sel1,sel2: in std_logic_vector(2 downto 0);
            sel: out std_logic_vector(2 downto 0)
        );
    end component;

    component flag_controller is
        port(
            sel: in std_logic_vector(2 downto 0);
            c1,o1,c2,o2: in std_logic;
            c,o: out std_logic
        );
    end component;

    type solution is array(5 downto 0) of std_logic_vector(7 downto 0);
    signal op_sig: solution;
    signal o_sig,c_sig: std_logic;
    signal sel_sig: std_logic_vector(2 downto 0);
    signal highimp: std_logic_vector(7 downto 0) := "ZZZZZZZZ";
begin
    op1: xorblock port map(a=>a,b=>b,res=>op_sig(0));
    op2: norblock port map(a=>a,b=>b,res=>op_sig(1));
    op3: nandblock port map(a=>a,b=>b,res=>op_sig(2));
    op4: andblock port map(a=>a,b=>b,res=>op_sig(3));
    op5: orblock port map(a=>a,b=>b,res=>op_sig(4));
    op6: kogge_stone port map(m=>sel(1),a=>a,b=>b,res=>op_sig(5),o=>o_sig, c=>c_sig);
    mu1: mux 
        port map(
            s => sel_sig,
            i0 => op_sig(0),
            i1 => op_sig(1),
            i2 => op_sig(2),
            i3 => op_sig(3),
            i4 => op_sig(4),
            i5 => op_sig(5),
            i6 => op_sig(5),
            i7 => highimp,
            y => y
        );
    enable: enabler port map(en=>en, sel1=>sel, sel2(0)=>en,sel2(1)=>en,sel2(2)=>en,sel=>sel_sig);
    flag: flag_controller port map(sel=>sel_sig, o1=>o_sig, c1=>c_sig, o2=>highimp(0), c2=>highimp(0));
    o <= o_sig;
    c <= c_sig;
end behave;