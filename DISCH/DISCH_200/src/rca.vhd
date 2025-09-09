--------------------------------------------------------------------------------
-- KU Leuven - ESAT/COSIC - Emerging technologies, Systems & Security
--------------------------------------------------------------------------------
-- Module Name:     rca - Behavioural
-- Project Name:    rca
-- Description:     
--
-- Revision     Date       Author     Comments
-- v0.1         20250814   VlJo       Initial version
--
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- use IEEE.NUMERIC_STD.ALL;

entity rca is
    generic (
        WIDTH : natural := 32
    );
    port(
        A : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
        B : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
        S : out STD_LOGIC_VECTOR(WIDTH-1 downto 0);
        C : out STD_LOGIC
    );
end entity rca;

architecture Behavioural of rca is

    -- (DE-)LOCALISING IN/OUTPUTS
    signal x_i : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
    signal y_i : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
    signal z_o : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
    
    signal carry : STD_LOGIC_VECTOR(WIDTH downto 0);
begin

    -------------------------------------------------------------------------------
    -- (DE-)LOCALISING IN/OUTPUTS
    -------------------------------------------------------------------------------
    x_i <= A;
    y_i <= B;
    S <= z_o;
    C <= carry(WIDTH);

    carry(0) <= '0';
    GENRCA : for i in 0 to WIDTH-1 generate
        z_o(i) <= x_i(i) XOR y_i(i) XOR carry(i);
        carry(i+1) <= (x_i(i) AND y_i(i)) OR (carry(i) AND (x_i(i) XOR y_i(i)));
    end generate GENRCA;

end Behavioural;