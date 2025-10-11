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
process(reset,datain,clock)
    begin 
        if (reset = '1') then
           dataout <= x"00000000";
           addres <= x"00000000";
           readEnable <= '0';
           writeEnable <= '0';
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "000001") then
            dataout <= x"00000000";
           addres <= datain;
           readEnable <= '1';
           writeEnable <= '0';
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "000010") then
            dataout <= x"00000000";
           addres <= datain;
           readEnable <= '0';
           writeEnable <= '1';
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "000011") then
           dataout <= x"00000000";
           addres <= x"00000000";
           readEnable <= '0';
           writeEnable <= '0';
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "000100") then
            dataout <= x"00000000";
           addres <= x"00000000";
           readEnable <= '0';
           writeEnable <= '0';
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "000101") then
            dataout <= x"00000000";
           addres <= x"00000000";
           readEnable <= '0';
           writeEnable <= '0';
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "000110") then
            dataout <= x"00000000";
           addres <= x"00000000";
           readEnable <= '0';
           writeEnable <= '0';
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "000111") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "001000") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "001001") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "001010") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "001011") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "001100") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "001001") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "001010") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "001011") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "001100") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "001110") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "001111") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "010001") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "010010") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "010011") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "010100") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "010101") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "010110") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "010111") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "011000") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "011001") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "011010") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "011011") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "011100") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "011001") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "011010") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "011011") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "011100") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "011110") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "011111") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "100001") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "100010") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "100011") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "100100") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "100101") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "100110") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "100111") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "101000") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "101001") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "101010") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "101011") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "101100") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "101001") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "101010") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "101011") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "101100") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "101110") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "101111") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "110001") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "110010") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "110011") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "110100") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "110101") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "110110") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "110111") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "111000") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "111001") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "111010") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "111011") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "111100") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "111001") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "111010") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "111011") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "111100") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "111110") then
        elsif(clock' event and clock = '1' and datain(31 downto 26) = "111111") then
        else
           dataout <= x"00000000";
           addres <= x"00000000";
           readEnable <= '0';
           writeEnable <= '0';
        
        
        
        end if;
    end process;
end Behavioral;
