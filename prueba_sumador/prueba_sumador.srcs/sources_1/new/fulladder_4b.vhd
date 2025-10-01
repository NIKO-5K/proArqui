----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.08.2025 08:13:20
-- Design Name: 
-- Module Name: fulladder_4b - Behavioral
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

entity fulladder_4b is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0);
           cout : out STD_LOGIC);
end fulladder_4b;




architecture Behavioral of fulladder_4b is

component fulladder_1b 
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               cin : in STD_LOGIC;
               s : out STD_LOGIC;
               cout : out STD_LOGIC);

end component;
signal carry1, carry2, carry3 : std_logic;
begin

    u0 : fulladder_1b
    port map(
        a => a(0),
        b => b(0),
        cin => cin,
        s => s(0),
        cout => carry1
    );
    u1 : fulladder_1b
    port map(
        a => a(1),
        b => b(1),
        cin => carry1,
        s => s(1),
        cout => carry2
    );
    u2 : fulladder_1b
    port map(
        a => a(2),
        b => b(2),
        cin => carry2,
        s => s(2),
        cout => carry3
    );
    u3 : fulladder_1b
    port map(
        a => a(3),
        b => b(3),
        cin => carry3,
        s => s(3),
        cout => cout
    );


end Behavioral;
