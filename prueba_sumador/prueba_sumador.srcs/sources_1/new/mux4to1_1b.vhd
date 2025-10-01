----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.08.2025 08:04:38
-- Design Name: 
-- Module Name: mux4to1_1b - Behavioral
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

entity mux4to1_1b is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           s : out STD_LOGIC);
end mux4to1_1b;

architecture Behavioral of mux4to1_1b is

begin
 --   s<= a when sel="00" else
 --       b when sel="01" else
 --       c when sel="10" else
 --       d;
 
    with sel select 
        s <= a when "00",
             b when "01",
             c when "10",
             d when others;


end Behavioral;
