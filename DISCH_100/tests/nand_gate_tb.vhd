--------------------------------
-- KU Leuven - ESAT/COSIC - ES&S
--------------------------------
-- Module Name:     entity nand_gate_tb is - Behavioural
-- Project Name:    Digitale eletronische schakelingen
-- Description:     Testbench for nand
--
-- Revision     Date       Author     Comments
-- v1.0         20240118   VlJo       Initial version
--
--------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- use IEEE.NUMERIC_STD.ALL;

entity nand_gate_tb is
end entity nand_gate_tb;

architecture Behavioural of nand_gate_tb is

    component nand_gate is
        port(
            A: IN STD_LOGIC;
            B: IN STD_LOGIC;
            Z: OUT STD_LOGIC
        );
    end component nand_gate;

    signal input_a, input_b : STD_LOGIC;
    signal output_z : STD_LOGIC;

begin
    --------------------------------
    -- STIMULI
    --------------------------------
    PSTIM: process
        variable good_checks : natural;
        variable bad_checks : natural;
    begin
        input_a <= '0';
        input_b <= '0';
        wait for 1 ns;
        if output_z /= '1' then
            bad_checks := bad_checks + 1;
        else
            good_checks := good_checks + 1;
        end if;
        wait for 9 ns;

        input_a <= '1';
        input_b <= '0';
        wait for 1 ns;
        if output_z /= '1' then
            bad_checks := bad_checks + 1;
        else
            good_checks := good_checks + 1;
        end if;
        wait for 9 ns;

        input_a <= '0';
        input_b <= '1';
        wait for 1 ns;
        if output_z /= '1' then
            bad_checks := bad_checks + 1;
        else
            good_checks := good_checks + 1;
        end if;
        wait for 9 ns;

        input_a <= '1';
        input_b <= '1';
        wait for 1 ns;
        if output_z /= '0' then
            bad_checks := bad_checks + 1;
        else
            good_checks := good_checks + 1;
        end if;
        wait for 9 ns;

        report "Simulation summary (good, bad, total): " & integer'image(good_checks) & " " & integer'image(bad_checks) & " " & integer'image(good_checks + bad_checks) & "" severity note;

        wait;
    end process;

    --------------------------------
    -- DUT
    --------------------------------
    DUT: component nand_gate port map(
        A => input_a,
        B => input_b,
        Z => output_z
    );

end Behavioural;
