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
    clk: in std_logic := '0';
    reset: in std_logic := '0';
    input_bit: in std_logic := '0';
    output_bits: out std_logic_vector(7 downto 0)
    );
end ShiftRegister;

architecture Behavioral of ShiftRegister is

    signal bits: STD_LOGIC_VECTOR(7 downto 0);

begin
process(clk, reset, bits)
begin    
    if(reset='1') then
        bits <= (others => '0');
    elsif(clk'event and clk='1') then
        bits <= bits(6 downto 0) & input_bit;
    end if;
end process;

output_bits <= bits;

end Behavioral;
