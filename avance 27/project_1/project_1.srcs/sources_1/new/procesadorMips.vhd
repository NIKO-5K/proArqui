----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.09.2025 07:55:05
-- Design Name: 
-- Module Name: procesadorMips - Behavioral
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

entity procesadorMips is
    Port ( reset : in STD_LOGIC;
           clock : in STD_LOGIC;
           datain : in STD_LOGIC_VECTOR (31 downto 0);
           dataout : out STD_LOGIC_VECTOR (31 downto 0);
           addres : out STD_LOGIC_VECTOR (31 downto 0);
           readEnable : out STD_LOGIC;
           writeEnable : out STD_LOGIC);
end procesadorMips;

architecture Behavioral of procesadorMips is

begin


end Behavioral;
