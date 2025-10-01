----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.09.2025 08:35:24
-- Design Name: 
-- Module Name: displayControl - Behavioral
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

entity displayControl is
    Port ( reset : in STD_LOGIC;
           clock : in STD_LOGIC;
           bcd0 : in STD_LOGIC_VECTOR (3 downto 0);
           bcd1 : in STD_LOGIC_VECTOR (3 downto 0);
           bcd2 : in STD_LOGIC_VECTOR (3 downto 0);
           bcd3 : in STD_LOGIC_VECTOR (3 downto 0);
           sevengseg : out STD_LOGIC_VECTOR (6 downto 0);
           control7seg : out STD_LOGIC_VECTOR (3 downto 0));
end displayControl;

architecture Behavioral of displayControl is

component div_fre_1s
    Port ( reset : in STD_LOGIC;
           clock : in STD_LOGIC;
           s1 : out STD_LOGIC);
end component;
component mux4a1_32b_v2
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           c : in STD_LOGIC_VECTOR (3 downto 0);
           d : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           muxout : out STD_LOGIC_VECTOR (3 downto 0));
end component;
component deco7segbasicABCD
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           sevenseg : out STD_LOGIC_VECTOR (6 downto 0));
end component;
begin
    

end Behavioral;
