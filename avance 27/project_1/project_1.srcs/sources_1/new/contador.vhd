----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.09.2025 08:41:28
-- Design Name: 
-- Module Name: contador32b - Behavioral
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

entity contador32b is
    Port ( clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (31 downto 0));
end contador32b;

architecture Behavioral of contador32b is
    signal datain, dataout : std_logic_vector (31 downto 0);
   
begin
    
    process (clock,reset)
    
    begin
        if (reset ='1') then
            dataout <= x"00000000";
        elsif (clock'event and clock = '1') then
            dataout <= datain;
        end if;
       
    end process;
    datain <= dataout + 1;
    count <= dataout(31 downto 0);
end Behavioral;
