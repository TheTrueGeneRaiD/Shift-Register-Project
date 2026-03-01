----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2026 03:42:46 PM
-- Design Name: 
-- Module Name: Register - Behavioral
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

entity Regi is
    Port ( 
        clk: in std_logic;
        reset: in std_logic;
        load: in std_logic; 
        input_bits: in std_logic_vector(7 downto 0);
        output_bits: out std_logic_vector(7 downto 0)
    );
end Regi;

architecture Behavioral of Regi is

signal loopback_bits: std_logic_vector(7 downto 0);

begin

process(clk, reset)
begin    
    if(reset = '1') then
        output_bits <= (others => '0');
    elsif(rising_edge(clk) and load = '1') then
        output_bits <= input_bits;
    end if;
end process;

end Behavioral;
