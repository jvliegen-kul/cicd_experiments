--------------------------------------------------------------------------------
-- KU Leuven - ESAT/COSIC - Emerging technologies, Systems & Security
--------------------------------------------------------------------------------
-- Module Name:     xor_gate - Behavioural
-- Project Name:    cicd_experiments
-- Description:     
--
-- Revision     Date       Author     Comments
-- v0.1         20250904   VlJo       Initial version
--
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- use IEEE.NUMERIC_STD.ALL;

entity xor_gate is
    port(
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Z : out STD_LOGIC
    );
end entity xor_gate;

architecture Behavioural of xor_gate is

    -- (DE-)LOCALISING IN/OUTPUTS
    signal A_i : STD_LOGIC;
    signal B_i : STD_LOGIC;
    signal Z_o : STD_LOGIC;

begin

    -------------------------------------------------------------------------------
    -- (DE-)LOCALISING IN/OUTPUTS
    -------------------------------------------------------------------------------
    A_i <= A;
    B_i <= B;
    Z <= Z_o;
    
    Z_o <= A_i XOR B_i;

end Behavioural;