--------------------------------------------------------------------------------
-- KU Leuven - ESAT/COSIC - Emerging technologies, Systems & Security
--------------------------------------------------------------------------------
-- Module Name:     xor_gate_tb - Behavioural
-- Project Name:    Testbench for xor_gate
-- Description:     
--
-- Revision     Date       Author     Comments
-- v0.1         20250904   VlJo       Initial version
--
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- use IEEE.NUMERIC_STD.ALL;

entity xor_gate_tb is
end entity xor_gate_tb;

architecture Behavioural of xor_gate_tb is

    component xor_gate is
        port(
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            Z : out STD_LOGIC
        );
    end component xor_gate;

    signal clock_i : STD_LOGIC;
    signal reset_i : STD_LOGIC;
    signal A_i : STD_LOGIC;
    signal B_i : STD_LOGIC;
    signal Z_o : STD_LOGIC;

    constant clock_period : time := 10 ns;

begin

    -------------------------------------------------------------------------------
    -- STIMULI
    -------------------------------------------------------------------------------
    PSTIM: process
        variable good_checks : natural;
        variable bad_checks : natural;
    begin
        A_i <= '0';
        B_i <= '0';
        wait for 1 ns;

        if Z_o /= '0' then
            bad_checks := bad_checks + 1;
        else
            good_checks := good_checks + 1;
        end if;

        wait for clock_period;
        A_i <= '0';
        B_i <= '1';
        wait for clock_period/2;
        if Z_o /= '1' then
            bad_checks := bad_checks + 1;
        else
            good_checks := good_checks + 1;
        end if;
        wait for clock_period/2;

        A_i <= '1';
        B_i <= '0';
        wait for clock_period/2;
        if Z_o /= '1' then
            bad_checks := bad_checks + 1;
        else
            good_checks := good_checks + 1;
        end if;
        wait for clock_period/2;    

        A_i <= '1';
        B_i <= '1';
        wait for clock_period/2;
        if Z_o /= '0' then
            bad_checks := bad_checks + 1;
        else
            good_checks := good_checks + 1;
        end if;
        wait for clock_period/2;

        report "Simulation summary (good, bad, total): " & integer'image(good_checks) & " " & integer'image(bad_checks) & " " & integer'image(good_checks + bad_checks) & "" severity note;

        wait;
    end process;


    -------------------------------------------------------------------------------
    -- DUT
    -------------------------------------------------------------------------------
    DUT: component xor_gate port map(
        A => A_i,
        B => B_i,
        Z => Z_o
    );

    -------------------------------------------------------------------------------
    -- CLOCK
    -------------------------------------------------------------------------------
    PCLK: process
    begin
        clock_i <= '1';
        wait for clock_period/2;
        clock_i <= '0';
        wait for clock_period/2;
    end process PCLK;


    -------------------------------------------------------------------------------
    -- RESET
    -------------------------------------------------------------------------------
    PRST: process
    begin
        reset_i <= '1';
        wait for clock_period*9;
        wait for clock_period/2;
        reset_i <= '0';
        wait;
    end process PRST;

end Behavioural;