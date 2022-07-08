-------------------------------------------------------------------------------- 
-- Engineer: Rohan Rajesh Kalbag
-- Create Date:   17:31:13 07/08/2022
-- VHDL Test Bench 
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY device IS
END device;
 
ARCHITECTURE behavior OF device IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu
    PORT(
         en : IN  std_logic;
         sel : IN  std_logic_vector(2 downto 0);
         a : IN  std_logic_vector(7 downto 0);
         b : IN  std_logic_vector(7 downto 0);
         y : OUT  std_logic_vector(7 downto 0);
         o : OUT  std_logic;
         c : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal en : std_logic := '0';
   signal sel : std_logic_vector(2 downto 0) := (others => '0');
   signal a : std_logic_vector(7 downto 0) := (others => '0');
   signal b : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal y : std_logic_vector(7 downto 0);
   signal o : std_logic;
   signal c : std_logic;
   
   constant period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu PORT MAP (
          en => en,
          sel => sel,
          a => a,
          b => b,
          y => y,
          o => o,
          c => c
        );

   -- Stimulus process
   stim_proc: process
   begin		
	
		--test idle--
		--ignored during gatelevel sim--
		en <= '0';
		sel <= "000";
		a <= x"0F";
		b <= x"7F";
		wait for period;
		if(y /= "ZZZZZZZZ") then
			report "idle failed";
		else
			report "idle passed";
		end if;
		wait for period;
		
		--test xor--
		en <= '1';
		sel <= "000";
		a <= x"0F";
		b <= x"7F";
		wait for period;
		if(y = x"70") then
			report "xor passed";
		else
			report "xor failed";
		end if;
		wait for period;
		
		--test nor--
		en <= '1';
		sel <= "001";
		a <= x"0F";
		b <= x"7F";
		wait for period;
		if(y /= x"80") then
			report "nor failed";
		else
			report "nor passed";
		end if;
		wait for period;
		
		--test nand--
		en <= '1';
		sel <= "010";
		a <= x"0F";
		b <= x"7F";
		wait for period;
		if(y /= x"F0") then
			report "nand failed";
		else
			report "nand passed";
		end if;
		wait for period;
		
		--test and--
		en <= '1';
		sel <= "011";
		a <= x"0F";
		b <= x"7F";
		wait for period;
		if(y /= x"0F") then
			report "and failed";
		else
			report "and passed";
		end if;
		wait for period;
		
		--test or--
		en <= '1';
		sel <= "100";
		a <= x"0F";
		b <= x"7F";
		wait for period;
		if(y /= x"7F") then
			report "or failed";
		else
			report "or passed";
		end if;
		wait for period;
		
		-- test addition --
		en <= '1';
		sel <= "101";
		a <= x"3F";
		b <= x"23";
		wait for period;
		if(y /= x"62" and c /= '0' and o /= '0') then
			report "add case 1 failed";
		else
			report "add case 1 passed";
		end if;
		wait for period;
		
		en <= '1';
		sel <= "101";
		a <= x"7F";
		b <= x"02";
		wait for period;
		if(y /= x"81" and c /= '0' and o /= '1') then
			report "add case 2 failed";
		else
			report "add case 2 passed";
		end if;
		wait for period;
		
		en <= '1';
		sel <= "101";
		a <= x"FF";
		b <= x"FF";
		wait for period;
		if(y /= x"FE" and c /= '1' and o /= '0') then
			report "add case 3 failed";
		else
			report "add case 3 passed";
		end if;
		wait for period;
		
		en <= '1';
		sel <= "101";
		a <= x"80";
		b <= x"FF";
		wait for period;
		if(y /= x"7F" and c /= '1' and o /= '1') then
			report "add case 4 failed";
		else
			report "add case 4 passed";
		end if;
		wait for period;
		
		--test subtraction--
		
		en <= '1';
		sel <= "110";
		a <= x"3F";
		b <= x"FF";
		wait for period;
		if(y /= x"40" and c /= '0' and o /= '0') then
			report "sub case 1 failed";
		else
			report "sub case 1 passed";
		end if;
		wait for period;
		
		en <= '1';
		sel <= "110";
		a <= x"7F";
		b <= x"FE";
		wait for period;
		if(y /= x"81" and c /= '0' and o /= '1') then
			report "sub case 2 failed";
		else
			report "sub case 2 passed";
		end if;
		wait for period;
		
		en <= '1';
		sel <= "110";
		a <= x"FF";
		b <= x"01";
		wait for period;
		if(y /= x"FE" and c /= '1' and o /= '0') then
			report "sub case 3 failed";
		else
			report "sub case 3 passed";
		end if;
		wait for period;
		
		en <= '1';
		sel <= "110";
		a <= x"80";
		b <= x"01";
		wait for period;
		if(y /= x"7F" and c /= '1' and o /= '1') then
			report "sub case 4 failed";
		else
			report "sub case 4 passed";
		end if;
		wait for period;
		
		-- test sel inp of 111 should be like idle---
		--ignored during gatelevel sim--
		en <= '1';
		sel <= "111";
		a <= x"80";
		b <= x"01";
		wait for period;
		if(y /= "ZZZZZZZZ") then
			report "idle failed";
		else
			report "idle passed";
		end if;
		wait for period;
		report "testing completed successfully";
		
		en <= '0';
      wait;
   end process;

END;
