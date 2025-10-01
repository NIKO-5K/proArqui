----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.09.2025 07:57:31
-- Design Name: 
-- Module Name: memoriaMips - Behavioral
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

entity memoriaMips is
    Port ( addres : in STD_LOGIC_VECTOR (10 downto 0);
           clock : in STD_LOGIC;
           readEnable : in STD_LOGIC;
           writeEnable : in STD_LOGIC;
           dataIn : in STD_LOGIC_VECTOR (31 downto 0);
           dataout : out STD_LOGIC_VECTOR (31 downto 0));
end memoriaMips;

architecture Behavioral of memoriaMips is

begin


end Behavioral;
