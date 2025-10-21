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
           frecu : out STD_LOGIC);
end div_fre_1s;

architecture Behavioral of div_fre_1s is
component contador32b
    Port ( clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (31 downto 0));
end component;
signal resetint, prueva : std_logic;
signal cable3 : std_logic_vector (1 downto 0);
signal dataout, datain, cuenta : std_logic_vector(31 downto 0);


begin

  u1: contador32b
  port map(
    count => cuenta,
    reset => prueva,
    clock => clock
    );
    
  prueva <= (reset or resetint);
    process (clock,cuenta,reset)
    begin
        if ( cuenta < x"2FAF080" or resetint ='1' ) then 
            frecu <= '1';
            resetint <= '0';
        elsif (cuenta <x"5E69EC0"  and cuenta >= x"2FAF080" ) then
            frecu <= '0';
            resetint <= '0';
        elsif(cuenta = x"5E69EC0")then
            resetint <= '1';
            frecu <= '1';
       end if;
    end process ;
        
end Behavioral;
