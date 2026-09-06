library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity led_switch_top is
    Port ( sw : in STD_LOGIC_VECTOR (15 downto 0);
           led : out STD_LOGIC_VECTOR (15 downto 0));
end led_switch_top;

architecture Behavioral of led_switch_top is
begin
    -- Tugas 1: led[7:0] aktif dan berkebalikan dengan sw[7:0]
    led(7 downto 0) <= not sw(7 downto 0);
    
    -- Mematikan sisa LED (led[15:8]) agar tidak error/mengambang
    led(15 downto 8) <= (others => '0'); 
end Behavioral;