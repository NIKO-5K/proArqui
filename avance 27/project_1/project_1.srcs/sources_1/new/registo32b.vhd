----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.09.2025 08:47:34
-- Design Name: 
-- Module Name: registo32b - Behavioral
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

entity registo32b is
    Port ( reset : in STD_LOGIC;
           clock : in STD_LOGIC;
           enable : in STD_LOGIC;
           dataOut : out STD_LOGIC_VECTOR (31 downto 0);
           dataIn : in STD_LOGIC_VECTOR (31 downto 0));
end registo32b;

architecture Behavioral of registo32b is

begin
    process(clock,reset)
    begin
        if (reset = '1')then
            dataOut <= x"00000000";
        elsif (clock'event and clock = '1' and enable = '1') then
            dataOut <= dataIn;
        end if;
    end process ; 


end Behavioral;
