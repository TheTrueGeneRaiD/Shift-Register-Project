----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/26/2026 03:46:32 PM
-- Design Name: 
-- Module Name: DFF - Behavioral
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

entity DFF is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           q : out STD_LOGIC;
           q_not : out STD_LOGIC
          );
end DFF;

architecture Behavioral of DFF is

begin

process(clk, reset, d)
begin
    if (reset = '1') then
        q <= '0';
    elsif (rising_edge(clk)) then
        q <= d;
        q_not <= not d;
    end if;
    
end process;

end Behavioral;
