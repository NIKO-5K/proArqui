----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.09.2025 07:42:07
-- Design Name: 
-- Module Name: MipsComputer - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MipsComputer is
    Port ( clock : in STD_LOGIC;
           rest : in STD_LOGIC;
           boto : in STD_LOGIC_VECTOR (3 downto 0);
           leds : in STD_LOGIC_VECTOR (3 downto 0);
           sonido : in STD_LOGIC);
end MipsComputer;

architecture Behavioral of MipsComputer is

begin


end Behavioral;
