----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.09.2025 07:37:29
-- Design Name: 
-- Module Name: mux4a1_32b_v2 - Behavioral
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

entity mux4a1_32b_v2 is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           c : in STD_LOGIC_VECTOR (3 downto 0);
           d : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           muxout : out STD_LOGIC_VECTOR (3 downto 0));
end mux4a1_32b_v2;

architecture Behavioral of mux4a1_32b_v2 is

begin
    process (a, b, c, d, sel)
    begin
 --       if (sel = "00") then 
 --           muxout <= a;
 --       elsif (sel = "01") then
 --           muxout <= b;
 --       elsif (sel = "10") then
 --           muxout <= c;
 --       else 
 --           muxout <= d;
 --       end if;
 --   
 --   end process;
 
    case (sel) is
      when "00" =>
         muxout <= a;
      when "01" =>
         muxout <= b;
      when "10" =>
         muxout <= c;
      when others =>
         muxout <= d;
   end case;
			 
end process;

end Behavioral;
