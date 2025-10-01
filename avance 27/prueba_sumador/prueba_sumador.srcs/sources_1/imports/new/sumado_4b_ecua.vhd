----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.08.2025 07:16:05
-- Design Name: 
-- Module Name: sumado_4b_ecua - Behavioral
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

entity sumado_4b_ecua is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0);
           cout : out STD_LOGIC);
end sumado_4b_ecua;

architecture Behavioral of sumado_4b_ecua is
signal carry1, carry2, carry3 : std_logic;
begin

    s(0) <= ((a(0) xor b(0))xor cin);
    carry1 <= ((a(0) and b(0)) or (cin and (a(0) xor b(0))));
    s(1) <= ((a(1) xor b(1))xor carry1);
    carry2 <= ((a(1) and b(1)) or (carry1 and (a(1) xor b(1))));
    s(2) <= ((a(2) xor b(2))xor carry2);
    carry3 <= ((a(2) and b(2)) or (carry2 and (a(2) xor b(2))));
    s(3) <= ((a(3) xor b(3))xor carry3);
    cout <= ((a(3) and b(3)) or (carry3 and (a(3) xor b(3))));
    
end Behavioral;
