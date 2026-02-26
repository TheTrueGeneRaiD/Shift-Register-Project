----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2026 03:37:02 PM
-- Design Name: 
-- Module Name: Shift-Register - Behavioral
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

entity ShiftRegister is
    Port ( 
    clk: in std_logic;
    reset: in std_logic;
    input_bit: in std_logic;
    output_bits: out std_logic_vector(7 downto 0)
    );
end ShiftRegister;

architecture Behavioral of ShiftRegister is

signal bits_reg: std_logic_vector(7 downto 0);
signal bits_next: std_logic_vector(7 downto 0);

begin
process(clk, reset)
begin    
    if(reset='1') then
        bits_reg <= (others => '0');
    elsif(clk'event and clk='1') then
        bits_reg <= bits_next;
    end if;
end process;

bits_next <= bits_reg(6 downto 0) & input_bit;

output_bits <= bits_reg;

end Behavioral;
