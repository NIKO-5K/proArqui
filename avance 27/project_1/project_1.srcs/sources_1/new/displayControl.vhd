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
           fre : in STD_LOGIC_VECTOR (31 downto 0);
           frecu : out STD_LOGIC);
end component;
component  contador32b 
    Port ( clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (31 downto 0));
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
signal transbcd : std_logic_vector (3 downto 0);
signal quebcd, que7 : std_logic_vector (1 downto 0);
signal cuenta : std_logic_vector (31 downto 0);
signal segundo, segundos4 : std_logic;
begin
    



    quebcdseusa : mux4a1_32b_v2
        port map (
            a => bcd0,
            b => bcd1,
            c => bcd2,
            d => bcd3,
            sel => quebcd,
            muxout => transbcd
        ); 
        
    traductor : deco7segbasicABCD
        port map (
            bcd => transbcd,
            sevenseg => sevengseg
        );
    que7seusa : mux4a1_32b_v2
        port map (
            a => "1110",
            b => "1101",
            c => "1011",
            d => "0111",
            sel => que7,
            muxout => control7seg
        );
     divisor : div_fre_1s
     port map(
        clock => clock,
        reset => reset,
        fre => x"00008968",
        frecu => segundo
     );
     cuenta4 : contador32b
     port map (
        clock => segundo,
        reset => segundos4,
        count => cuenta
     );
     
      process (segundo, reset)
     begin
        if reset = '1' then
            que7 <= "00";
            quebcd <= "00";
            segundos4 <= '0';
        elsif rising_edge(segundo) then
            
            if cuenta >= x"00000004" then
                segundos4 <= '1';
                que7 <= "00";
                quebcd <= "00";
            else
                segundos4 <= '0';
                que7 <= cuenta(1 downto 0); 
                quebcd <= cuenta(1 downto 0);
            end if;
        end if;
     end process;
end Behavioral;
