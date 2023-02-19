----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.11.2022 21:23:32
-- Design Name: 
-- Module Name: circuito_alarme - Behavioral
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

entity circuito_alarme is
    Port ( P : in STD_LOGIC;
           I : in STD_LOGIC;
           F : in STD_LOGIC;
           A : out STD_LOGIC);
end circuito_alarme;

architecture Behavioral of circuito_alarme is

begin

    A <= (NOT(I) AND F) OR (P AND I);
    
end Behavioral;
