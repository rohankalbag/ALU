library ieee;
use ieee.std_logic_1164.all;

entity black_cell is
    port(
        g1,g2,p1,p2: in std_logic;
        g,p: out std_logic
    );
end entity;

architecture behave of black_cell is
    begin
    g <= g2 or (g1 and p2);
    p <= p1 and p2;
end behave;


library ieee;
use ieee.std_logic_1164.all;

entity grey_cell is
    port(
        g1,g2,p2: in std_logic;
        g: out std_logic
    );
end entity;

architecture behave of grey_cell is
    begin
    g <= g2 or (g1 and p2);
end behave;

library ieee;
use ieee.std_logic_1164.all;

entity lookahead is
    port(
        ci: in std_logic;
        g,p:in std_logic_vector(7 downto 0);
        cy: out std_logic_vector(7 downto 0)
    );
end entity;

architecture behave of lookahead is
    
    component black_cell is
        port(
            g1,g2,p1,p2: in std_logic;
            g,p: out std_logic
        );
    end component;

    component grey_cell is
        port(
            g1,g2,p2: in std_logic;
            g: out std_logic
        );
    end component;

    type connector is array(12 downto 0) of std_logic_vector(1 downto 0);
    signal k: connector;
    signal c: std_logic_vector(7 downto 0);
    begin

    --layer 1--
    first_layer_black: for i in 0 to 6 generate
        b0: black_cell port map(g1=>g(i),g2=>g(i+1),p1=>p(i),p2=>p(i+1),g=>k(i)(0),p=>k(i)(1));
    end generate first_layer_black;

    w0: grey_cell port map(g1=>ci,g2=>g(0),p2=>p(0),g=>c(0));

    --layer 2--
    second_layer: for i in 0 to 4 generate
        b1: black_cell port map(g1 =>k(i)(0),p1=>k(i)(1),g2=>k(i+2)(0),p2=>k(i+2)(1),g=>k(i+7)(0),p=>k(i+7)(1));
    end generate second_layer;

    w1: grey_cell port map(g1=>ci,g2=>k(0)(0),p2=>k(0)(1),g=>c(1)); 
    w2: grey_cell port map(g1=>c(1),g2=>k(1)(0),p2=>k(1)(1),g=>c(2)); 
    
    --layer 3--  
    third_layer: black_cell port map(g1=>k(7)(0),p1=>k(7)(1),g2=>k(11)(0),p2=>k(11)(1),g=>k(12)(0),p=>k(12)(1));
    w3: grey_cell port map(g1=>ci,g2=>k(7)(0),p2=>k(7)(1),g=>c(3));
    
    grey: for i in 0 to 2 generate
        w4: grey_cell port map(g1=>c(i),g2=>k(8+i)(0),p2=>k(8+i)(1),g=>c(4+i));
    end generate grey;

    --layer 4--
    w5: grey_cell port map(g1=>ci,g2=>k(12)(0),p2=>k(12)(1),g=>c(7)); 
    cy <= c;
end behave;