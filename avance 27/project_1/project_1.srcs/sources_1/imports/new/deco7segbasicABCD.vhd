----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.08.2025 08:27:25
-- Design Name: 
-- Module Name: deco7segbasicABCD - Behavioral
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

entity deco7segbasicABCD is
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           sevenseg : out STD_LOGIC_VECTOR (6 downto 0));
end deco7segbasicABCD;

architecture Behavioral of deco7segbasicABCD is

begin
    sevenseg <= "1111001" when bcd = "0001" else
                "0100100" when bcd = "0010" else
                "0110000" when bcd = "0011" else
                "0011001" when bcd = "0100" else
                "0010010" when bcd = "0101" else
                "0000010" when bcd = "0110" else
                "1111000" when bcd = "0111" else
                "0000000" when bcd = "1000" else
                "0011000" when bcd = "1001" else
                "0001000" when bcd = "1010" else
                "0000011" when bcd = "1011" else
                "1000110" when bcd = "1100" else
                "0100001" when bcd = "1101" else
                "0000110" when bcd = "1110" else
                "0001110" when bcd = "1111" else
                "1000000";


end Behavioral;
