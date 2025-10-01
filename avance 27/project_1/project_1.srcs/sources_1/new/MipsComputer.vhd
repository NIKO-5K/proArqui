----------------------------------------------------------------------------------
-- Company: naniale
-- Engineer: nikolas
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

entity MipsComputer is
    Port ( clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           boto : in STD_LOGIC_VECTOR (3 downto 0);
           leds : in STD_LOGIC_VECTOR (3 downto 0);
           sonido : in STD_LOGIC);
end MipsComputer;

architecture Behavioral of MipsComputer is
component memoriaMips
    Port ( addres : in STD_LOGIC_VECTOR (10 downto 0);
           clock : in STD_LOGIC;
           readEnable : in STD_LOGIC;
           writeEnable : in STD_LOGIC;
           dataIn : in STD_LOGIC_VECTOR (31 downto 0);
           dataout : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component procesadorMips
    Port ( reset : in STD_LOGIC;
           clock : in STD_LOGIC;
           datain : in STD_LOGIC_VECTOR (31 downto 0);
           dataout : out STD_LOGIC_VECTOR (31 downto 0);
           addres : out STD_LOGIC_VECTOR (31 downto 0);
           readEnable : out STD_LOGIC;
           writeEnable : out STD_LOGIC);
end component;
component registro32b
    Port ( reset : in STD_LOGIC;
           clock : in STD_LOGIC;
           enable : in STD_LOGIC;
           dataOut : out STD_LOGIC_VECTOR (31 downto 0);
           dataIn : in STD_LOGIC_VECTOR (31 downto 0));
end component;
signal read , write , cable4, cable5, inEnPc :  std_logic;
signal addr, datainPros, dataoutPros, datPc: std_logic_vector (31 downto 0);
begin

    men : memoriaMips
        port map(
        clock => clock,
        addres => addr (10 downto 0),
        datain => dataoutPros,
        dataout => datainPros,
        readEnable => read,
        writeEnable => write
        );
   pros : procesadorMips
        port map(
        reset => reset,
        clock => clock,
        addres => addr,
        datain => datainPros,
        dataout => dataoutPros,
        readEnable => read,
        writeEnable => write
        );
    pc : registro32b
        port map(
        reset => reset,
        clock => clock,
        enable => inENpc,
        dataOut => addr,
        datain => datPc
        );

end Behavioral;
