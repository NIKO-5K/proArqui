----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.09.2025 14:34:46
-- Design Name: 
-- Module Name: div_fre_1s - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity div_fre_1s is
    Port ( reset : in STD_LOGIC;
           clock : in STD_LOGIC;
           s1 : out STD_LOGIC);
end div_fre_1s;

architecture Behavioral of div_fre_1s is
component contador32b
    Port ( clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (31 downto 0));
end component;
signal cable2 : std_logic;
signal cable3 : std_logic_vector (1 downto 0);
signal dataout, datain, cable1 : std_logic_vector(31 downto 0);
signal s : std_logic;

begin

  u1: contador32b
  port map(
    count => cable1,
    reset => reset,
    clock => clock
    );
    
   
    process (cable1,reset)
    begin
        if (cable1 < x"2FAF080" or cable2 ='1' ) then 
            s1 <= '1';
            cable2 <= '0';
        elsif (cable1 <x"5E69EC0"  and cable1 >= x"2FAF080" ) then
            s1 <= '0';
            cable2 <= '0';
        elsif(cable1 = x"5E69EC0")then
            cable2 <= '1';
       end if;
    end process ;
        
end Behavioral;
