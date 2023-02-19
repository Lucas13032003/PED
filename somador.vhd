library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
entity somador is
    Port ( 
           LED_out : out STD_LOGIC_VECTOR (6 downto 0);
            numero1  : in STD_LOGIC_VECTOR (2 downto 0);
            numero2  : in STD_LOGIC_VECTOR (2 downto 0);
            an : out STD_LOGIC_VECTOR(3 downto 0));
end somador;

architecture Behavioral of somador is
    SIGNAL resultado : STD_LOGIC_VECTOR(3 downto 0);
    
begin
   an <="0111";

    resultado <= ('0' & numero1) + ('0' & numero2);

WITH resultado SELECT
LED_out <= "0000001" when "0000" ,
            "1001111" when "0001",
            "0010010" when "0010" ,
            "0000110" when "0011" ,
            "1001100" when "0100" ,
            "0100100" when "0101" ,
            "0100000" when  "0110" ,
            "0001111" when  "0111" ,
            "0000000" when "1000" ,
            "0000100" when "1001" ,
            "0000010" when "1010" ,
            "1100000" when "1011",
            "0110001" when "1100" ,
            "1000010" when "1101" ,
            "0110000" when "1110" ,
            "1111111" WHEN OTHERS;

end Behavioral;