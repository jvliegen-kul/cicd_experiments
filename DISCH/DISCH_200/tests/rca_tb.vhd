--------------------------------------------------------------------------------
-- KU Leuven - ESAT/COSIC - Emerging technologies, Systems & Security
--------------------------------------------------------------------------------
-- Module Name:     rca_tb - Behavioural
-- Project Name:    Digitale eletronische schakelingen
-- Description:     Testbench for rca
--
-- Revision     Date       Author     Comments
-- v0.1         0250909    VlJo       Initial version
--
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- use IEEE.NUMERIC_STD.ALL;

entity rca_tb is
    generic(
        WIDTH : natural := 16
    );
end entity rca_tb;

architecture Behavioural of rca_tb is

    component rca is
        generic(
            WIDTH : natural := 8
        );
        port(
            A : IN STD_LOGIC_VECTOR(WIDTH-1 downto 0);
            B : IN STD_LOGIC_VECTOR(WIDTH-1 downto 0);
            S : OUT STD_LOGIC_VECTOR(WIDTH-1 downto 0);
            C : OUT STD_LOGIC
        );
    end component rca;

    signal A : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
    signal B : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
    signal S : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
    signal C : STD_LOGIC;
    
    signal S8 : STD_LOGIC_VECTOR(7 downto 0);
    signal c8 : STD_LOGIC;

begin

    -------------------------------------------------------------------------------
    -- STIMULI
    -------------------------------------------------------------------------------
    PSTIM: process
        variable good_checks : natural;
        variable bad_checks : natural;
    begin
        good_checks := 0;
        bad_checks := 0;

        A <= x"0703";
        B <= x"f0f5";
        wait for 2 ns;
        if S = x"f7f8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f2d1";
        B <= x"3125";
        wait for 2 ns;
        if S = x"23f6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2593";
        B <= x"687d";
        wait for 2 ns;
        if S = x"8e10" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"10" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"dd36";
        B <= x"c804";
        wait for 2 ns;
        if S = x"a53a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"3a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"dfcc";
        B <= x"d745";
        wait for 2 ns;
        if S = x"b711" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"11" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c030";
        B <= x"a343";
        wait for 2 ns;
        if S = x"6373" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"73" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"45d0";
        B <= x"6eb0";
        wait for 2 ns;
        if S = x"b480" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"80" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2e1c";
        B <= x"cd8a";
        wait for 2 ns;
        if S = x"fba6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4e61";
        B <= x"0439";
        wait for 2 ns;
        if S = x"529a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3be5";
        B <= x"62f9";
        wait for 2 ns;
        if S = x"9ede" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"de" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c3b2";
        B <= x"3c0d";
        wait for 2 ns;
        if S = x"ffbf" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"bf" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ca62";
        B <= x"2f46";
        wait for 2 ns;
        if S = x"f9a8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f356";
        B <= x"c50a";
        wait for 2 ns;
        if S = x"b860" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"60" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"baa1";
        B <= x"a42f";
        wait for 2 ns;
        if S = x"5ed0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f515";
        B <= x"9c96";
        wait for 2 ns;
        if S = x"91ab" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ab" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"55dd";
        B <= x"91d0";
        wait for 2 ns;
        if S = x"e7ad" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ad" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3b18";
        B <= x"79eb";
        wait for 2 ns;
        if S = x"b503" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"03" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"299e";
        B <= x"894c";
        wait for 2 ns;
        if S = x"b2ea" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ea" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b1d1";
        B <= x"bdd3";
        wait for 2 ns;
        if S = x"6fa4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"88e8";
        B <= x"acd2";
        wait for 2 ns;
        if S = x"35ba" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ba" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"42aa";
        B <= x"b6b2";
        wait for 2 ns;
        if S = x"f95c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"5c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c8f4";
        B <= x"071b";
        wait for 2 ns;
        if S = x"d00f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"0f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4217";
        B <= x"17db";
        wait for 2 ns;
        if S = x"59f2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c037";
        B <= x"55f1";
        wait for 2 ns;
        if S = x"1628" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"28" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"204d";
        B <= x"8078";
        wait for 2 ns;
        if S = x"a0c5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7557";
        B <= x"58a6";
        wait for 2 ns;
        if S = x"cdfd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"fd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a734";
        B <= x"3536";
        wait for 2 ns;
        if S = x"dc6a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0fa2";
        B <= x"3527";
        wait for 2 ns;
        if S = x"44c9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"232e";
        B <= x"095b";
        wait for 2 ns;
        if S = x"2c89" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"89" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f656";
        B <= x"a26d";
        wait for 2 ns;
        if S = x"98c3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ca00";
        B <= x"c6f3";
        wait for 2 ns;
        if S = x"90f3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8872";
        B <= x"816e";
        wait for 2 ns;
        if S = x"09e0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"50be";
        B <= x"8931";
        wait for 2 ns;
        if S = x"d9ef" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ef" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f035";
        B <= x"f2b1";
        wait for 2 ns;
        if S = x"e2e6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9a2d";
        B <= x"67bb";
        wait for 2 ns;
        if S = x"01e8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"df2a";
        B <= x"46f9";
        wait for 2 ns;
        if S = x"2623" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"23" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0ee2";
        B <= x"4b8a";
        wait for 2 ns;
        if S = x"5a6c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"fae3";
        B <= x"b927";
        wait for 2 ns;
        if S = x"b40a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"0a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0874";
        B <= x"fa61";
        wait for 2 ns;
        if S = x"02d5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f3d9";
        B <= x"eeab";
        wait for 2 ns;
        if S = x"e284" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"84" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8763";
        B <= x"217b";
        wait for 2 ns;
        if S = x"a8de" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"de" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3b57";
        B <= x"5c24";
        wait for 2 ns;
        if S = x"977b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d7f2";
        B <= x"fdfd";
        wait for 2 ns;
        if S = x"d5ef" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ef" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0462";
        B <= x"2032";
        wait for 2 ns;
        if S = x"2494" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"94" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6829";
        B <= x"eabc";
        wait for 2 ns;
        if S = x"52e5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1a96";
        B <= x"1bfb";
        wait for 2 ns;
        if S = x"3691" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"91" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"92ae";
        B <= x"8d82";
        wait for 2 ns;
        if S = x"2030" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"30" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2662";
        B <= x"ec09";
        wait for 2 ns;
        if S = x"126b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6240";
        B <= x"7c57";
        wait for 2 ns;
        if S = x"de97" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"97" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"cef3";
        B <= x"228f";
        wait for 2 ns;
        if S = x"f182" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"82" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d47d";
        B <= x"723a";
        wait for 2 ns;
        if S = x"46b7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d174";
        B <= x"fad3";
        wait for 2 ns;
        if S = x"cc47" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"47" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b8e7";
        B <= x"c4a7";
        wait for 2 ns;
        if S = x"7d8e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"8e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"cb31";
        B <= x"054c";
        wait for 2 ns;
        if S = x"d07d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0393";
        B <= x"f5c0";
        wait for 2 ns;
        if S = x"f953" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"53" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"86a3";
        B <= x"da0b";
        wait for 2 ns;
        if S = x"60ae" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ae" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ab7a";
        B <= x"1df9";
        wait for 2 ns;
        if S = x"c973" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"73" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1dba";
        B <= x"44f2";
        wait for 2 ns;
        if S = x"62ac" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ac" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2c78";
        B <= x"9e1e";
        wait for 2 ns;
        if S = x"ca96" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"96" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"09a0";
        B <= x"b6cd";
        wait for 2 ns;
        if S = x"c06d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4654";
        B <= x"472a";
        wait for 2 ns;
        if S = x"8d7e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"44a1";
        B <= x"d314";
        wait for 2 ns;
        if S = x"17b5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b0f3";
        B <= x"1741";
        wait for 2 ns;
        if S = x"c834" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"34" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"48d3";
        B <= x"8ec9";
        wait for 2 ns;
        if S = x"d79c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"aead";
        B <= x"c640";
        wait for 2 ns;
        if S = x"74ed" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ed" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"400c";
        B <= x"21f4";
        wait for 2 ns;
        if S = x"6200" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"00" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d28a";
        B <= x"e430";
        wait for 2 ns;
        if S = x"b6ba" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ba" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ff0a";
        B <= x"1971";
        wait for 2 ns;
        if S = x"187b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8c7c";
        B <= x"174d";
        wait for 2 ns;
        if S = x"a3c9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0fdc";
        B <= x"66bf";
        wait for 2 ns;
        if S = x"769b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2fd9";
        B <= x"c471";
        wait for 2 ns;
        if S = x"f44a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"4a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"20e0";
        B <= x"fabb";
        wait for 2 ns;
        if S = x"1b9b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1826";
        B <= x"ad2c";
        wait for 2 ns;
        if S = x"c552" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"52" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"516b";
        B <= x"2a8a";
        wait for 2 ns;
        if S = x"7bf5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7ac0";
        B <= x"ea6d";
        wait for 2 ns;
        if S = x"652d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5fed";
        B <= x"65f4";
        wait for 2 ns;
        if S = x"c5e1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"13fe";
        B <= x"73b0";
        wait for 2 ns;
        if S = x"87ae" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ae" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c711";
        B <= x"24d6";
        wait for 2 ns;
        if S = x"ebe7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"378f";
        B <= x"a45c";
        wait for 2 ns;
        if S = x"dbeb" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"eb" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1785";
        B <= x"6113";
        wait for 2 ns;
        if S = x"7898" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"98" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"eefe";
        B <= x"626d";
        wait for 2 ns;
        if S = x"516b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"08ba";
        B <= x"0205";
        wait for 2 ns;
        if S = x"0abf" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"bf" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"996c";
        B <= x"3574";
        wait for 2 ns;
        if S = x"cee0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"45ca";
        B <= x"ccd1";
        wait for 2 ns;
        if S = x"129b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"cd05";
        B <= x"bb6f";
        wait for 2 ns;
        if S = x"8874" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"74" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"86b2";
        B <= x"d5a5";
        wait for 2 ns;
        if S = x"5c57" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"57" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c7a1";
        B <= x"9af1";
        wait for 2 ns;
        if S = x"6292" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"92" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ba9a";
        B <= x"6113";
        wait for 2 ns;
        if S = x"1bad" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ad" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2662";
        B <= x"bf98";
        wait for 2 ns;
        if S = x"e5fa" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"fa" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"cde8";
        B <= x"3880";
        wait for 2 ns;
        if S = x"0668" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"68" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"fec4";
        B <= x"361d";
        wait for 2 ns;
        if S = x"34e1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a151";
        B <= x"f2b6";
        wait for 2 ns;
        if S = x"9407" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"07" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0333";
        B <= x"19d5";
        wait for 2 ns;
        if S = x"1d08" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"08" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f428";
        B <= x"ab9d";
        wait for 2 ns;
        if S = x"9fc5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8806";
        B <= x"f5bf";
        wait for 2 ns;
        if S = x"7dc5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4b02";
        B <= x"2552";
        wait for 2 ns;
        if S = x"7054" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"54" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"afa1";
        B <= x"7e76";
        wait for 2 ns;
        if S = x"2e17" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"17" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"eddf";
        B <= x"9846";
        wait for 2 ns;
        if S = x"8625" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"25" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"161a";
        B <= x"856b";
        wait for 2 ns;
        if S = x"9b85" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"85" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e613";
        B <= x"4ed6";
        wait for 2 ns;
        if S = x"34e9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"63e5";
        B <= x"bb56";
        wait for 2 ns;
        if S = x"1f3b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"3b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c712";
        B <= x"b798";
        wait for 2 ns;
        if S = x"7eaa" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"aa" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"db1f";
        B <= x"2b8f";
        wait for 2 ns;
        if S = x"06ae" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ae" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3ea2";
        B <= x"9b0f";
        wait for 2 ns;
        if S = x"d9b1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"18c5";
        B <= x"952c";
        wait for 2 ns;
        if S = x"adf1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f9b7";
        B <= x"b9e0";
        wait for 2 ns;
        if S = x"b397" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"97" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"23fe";
        B <= x"c9fa";
        wait for 2 ns;
        if S = x"edf8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"dd1d";
        B <= x"288c";
        wait for 2 ns;
        if S = x"05a9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1a82";
        B <= x"c1f1";
        wait for 2 ns;
        if S = x"dc73" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"73" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3fcb";
        B <= x"c56a";
        wait for 2 ns;
        if S = x"0535" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"35" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"03ee";
        B <= x"423f";
        wait for 2 ns;
        if S = x"462d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"875c";
        B <= x"ceb6";
        wait for 2 ns;
        if S = x"5612" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"12" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e4c3";
        B <= x"0fc2";
        wait for 2 ns;
        if S = x"f485" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"85" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6428";
        B <= x"5454";
        wait for 2 ns;
        if S = x"b87c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e04f";
        B <= x"f02e";
        wait for 2 ns;
        if S = x"d07d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e546";
        B <= x"5dcf";
        wait for 2 ns;
        if S = x"4315" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"15" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e401";
        B <= x"8e72";
        wait for 2 ns;
        if S = x"7273" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"73" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c7a5";
        B <= x"b7c6";
        wait for 2 ns;
        if S = x"7f6b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6ab5";
        B <= x"8e0e";
        wait for 2 ns;
        if S = x"f8c3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c28b";
        B <= x"bbd5";
        wait for 2 ns;
        if S = x"7e60" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"60" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"cb6e";
        B <= x"ae06";
        wait for 2 ns;
        if S = x"7974" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"74" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"74f4";
        B <= x"b6b7";
        wait for 2 ns;
        if S = x"2bab" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ab" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"cabc";
        B <= x"42c2";
        wait for 2 ns;
        if S = x"0d7e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7a3e";
        B <= x"e16c";
        wait for 2 ns;
        if S = x"5baa" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"aa" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6cb9";
        B <= x"2750";
        wait for 2 ns;
        if S = x"9409" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"09" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e645";
        B <= x"a1f9";
        wait for 2 ns;
        if S = x"883e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"3e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8176";
        B <= x"ee8a";
        wait for 2 ns;
        if S = x"7000" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"00" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"37ae";
        B <= x"b091";
        wait for 2 ns;
        if S = x"e83f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"3f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d72f";
        B <= x"171a";
        wait for 2 ns;
        if S = x"ee49" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"49" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d676";
        B <= x"01fe";
        wait for 2 ns;
        if S = x"d874" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"74" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2249";
        B <= x"a05b";
        wait for 2 ns;
        if S = x"c2a4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4048";
        B <= x"907d";
        wait for 2 ns;
        if S = x"d0c5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f186";
        B <= x"0680";
        wait for 2 ns;
        if S = x"f806" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"06" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"02bf";
        B <= x"0dcb";
        wait for 2 ns;
        if S = x"108a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"8a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7bad";
        B <= x"d62b";
        wait for 2 ns;
        if S = x"51d8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0f00";
        B <= x"764f";
        wait for 2 ns;
        if S = x"854f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"4f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ecb7";
        B <= x"02a3";
        wait for 2 ns;
        if S = x"ef5a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"5a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b019";
        B <= x"8f25";
        wait for 2 ns;
        if S = x"3f3e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"3e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c267";
        B <= x"2241";
        wait for 2 ns;
        if S = x"e4a8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"feb6";
        B <= x"c0d4";
        wait for 2 ns;
        if S = x"bf8a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"8a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9cda";
        B <= x"a7c1";
        wait for 2 ns;
        if S = x"449b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"72b9";
        B <= x"4069";
        wait for 2 ns;
        if S = x"b322" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"22" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0c42";
        B <= x"b5a7";
        wait for 2 ns;
        if S = x"c1e9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8fe5";
        B <= x"81e0";
        wait for 2 ns;
        if S = x"11c5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9f86";
        B <= x"85dc";
        wait for 2 ns;
        if S = x"2562" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"62" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3ad5";
        B <= x"3e7f";
        wait for 2 ns;
        if S = x"7954" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"54" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6775";
        B <= x"28eb";
        wait for 2 ns;
        if S = x"9060" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"60" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"25b4";
        B <= x"820d";
        wait for 2 ns;
        if S = x"a7c1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ec50";
        B <= x"7fa4";
        wait for 2 ns;
        if S = x"6bf4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3ec0";
        B <= x"33d1";
        wait for 2 ns;
        if S = x"7291" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"91" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ed05";
        B <= x"bdcd";
        wait for 2 ns;
        if S = x"aad2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5eef";
        B <= x"497e";
        wait for 2 ns;
        if S = x"a86d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"dd71";
        B <= x"5be5";
        wait for 2 ns;
        if S = x"3956" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"56" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3332";
        B <= x"729e";
        wait for 2 ns;
        if S = x"a5d0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"45c2";
        B <= x"04bd";
        wait for 2 ns;
        if S = x"4a7f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"76e6";
        B <= x"a962";
        wait for 2 ns;
        if S = x"2048" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"48" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"81db";
        B <= x"706e";
        wait for 2 ns;
        if S = x"f249" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"49" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"cd2f";
        B <= x"f332";
        wait for 2 ns;
        if S = x"c061" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"61" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f317";
        B <= x"73ae";
        wait for 2 ns;
        if S = x"66c5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5ed8";
        B <= x"693c";
        wait for 2 ns;
        if S = x"c814" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"14" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0dea";
        B <= x"2cc5";
        wait for 2 ns;
        if S = x"3aaf" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"af" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3f8e";
        B <= x"c8ba";
        wait for 2 ns;
        if S = x"0848" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"48" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a1d1";
        B <= x"67e4";
        wait for 2 ns;
        if S = x"09b5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0e6c";
        B <= x"ca55";
        wait for 2 ns;
        if S = x"d8c1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e4e8";
        B <= x"7af0";
        wait for 2 ns;
        if S = x"5fd8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"348e";
        B <= x"5d4d";
        wait for 2 ns;
        if S = x"91db" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"db" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"84a7";
        B <= x"f34b";
        wait for 2 ns;
        if S = x"77f2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5f14";
        B <= x"7db6";
        wait for 2 ns;
        if S = x"dcca" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ca" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7dee";
        B <= x"09f4";
        wait for 2 ns;
        if S = x"87e2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f555";
        B <= x"a562";
        wait for 2 ns;
        if S = x"9ab7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"db18";
        B <= x"700a";
        wait for 2 ns;
        if S = x"4b22" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"22" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8c70";
        B <= x"e85a";
        wait for 2 ns;
        if S = x"74ca" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ca" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9a6d";
        B <= x"0f53";
        wait for 2 ns;
        if S = x"a9c0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0765";
        B <= x"042e";
        wait for 2 ns;
        if S = x"0b93" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"93" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f01a";
        B <= x"d640";
        wait for 2 ns;
        if S = x"c65a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"5a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"bf25";
        B <= x"4086";
        wait for 2 ns;
        if S = x"ffab" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ab" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"03e4";
        B <= x"fe64";
        wait for 2 ns;
        if S = x"0248" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"48" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"cd16";
        B <= x"1381";
        wait for 2 ns;
        if S = x"e097" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"97" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7645";
        B <= x"a454";
        wait for 2 ns;
        if S = x"1a99" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"99" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7d2c";
        B <= x"5066";
        wait for 2 ns;
        if S = x"cd92" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"92" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e4ea";
        B <= x"272d";
        wait for 2 ns;
        if S = x"0c17" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"17" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"29f3";
        B <= x"f249";
        wait for 2 ns;
        if S = x"1c3c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"3c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7ced";
        B <= x"8107";
        wait for 2 ns;
        if S = x"fdf4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"61e9";
        B <= x"0e36";
        wait for 2 ns;
        if S = x"701f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"1f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"43cd";
        B <= x"de00";
        wait for 2 ns;
        if S = x"21cd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"cd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"de3f";
        B <= x"4345";
        wait for 2 ns;
        if S = x"2184" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"84" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"76e1";
        B <= x"d098";
        wait for 2 ns;
        if S = x"4779" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"79" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ae18";
        B <= x"1592";
        wait for 2 ns;
        if S = x"c3aa" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"aa" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f57f";
        B <= x"35bd";
        wait for 2 ns;
        if S = x"2b3c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"3c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7723";
        B <= x"0c52";
        wait for 2 ns;
        if S = x"8375" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"75" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d377";
        B <= x"7eda";
        wait for 2 ns;
        if S = x"5251" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"51" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3a6d";
        B <= x"3eac";
        wait for 2 ns;
        if S = x"7919" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"19" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4650";
        B <= x"da42";
        wait for 2 ns;
        if S = x"2092" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"92" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1d2f";
        B <= x"4644";
        wait for 2 ns;
        if S = x"6373" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"73" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"730d";
        B <= x"e204";
        wait for 2 ns;
        if S = x"5511" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"11" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5089";
        B <= x"a4ac";
        wait for 2 ns;
        if S = x"f535" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"35" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e3af";
        B <= x"a15d";
        wait for 2 ns;
        if S = x"850c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"0c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f854";
        B <= x"e74f";
        wait for 2 ns;
        if S = x"dfa3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"57d3";
        B <= x"bf25";
        wait for 2 ns;
        if S = x"16f8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2a2f";
        B <= x"88f6";
        wait for 2 ns;
        if S = x"b325" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"25" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"11ba";
        B <= x"25a4";
        wait for 2 ns;
        if S = x"375e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"5e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"65a6";
        B <= x"802d";
        wait for 2 ns;
        if S = x"e5d3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6e29";
        B <= x"ec8e";
        wait for 2 ns;
        if S = x"5ab7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2e87";
        B <= x"2617";
        wait for 2 ns;
        if S = x"549e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"addb";
        B <= x"8a4b";
        wait for 2 ns;
        if S = x"3826" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"26" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c945";
        B <= x"e534";
        wait for 2 ns;
        if S = x"ae79" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"79" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"09b3";
        B <= x"2779";
        wait for 2 ns;
        if S = x"312c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"da5e";
        B <= x"6278";
        wait for 2 ns;
        if S = x"3cd6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d5d4";
        B <= x"166c";
        wait for 2 ns;
        if S = x"ec40" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"40" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7434";
        B <= x"fc60";
        wait for 2 ns;
        if S = x"7094" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"94" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3a6a";
        B <= x"012f";
        wait for 2 ns;
        if S = x"3b99" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"99" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3321";
        B <= x"030e";
        wait for 2 ns;
        if S = x"362f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9508";
        B <= x"50e1";
        wait for 2 ns;
        if S = x"e5e9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ab44";
        B <= x"59f2";
        wait for 2 ns;
        if S = x"0536" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"36" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5e42";
        B <= x"0529";
        wait for 2 ns;
        if S = x"636b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"45ff";
        B <= x"d752";
        wait for 2 ns;
        if S = x"1d51" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"51" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c5cc";
        B <= x"3fc8";
        wait for 2 ns;
        if S = x"0594" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"94" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d517";
        B <= x"e2b6";
        wait for 2 ns;
        if S = x"b7cd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"cd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a9fc";
        B <= x"b164";
        wait for 2 ns;
        if S = x"5b60" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"60" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5e39";
        B <= x"abaf";
        wait for 2 ns;
        if S = x"09e8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6d59";
        B <= x"a4eb";
        wait for 2 ns;
        if S = x"1244" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"44" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5864";
        B <= x"c923";
        wait for 2 ns;
        if S = x"2187" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"87" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3af5";
        B <= x"f8dd";
        wait for 2 ns;
        if S = x"33d2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"111c";
        B <= x"52c5";
        wait for 2 ns;
        if S = x"63e1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6606";
        B <= x"04bf";
        wait for 2 ns;
        if S = x"6ac5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"03cc";
        B <= x"da70";
        wait for 2 ns;
        if S = x"de3c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"3c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9fd6";
        B <= x"f8fe";
        wait for 2 ns;
        if S = x"98d4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"aa43";
        B <= x"95e8";
        wait for 2 ns;
        if S = x"402b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"341f";
        B <= x"f54c";
        wait for 2 ns;
        if S = x"296b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"95da";
        B <= x"8e03";
        wait for 2 ns;
        if S = x"23dd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"dd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5cf8";
        B <= x"ad3a";
        wait for 2 ns;
        if S = x"0a32" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"32" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2de6";
        B <= x"0eb8";
        wait for 2 ns;
        if S = x"3c9e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2ff5";
        B <= x"acaa";
        wait for 2 ns;
        if S = x"dc9f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"627a";
        B <= x"c9d3";
        wait for 2 ns;
        if S = x"2c4d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"4d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b429";
        B <= x"d69f";
        wait for 2 ns;
        if S = x"8ac8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7c45";
        B <= x"cd91";
        wait for 2 ns;
        if S = x"49d6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ed85";
        B <= x"7bd4";
        wait for 2 ns;
        if S = x"6959" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"59" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d314";
        B <= x"a97b";
        wait for 2 ns;
        if S = x"7c8f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"8f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"dd59";
        B <= x"09be";
        wait for 2 ns;
        if S = x"e717" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"17" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5e17";
        B <= x"bf68";
        wait for 2 ns;
        if S = x"1d7f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6083";
        B <= x"9b2b";
        wait for 2 ns;
        if S = x"fbae" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ae" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3a66";
        B <= x"09d8";
        wait for 2 ns;
        if S = x"443e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"3e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"aaf8";
        B <= x"4d2d";
        wait for 2 ns;
        if S = x"f825" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"25" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"000c";
        B <= x"2d73";
        wait for 2 ns;
        if S = x"2d7f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0ac2";
        B <= x"d0af";
        wait for 2 ns;
        if S = x"db71" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"71" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3770";
        B <= x"b1f3";
        wait for 2 ns;
        if S = x"e963" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"63" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"df92";
        B <= x"27e1";
        wait for 2 ns;
        if S = x"0773" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"73" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f337";
        B <= x"37d0";
        wait for 2 ns;
        if S = x"2b07" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"07" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0596";
        B <= x"76bc";
        wait for 2 ns;
        if S = x"7c52" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"52" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d9aa";
        B <= x"d323";
        wait for 2 ns;
        if S = x"accd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"cd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"03af";
        B <= x"b85a";
        wait for 2 ns;
        if S = x"bc09" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"09" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8e51";
        B <= x"73f0";
        wait for 2 ns;
        if S = x"0241" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"41" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b12e";
        B <= x"6421";
        wait for 2 ns;
        if S = x"154f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"4f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c2ec";
        B <= x"d19b";
        wait for 2 ns;
        if S = x"9487" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"87" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"68f6";
        B <= x"38f7";
        wait for 2 ns;
        if S = x"a1ed" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ed" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9a69";
        B <= x"8fbd";
        wait for 2 ns;
        if S = x"2a26" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"26" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6bdf";
        B <= x"463e";
        wait for 2 ns;
        if S = x"b21d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"1d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"796a";
        B <= x"98c3";
        wait for 2 ns;
        if S = x"122d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2a20";
        B <= x"abcf";
        wait for 2 ns;
        if S = x"d5ef" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ef" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"147e";
        B <= x"4c24";
        wait for 2 ns;
        if S = x"60a2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0cfa";
        B <= x"04aa";
        wait for 2 ns;
        if S = x"11a4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7c3e";
        B <= x"c295";
        wait for 2 ns;
        if S = x"3ed3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e7c0";
        B <= x"5485";
        wait for 2 ns;
        if S = x"3c45" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"45" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"045c";
        B <= x"768c";
        wait for 2 ns;
        if S = x"7ae8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4590";
        B <= x"4d28";
        wait for 2 ns;
        if S = x"92b8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c7fd";
        B <= x"60d3";
        wait for 2 ns;
        if S = x"28d0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3858";
        B <= x"90dc";
        wait for 2 ns;
        if S = x"c934" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"34" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9c1c";
        B <= x"a39b";
        wait for 2 ns;
        if S = x"3fb7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8dc9";
        B <= x"2a4c";
        wait for 2 ns;
        if S = x"b815" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"15" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2900";
        B <= x"6043";
        wait for 2 ns;
        if S = x"8943" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"43" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1dd1";
        B <= x"388f";
        wait for 2 ns;
        if S = x"5660" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"60" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"88c2";
        B <= x"700b";
        wait for 2 ns;
        if S = x"f8cd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"cd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"541d";
        B <= x"9b64";
        wait for 2 ns;
        if S = x"ef81" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"81" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7afd";
        B <= x"8cd0";
        wait for 2 ns;
        if S = x"07cd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"cd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"38d4";
        B <= x"2935";
        wait for 2 ns;
        if S = x"6209" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"09" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c48b";
        B <= x"39e6";
        wait for 2 ns;
        if S = x"fe71" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"71" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"bdf8";
        B <= x"36ac";
        wait for 2 ns;
        if S = x"f4a4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e1b4";
        B <= x"0b01";
        wait for 2 ns;
        if S = x"ecb5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9d61";
        B <= x"94e1";
        wait for 2 ns;
        if S = x"3242" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"42" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4423";
        B <= x"f018";
        wait for 2 ns;
        if S = x"343b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"3b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e153";
        B <= x"d199";
        wait for 2 ns;
        if S = x"b2ec" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ec" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"dd55";
        B <= x"9c17";
        wait for 2 ns;
        if S = x"796c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"502f";
        B <= x"ee83";
        wait for 2 ns;
        if S = x"3eb2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"24ae";
        B <= x"0e6c";
        wait for 2 ns;
        if S = x"331a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"1a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4cc9";
        B <= x"1e48";
        wait for 2 ns;
        if S = x"6b11" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"11" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5269";
        B <= x"5c98";
        wait for 2 ns;
        if S = x"af01" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"01" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8add";
        B <= x"7303";
        wait for 2 ns;
        if S = x"fde0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7cb3";
        B <= x"35d3";
        wait for 2 ns;
        if S = x"b286" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"86" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e436";
        B <= x"16a7";
        wait for 2 ns;
        if S = x"fadd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"dd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c660";
        B <= x"d86e";
        wait for 2 ns;
        if S = x"9ece" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ce" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8c2c";
        B <= x"f61e";
        wait for 2 ns;
        if S = x"824a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"4a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"69d2";
        B <= x"16dd";
        wait for 2 ns;
        if S = x"80af" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"af" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ffd0";
        B <= x"f52c";
        wait for 2 ns;
        if S = x"f4fc" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"fc" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c5f3";
        B <= x"dbb2";
        wait for 2 ns;
        if S = x"a1a5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c8b0";
        B <= x"7fbc";
        wait for 2 ns;
        if S = x"486c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"97cc";
        B <= x"f704";
        wait for 2 ns;
        if S = x"8ed0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"28f3";
        B <= x"4c45";
        wait for 2 ns;
        if S = x"7538" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"38" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"aa85";
        B <= x"fc52";
        wait for 2 ns;
        if S = x"a6d7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"24eb";
        B <= x"80f5";
        wait for 2 ns;
        if S = x"a5e0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"db97";
        B <= x"1e49";
        wait for 2 ns;
        if S = x"f9e0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c82b";
        B <= x"3351";
        wait for 2 ns;
        if S = x"fb7c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"333b";
        B <= x"bf23";
        wait for 2 ns;
        if S = x"f25e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"5e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c9f6";
        B <= x"817d";
        wait for 2 ns;
        if S = x"4b73" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"73" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"bc4d";
        B <= x"0322";
        wait for 2 ns;
        if S = x"bf6f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"904d";
        B <= x"9fc2";
        wait for 2 ns;
        if S = x"300f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"0f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f29e";
        B <= x"d253";
        wait for 2 ns;
        if S = x"c4f1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7658";
        B <= x"4825";
        wait for 2 ns;
        if S = x"be7d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"fe7b";
        B <= x"0f79";
        wait for 2 ns;
        if S = x"0df4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0c2f";
        B <= x"a363";
        wait for 2 ns;
        if S = x"af92" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"92" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6e91";
        B <= x"7fd1";
        wait for 2 ns;
        if S = x"ee62" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"62" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e3fc";
        B <= x"eb8d";
        wait for 2 ns;
        if S = x"cf89" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"89" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4d0f";
        B <= x"b703";
        wait for 2 ns;
        if S = x"0412" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"12" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3ea8";
        B <= x"c6b5";
        wait for 2 ns;
        if S = x"055d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"5d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c78f";
        B <= x"fe05";
        wait for 2 ns;
        if S = x"c594" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"94" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4ae8";
        B <= x"cfd6";
        wait for 2 ns;
        if S = x"1abe" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"be" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"eb20";
        B <= x"4877";
        wait for 2 ns;
        if S = x"3397" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"97" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d1a9";
        B <= x"7546";
        wait for 2 ns;
        if S = x"46ef" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ef" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a453";
        B <= x"ea9d";
        wait for 2 ns;
        if S = x"8ef0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e817";
        B <= x"3bd5";
        wait for 2 ns;
        if S = x"23ec" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ec" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6551";
        B <= x"bca0";
        wait for 2 ns;
        if S = x"21f1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a07f";
        B <= x"cd9a";
        wait for 2 ns;
        if S = x"6e19" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"19" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1aaf";
        B <= x"391f";
        wait for 2 ns;
        if S = x"53ce" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ce" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b6c6";
        B <= x"998e";
        wait for 2 ns;
        if S = x"5054" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"54" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f7e9";
        B <= x"d08e";
        wait for 2 ns;
        if S = x"c877" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"77" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b110";
        B <= x"f667";
        wait for 2 ns;
        if S = x"a777" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"77" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"14d1";
        B <= x"ec1f";
        wait for 2 ns;
        if S = x"00f0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"394f";
        B <= x"5dc0";
        wait for 2 ns;
        if S = x"970f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"0f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e6c6";
        B <= x"fe7d";
        wait for 2 ns;
        if S = x"e543" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"43" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"fbe1";
        B <= x"ab6b";
        wait for 2 ns;
        if S = x"a74c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"4c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"98be";
        B <= x"f146";
        wait for 2 ns;
        if S = x"8a04" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"04" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"cad7";
        B <= x"24c2";
        wait for 2 ns;
        if S = x"ef99" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"99" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"589a";
        B <= x"5347";
        wait for 2 ns;
        if S = x"abe1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ac5c";
        B <= x"448e";
        wait for 2 ns;
        if S = x"f0ea" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ea" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"098c";
        B <= x"5607";
        wait for 2 ns;
        if S = x"5f93" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"93" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a28f";
        B <= x"39f2";
        wait for 2 ns;
        if S = x"dc81" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"81" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1607";
        B <= x"ae10";
        wait for 2 ns;
        if S = x"c417" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"17" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0c4d";
        B <= x"6c22";
        wait for 2 ns;
        if S = x"786f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0a8c";
        B <= x"3dbd";
        wait for 2 ns;
        if S = x"4849" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"49" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8aa0";
        B <= x"5ae5";
        wait for 2 ns;
        if S = x"e585" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"85" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5f6a";
        B <= x"dfa4";
        wait for 2 ns;
        if S = x"3f0e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"0e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7df4";
        B <= x"a091";
        wait for 2 ns;
        if S = x"1e85" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"85" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f2c9";
        B <= x"9f90";
        wait for 2 ns;
        if S = x"9259" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"59" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8990";
        B <= x"5d6b";
        wait for 2 ns;
        if S = x"e6fb" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"fb" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9e4f";
        B <= x"9b84";
        wait for 2 ns;
        if S = x"39d3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"106d";
        B <= x"2ce5";
        wait for 2 ns;
        if S = x"3d52" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"52" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ff3f";
        B <= x"61b5";
        wait for 2 ns;
        if S = x"60f4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"bea8";
        B <= x"e147";
        wait for 2 ns;
        if S = x"9fef" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ef" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6bea";
        B <= x"4b91";
        wait for 2 ns;
        if S = x"b77b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9392";
        B <= x"f41a";
        wait for 2 ns;
        if S = x"87ac" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ac" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c385";
        B <= x"fa40";
        wait for 2 ns;
        if S = x"bdc5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e3eb";
        B <= x"d37a";
        wait for 2 ns;
        if S = x"b765" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"65" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"adb7";
        B <= x"fbb0";
        wait for 2 ns;
        if S = x"a967" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"67" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8093";
        B <= x"2cd2";
        wait for 2 ns;
        if S = x"ad65" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"65" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9c23";
        B <= x"b7e2";
        wait for 2 ns;
        if S = x"5405" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"05" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"dce8";
        B <= x"7cd4";
        wait for 2 ns;
        if S = x"59bc" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"bc" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5f37";
        B <= x"186a";
        wait for 2 ns;
        if S = x"77a1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"defd";
        B <= x"6f67";
        wait for 2 ns;
        if S = x"4e64" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"64" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"84fc";
        B <= x"1d64";
        wait for 2 ns;
        if S = x"a260" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"60" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"cbba";
        B <= x"e24a";
        wait for 2 ns;
        if S = x"ae04" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"04" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"060d";
        B <= x"0b72";
        wait for 2 ns;
        if S = x"117f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"546e";
        B <= x"9881";
        wait for 2 ns;
        if S = x"ecef" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ef" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8798";
        B <= x"d87e";
        wait for 2 ns;
        if S = x"6016" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"16" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"558c";
        B <= x"f312";
        wait for 2 ns;
        if S = x"489e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"22c3";
        B <= x"970e";
        wait for 2 ns;
        if S = x"b9d1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b168";
        B <= x"cf5f";
        wait for 2 ns;
        if S = x"80c7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"51d0";
        B <= x"b565";
        wait for 2 ns;
        if S = x"0735" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"35" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7d78";
        B <= x"8d79";
        wait for 2 ns;
        if S = x"0af1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"eb92";
        B <= x"fbfe";
        wait for 2 ns;
        if S = x"e790" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"90" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"16d0";
        B <= x"2394";
        wait for 2 ns;
        if S = x"3a64" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"64" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"232b";
        B <= x"6075";
        wait for 2 ns;
        if S = x"83a0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d423";
        B <= x"7f15";
        wait for 2 ns;
        if S = x"5338" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"38" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0b0e";
        B <= x"4ff3";
        wait for 2 ns;
        if S = x"5b01" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"01" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f383";
        B <= x"1131";
        wait for 2 ns;
        if S = x"04b4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4c72";
        B <= x"85ed";
        wait for 2 ns;
        if S = x"d25f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"5f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"db99";
        B <= x"f7a9";
        wait for 2 ns;
        if S = x"d342" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"42" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"01cc";
        B <= x"08cb";
        wait for 2 ns;
        if S = x"0a97" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"97" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"14a9";
        B <= x"4830";
        wait for 2 ns;
        if S = x"5cd9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"988a";
        B <= x"0f1c";
        wait for 2 ns;
        if S = x"a7a6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1632";
        B <= x"c4dd";
        wait for 2 ns;
        if S = x"db0f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"0f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a397";
        B <= x"db32";
        wait for 2 ns;
        if S = x"7ec9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a1ec";
        B <= x"b15b";
        wait for 2 ns;
        if S = x"5347" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"47" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9c18";
        B <= x"7391";
        wait for 2 ns;
        if S = x"0fa9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"84c3";
        B <= x"85d6";
        wait for 2 ns;
        if S = x"0a99" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"99" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6646";
        B <= x"3ae7";
        wait for 2 ns;
        if S = x"a12d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0ea4";
        B <= x"2432";
        wait for 2 ns;
        if S = x"32d6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c5a8";
        B <= x"4ca8";
        wait for 2 ns;
        if S = x"1250" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"50" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"eaad";
        B <= x"d735";
        wait for 2 ns;
        if S = x"c1e2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9c51";
        B <= x"d678";
        wait for 2 ns;
        if S = x"72c9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a262";
        B <= x"8dac";
        wait for 2 ns;
        if S = x"300e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"0e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6111";
        B <= x"9ca2";
        wait for 2 ns;
        if S = x"fdb3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"cd9d";
        B <= x"b02b";
        wait for 2 ns;
        if S = x"7dc8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b858";
        B <= x"5ba2";
        wait for 2 ns;
        if S = x"13fa" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"fa" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"471b";
        B <= x"9f2e";
        wait for 2 ns;
        if S = x"e649" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"49" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2edf";
        B <= x"2665";
        wait for 2 ns;
        if S = x"5544" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"44" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"20a9";
        B <= x"e622";
        wait for 2 ns;
        if S = x"06cb" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"cb" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ef39";
        B <= x"f02a";
        wait for 2 ns;
        if S = x"df63" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"63" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"45fa";
        B <= x"484c";
        wait for 2 ns;
        if S = x"8e46" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"46" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2145";
        B <= x"5e74";
        wait for 2 ns;
        if S = x"7fb9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d8d7";
        B <= x"2a0c";
        wait for 2 ns;
        if S = x"02e3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0285";
        B <= x"0e7c";
        wait for 2 ns;
        if S = x"1101" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"01" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1ce0";
        B <= x"fb80";
        wait for 2 ns;
        if S = x"1860" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"60" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9988";
        B <= x"1454";
        wait for 2 ns;
        if S = x"addc" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"dc" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a51f";
        B <= x"10c6";
        wait for 2 ns;
        if S = x"b5e5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"05ad";
        B <= x"a5ac";
        wait for 2 ns;
        if S = x"ab59" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"59" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b3e5";
        B <= x"f4b1";
        wait for 2 ns;
        if S = x"a896" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"96" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"dee3";
        B <= x"c8de";
        wait for 2 ns;
        if S = x"a7c1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"543d";
        B <= x"15b3";
        wait for 2 ns;
        if S = x"69f0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b5b9";
        B <= x"c3e0";
        wait for 2 ns;
        if S = x"7999" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"99" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"38fd";
        B <= x"eccb";
        wait for 2 ns;
        if S = x"25c8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"18a3";
        B <= x"9694";
        wait for 2 ns;
        if S = x"af37" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"37" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e894";
        B <= x"6768";
        wait for 2 ns;
        if S = x"4ffc" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"fc" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8171";
        B <= x"3f5f";
        wait for 2 ns;
        if S = x"c0d0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"78e0";
        B <= x"2df9";
        wait for 2 ns;
        if S = x"a6d9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1aa0";
        B <= x"4a47";
        wait for 2 ns;
        if S = x"64e7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0b5a";
        B <= x"c581";
        wait for 2 ns;
        if S = x"d0db" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"db" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a586";
        B <= x"436e";
        wait for 2 ns;
        if S = x"e8f4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4bd0";
        B <= x"d3e1";
        wait for 2 ns;
        if S = x"1fb1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8536";
        B <= x"802f";
        wait for 2 ns;
        if S = x"0565" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"65" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6c33";
        B <= x"455d";
        wait for 2 ns;
        if S = x"b190" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"90" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2208";
        B <= x"e720";
        wait for 2 ns;
        if S = x"0928" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"28" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"34ad";
        B <= x"c7ea";
        wait for 2 ns;
        if S = x"fc97" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"97" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3e0c";
        B <= x"55e0";
        wait for 2 ns;
        if S = x"93ec" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ec" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"fd4e";
        B <= x"90fb";
        wait for 2 ns;
        if S = x"8e49" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"49" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"38f0";
        B <= x"f96d";
        wait for 2 ns;
        if S = x"325d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"5d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ace7";
        B <= x"f7ae";
        wait for 2 ns;
        if S = x"a495" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"95" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b486";
        B <= x"a2f9";
        wait for 2 ns;
        if S = x"577f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b6b9";
        B <= x"bbf2";
        wait for 2 ns;
        if S = x"72ab" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ab" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e87d";
        B <= x"e72c";
        wait for 2 ns;
        if S = x"cfa9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"50d8";
        B <= x"bcd3";
        wait for 2 ns;
        if S = x"0dab" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ab" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9e84";
        B <= x"ba37";
        wait for 2 ns;
        if S = x"58bb" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"bb" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"05be";
        B <= x"b1a7";
        wait for 2 ns;
        if S = x"b765" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"65" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6901";
        B <= x"278d";
        wait for 2 ns;
        if S = x"908e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"8e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"97b7";
        B <= x"6fcc";
        wait for 2 ns;
        if S = x"0783" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"83" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"471c";
        B <= x"c10f";
        wait for 2 ns;
        if S = x"082b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f226";
        B <= x"3925";
        wait for 2 ns;
        if S = x"2b4b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"4b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"10e8";
        B <= x"4886";
        wait for 2 ns;
        if S = x"596e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5e87";
        B <= x"e7d8";
        wait for 2 ns;
        if S = x"465f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"5f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"08ce";
        B <= x"c2a3";
        wait for 2 ns;
        if S = x"cb71" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"71" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f7ce";
        B <= x"a0a6";
        wait for 2 ns;
        if S = x"9874" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"74" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3ff9";
        B <= x"f092";
        wait for 2 ns;
        if S = x"308b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"8b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f7f4";
        B <= x"f1f2";
        wait for 2 ns;
        if S = x"e9e6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a209";
        B <= x"d392";
        wait for 2 ns;
        if S = x"759b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"313f";
        B <= x"6dcc";
        wait for 2 ns;
        if S = x"9f0b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"0b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"041a";
        B <= x"b68e";
        wait for 2 ns;
        if S = x"baa8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5e5b";
        B <= x"0c65";
        wait for 2 ns;
        if S = x"6ac0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"fbce";
        B <= x"10b9";
        wait for 2 ns;
        if S = x"0c87" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"87" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7481";
        B <= x"4027";
        wait for 2 ns;
        if S = x"b4a8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"84b0";
        B <= x"b506";
        wait for 2 ns;
        if S = x"39b6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4466";
        B <= x"d8c4";
        wait for 2 ns;
        if S = x"1d2a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9e3f";
        B <= x"ee34";
        wait for 2 ns;
        if S = x"8c73" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"73" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"de5f";
        B <= x"534b";
        wait for 2 ns;
        if S = x"31aa" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"aa" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"eae1";
        B <= x"a2b9";
        wait for 2 ns;
        if S = x"8d9a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4e32";
        B <= x"7f7e";
        wait for 2 ns;
        if S = x"cdb0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"fde2";
        B <= x"ffe4";
        wait for 2 ns;
        if S = x"fdc6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"84c4";
        B <= x"faee";
        wait for 2 ns;
        if S = x"7fb2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e9d9";
        B <= x"f998";
        wait for 2 ns;
        if S = x"e371" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"71" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5378";
        B <= x"0c3c";
        wait for 2 ns;
        if S = x"5fb4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1f62";
        B <= x"387c";
        wait for 2 ns;
        if S = x"57de" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"de" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2725";
        B <= x"d1ca";
        wait for 2 ns;
        if S = x"f8ef" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ef" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5c7e";
        B <= x"413f";
        wait for 2 ns;
        if S = x"9dbd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"bd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"fc6c";
        B <= x"953d";
        wait for 2 ns;
        if S = x"91a9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c65d";
        B <= x"d498";
        wait for 2 ns;
        if S = x"9af5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"00ea";
        B <= x"7ab8";
        wait for 2 ns;
        if S = x"7ba2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5223";
        B <= x"04f6";
        wait for 2 ns;
        if S = x"5719" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"19" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"fdd5";
        B <= x"5f40";
        wait for 2 ns;
        if S = x"5d15" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"15" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3245";
        B <= x"480e";
        wait for 2 ns;
        if S = x"7a53" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"53" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"39eb";
        B <= x"01e4";
        wait for 2 ns;
        if S = x"3bcf" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"cf" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8d1b";
        B <= x"f0d2";
        wait for 2 ns;
        if S = x"7ded" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ed" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4abc";
        B <= x"d8ce";
        wait for 2 ns;
        if S = x"238a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"8a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"69ad";
        B <= x"a45d";
        wait for 2 ns;
        if S = x"0e0a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"0a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"bc47";
        B <= x"6561";
        wait for 2 ns;
        if S = x"21a8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"24a2";
        B <= x"d1db";
        wait for 2 ns;
        if S = x"f67d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"efe3";
        B <= x"6598";
        wait for 2 ns;
        if S = x"557b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ae9c";
        B <= x"74ff";
        wait for 2 ns;
        if S = x"239b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4f19";
        B <= x"eea6";
        wait for 2 ns;
        if S = x"3dbf" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"bf" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8f7f";
        B <= x"afdd";
        wait for 2 ns;
        if S = x"3f5c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"5c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5f19";
        B <= x"5a5d";
        wait for 2 ns;
        if S = x"b976" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"76" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"fa9a";
        B <= x"3ea1";
        wait for 2 ns;
        if S = x"393b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"3b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"819d";
        B <= x"910b";
        wait for 2 ns;
        if S = x"12a8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e406";
        B <= x"6a01";
        wait for 2 ns;
        if S = x"4e07" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"07" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8c1d";
        B <= x"02da";
        wait for 2 ns;
        if S = x"8ef7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9b2d";
        B <= x"8a0d";
        wait for 2 ns;
        if S = x"253a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"3a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6d4c";
        B <= x"91cf";
        wait for 2 ns;
        if S = x"ff1b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"1b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"552e";
        B <= x"5750";
        wait for 2 ns;
        if S = x"ac7e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7535";
        B <= x"d974";
        wait for 2 ns;
        if S = x"4ea9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4e81";
        B <= x"60ec";
        wait for 2 ns;
        if S = x"af6d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b4ec";
        B <= x"4b3f";
        wait for 2 ns;
        if S = x"002b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2ffd";
        B <= x"c7d3";
        wait for 2 ns;
        if S = x"f7d0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"28e1";
        B <= x"d097";
        wait for 2 ns;
        if S = x"f978" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"78" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8383";
        B <= x"0a85";
        wait for 2 ns;
        if S = x"8e08" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"08" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2382";
        B <= x"f348";
        wait for 2 ns;
        if S = x"16ca" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ca" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"040d";
        B <= x"c814";
        wait for 2 ns;
        if S = x"cc21" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"21" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4b0b";
        B <= x"c748";
        wait for 2 ns;
        if S = x"1253" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"53" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"beb9";
        B <= x"1ee9";
        wait for 2 ns;
        if S = x"dda2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8853";
        B <= x"ad2d";
        wait for 2 ns;
        if S = x"3580" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"80" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"05c9";
        B <= x"f76e";
        wait for 2 ns;
        if S = x"fd37" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"37" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1246";
        B <= x"6420";
        wait for 2 ns;
        if S = x"7666" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"66" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ea2c";
        B <= x"f44d";
        wait for 2 ns;
        if S = x"de79" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"79" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9557";
        B <= x"ae2d";
        wait for 2 ns;
        if S = x"4384" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"84" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"050b";
        B <= x"01fe";
        wait for 2 ns;
        if S = x"0709" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"09" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"036c";
        B <= x"fbc0";
        wait for 2 ns;
        if S = x"ff2c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"66eb";
        B <= x"70bb";
        wait for 2 ns;
        if S = x"d7a6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e19a";
        B <= x"a906";
        wait for 2 ns;
        if S = x"8aa0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"eae5";
        B <= x"0a3a";
        wait for 2 ns;
        if S = x"f51f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"1f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3994";
        B <= x"f9f1";
        wait for 2 ns;
        if S = x"3385" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"85" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7adf";
        B <= x"caf4";
        wait for 2 ns;
        if S = x"45d3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"73e9";
        B <= x"3fca";
        wait for 2 ns;
        if S = x"b3b3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f208";
        B <= x"2cc0";
        wait for 2 ns;
        if S = x"1ec8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"20db";
        B <= x"bee7";
        wait for 2 ns;
        if S = x"dfc2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6e0e";
        B <= x"51ef";
        wait for 2 ns;
        if S = x"bffd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"fd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d1ce";
        B <= x"5ec9";
        wait for 2 ns;
        if S = x"3097" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"97" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"aeaf";
        B <= x"a48e";
        wait for 2 ns;
        if S = x"533d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"3d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"83df";
        B <= x"fdbe";
        wait for 2 ns;
        if S = x"819d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5b80";
        B <= x"fd80";
        wait for 2 ns;
        if S = x"5900" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"00" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a48b";
        B <= x"4c17";
        wait for 2 ns;
        if S = x"f0a2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"fd33";
        B <= x"792e";
        wait for 2 ns;
        if S = x"7661" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"61" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9195";
        B <= x"2086";
        wait for 2 ns;
        if S = x"b21b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"1b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0d80";
        B <= x"7a60";
        wait for 2 ns;
        if S = x"87e0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e008";
        B <= x"4a31";
        wait for 2 ns;
        if S = x"2a39" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"39" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0d09";
        B <= x"1d9a";
        wait for 2 ns;
        if S = x"2aa3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d173";
        B <= x"245e";
        wait for 2 ns;
        if S = x"f5d1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8a96";
        B <= x"ac62";
        wait for 2 ns;
        if S = x"36f8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6a3a";
        B <= x"5e79";
        wait for 2 ns;
        if S = x"c8b3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"fb62";
        B <= x"d16f";
        wait for 2 ns;
        if S = x"ccd1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"809e";
        B <= x"716a";
        wait for 2 ns;
        if S = x"f208" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"08" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c0bb";
        B <= x"065c";
        wait for 2 ns;
        if S = x"c717" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"17" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7608";
        B <= x"6e45";
        wait for 2 ns;
        if S = x"e44d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"4d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"60df";
        B <= x"fb7f";
        wait for 2 ns;
        if S = x"5c5e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"5e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5ba2";
        B <= x"75a2";
        wait for 2 ns;
        if S = x"d144" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"44" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"079f";
        B <= x"2b7f";
        wait for 2 ns;
        if S = x"331e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"1e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7bee";
        B <= x"0ecb";
        wait for 2 ns;
        if S = x"8ab9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9f3a";
        B <= x"0a24";
        wait for 2 ns;
        if S = x"a95e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"5e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"cde5";
        B <= x"f63d";
        wait for 2 ns;
        if S = x"c422" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"22" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"91ca";
        B <= x"5298";
        wait for 2 ns;
        if S = x"e462" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"62" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8121";
        B <= x"a7c2";
        wait for 2 ns;
        if S = x"28e3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"363e";
        B <= x"516e";
        wait for 2 ns;
        if S = x"87ac" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ac" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0753";
        B <= x"b667";
        wait for 2 ns;
        if S = x"bdba" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ba" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"efb2";
        B <= x"e05a";
        wait for 2 ns;
        if S = x"d00c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"0c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"778d";
        B <= x"d3f8";
        wait for 2 ns;
        if S = x"4b85" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"85" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a2de";
        B <= x"98f6";
        wait for 2 ns;
        if S = x"3bd4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e559";
        B <= x"9206";
        wait for 2 ns;
        if S = x"775f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"5f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e388";
        B <= x"8511";
        wait for 2 ns;
        if S = x"6899" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"99" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"39bc";
        B <= x"9ccf";
        wait for 2 ns;
        if S = x"d68b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"8b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e947";
        B <= x"34c2";
        wait for 2 ns;
        if S = x"1e09" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"09" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0156";
        B <= x"8bbe";
        wait for 2 ns;
        if S = x"8d14" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"14" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"514f";
        B <= x"b863";
        wait for 2 ns;
        if S = x"09b2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"793c";
        B <= x"bda7";
        wait for 2 ns;
        if S = x"36e3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3041";
        B <= x"4c9a";
        wait for 2 ns;
        if S = x"7cdb" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"db" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"11d1";
        B <= x"4812";
        wait for 2 ns;
        if S = x"59e3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"470b";
        B <= x"018a";
        wait for 2 ns;
        if S = x"4895" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"95" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c04a";
        B <= x"19b9";
        wait for 2 ns;
        if S = x"da03" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"03" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f4f7";
        B <= x"7108";
        wait for 2 ns;
        if S = x"65ff" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ff" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7fd1";
        B <= x"f567";
        wait for 2 ns;
        if S = x"7538" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"38" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9e21";
        B <= x"d83d";
        wait for 2 ns;
        if S = x"765e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"5e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f508";
        B <= x"94ce";
        wait for 2 ns;
        if S = x"89d6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"55be";
        B <= x"8e39";
        wait for 2 ns;
        if S = x"e3f7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"fa8c";
        B <= x"0a1b";
        wait for 2 ns;
        if S = x"04a7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e140";
        B <= x"eb94";
        wait for 2 ns;
        if S = x"ccd4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"10ad";
        B <= x"a30c";
        wait for 2 ns;
        if S = x"b3b9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"bc6d";
        B <= x"e963";
        wait for 2 ns;
        if S = x"a5d0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9de9";
        B <= x"e5c3";
        wait for 2 ns;
        if S = x"83ac" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ac" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a143";
        B <= x"6b60";
        wait for 2 ns;
        if S = x"0ca3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"cafb";
        B <= x"5f88";
        wait for 2 ns;
        if S = x"2a83" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"83" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f9ec";
        B <= x"e462";
        wait for 2 ns;
        if S = x"de4e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"4e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"abca";
        B <= x"e3b4";
        wait for 2 ns;
        if S = x"8f7e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a0db";
        B <= x"0c4e";
        wait for 2 ns;
        if S = x"ad29" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"29" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f47e";
        B <= x"8cca";
        wait for 2 ns;
        if S = x"8148" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"48" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0361";
        B <= x"c3f1";
        wait for 2 ns;
        if S = x"c752" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"52" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7847";
        B <= x"4fd2";
        wait for 2 ns;
        if S = x"c819" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"19" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8428";
        B <= x"7de8";
        wait for 2 ns;
        if S = x"0210" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"10" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"870c";
        B <= x"15e5";
        wait for 2 ns;
        if S = x"9cf1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"78ee";
        B <= x"182b";
        wait for 2 ns;
        if S = x"9119" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"19" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a83d";
        B <= x"015c";
        wait for 2 ns;
        if S = x"a999" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"99" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"60cb";
        B <= x"5d2f";
        wait for 2 ns;
        if S = x"bdfa" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"fa" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"fccc";
        B <= x"430e";
        wait for 2 ns;
        if S = x"3fda" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"da" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f6c1";
        B <= x"8341";
        wait for 2 ns;
        if S = x"7a02" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"02" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1bf6";
        B <= x"3d71";
        wait for 2 ns;
        if S = x"5967" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"67" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"eeb8";
        B <= x"c1d6";
        wait for 2 ns;
        if S = x"b08e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"8e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6da4";
        B <= x"0cd2";
        wait for 2 ns;
        if S = x"7a76" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"76" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ffee";
        B <= x"a2f2";
        wait for 2 ns;
        if S = x"a2e0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"fdbe";
        B <= x"4f3b";
        wait for 2 ns;
        if S = x"4cf9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0149";
        B <= x"3acd";
        wait for 2 ns;
        if S = x"3c16" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"16" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a755";
        B <= x"48b1";
        wait for 2 ns;
        if S = x"f006" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"06" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"93cf";
        B <= x"b9fd";
        wait for 2 ns;
        if S = x"4dcc" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"cc" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"85fd";
        B <= x"7a63";
        wait for 2 ns;
        if S = x"0060" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"60" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e301";
        B <= x"8cab";
        wait for 2 ns;
        if S = x"6fac" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ac" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1a15";
        B <= x"4cf0";
        wait for 2 ns;
        if S = x"6705" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"05" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ec0d";
        B <= x"3d0a";
        wait for 2 ns;
        if S = x"2917" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"17" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"607d";
        B <= x"b98f";
        wait for 2 ns;
        if S = x"1a0c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"0c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b505";
        B <= x"f689";
        wait for 2 ns;
        if S = x"ab8e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"8e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3ba2";
        B <= x"c1bf";
        wait for 2 ns;
        if S = x"fd61" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"61" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c3ef";
        B <= x"868b";
        wait for 2 ns;
        if S = x"4a7a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1f61";
        B <= x"310f";
        wait for 2 ns;
        if S = x"5070" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"70" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7942";
        B <= x"0c0b";
        wait for 2 ns;
        if S = x"854d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"4d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"bcaa";
        B <= x"1cc3";
        wait for 2 ns;
        if S = x"d96d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8643";
        B <= x"ce86";
        wait for 2 ns;
        if S = x"54c9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e540";
        B <= x"095b";
        wait for 2 ns;
        if S = x"ee9b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a091";
        B <= x"8f3e";
        wait for 2 ns;
        if S = x"2fcf" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"cf" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c3c1";
        B <= x"5c92";
        wait for 2 ns;
        if S = x"2053" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"53" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9519";
        B <= x"4503";
        wait for 2 ns;
        if S = x"da1c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"1c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1037";
        B <= x"ac96";
        wait for 2 ns;
        if S = x"bccd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"cd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f9f4";
        B <= x"abbd";
        wait for 2 ns;
        if S = x"a5b1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1ddf";
        B <= x"06f7";
        wait for 2 ns;
        if S = x"24d6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ad3f";
        B <= x"2e4d";
        wait for 2 ns;
        if S = x"db8c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"8c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2091";
        B <= x"298b";
        wait for 2 ns;
        if S = x"4a1c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"1c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"93c0";
        B <= x"b21e";
        wait for 2 ns;
        if S = x"45de" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"de" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1603";
        B <= x"6c89";
        wait for 2 ns;
        if S = x"828c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"8c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c724";
        B <= x"fa3d";
        wait for 2 ns;
        if S = x"c161" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"61" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a23f";
        B <= x"6191";
        wait for 2 ns;
        if S = x"03d0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1dd4";
        B <= x"168f";
        wait for 2 ns;
        if S = x"3463" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"63" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8b08";
        B <= x"9b25";
        wait for 2 ns;
        if S = x"262d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ecaf";
        B <= x"f396";
        wait for 2 ns;
        if S = x"e045" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"45" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3ddc";
        B <= x"1b15";
        wait for 2 ns;
        if S = x"58f1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f086";
        B <= x"dcf4";
        wait for 2 ns;
        if S = x"cd7a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"53ba";
        B <= x"4e74";
        wait for 2 ns;
        if S = x"a22e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1e84";
        B <= x"8b2e";
        wait for 2 ns;
        if S = x"a9b2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e0f5";
        B <= x"99e8";
        wait for 2 ns;
        if S = x"7add" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"dd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"162d";
        B <= x"40a7";
        wait for 2 ns;
        if S = x"56d4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8306";
        B <= x"e5b5";
        wait for 2 ns;
        if S = x"68bb" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"bb" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5c9b";
        B <= x"aeed";
        wait for 2 ns;
        if S = x"0b88" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"88" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5fef";
        B <= x"7176";
        wait for 2 ns;
        if S = x"d165" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"65" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5539";
        B <= x"7a17";
        wait for 2 ns;
        if S = x"cf50" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"50" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7525";
        B <= x"f5fc";
        wait for 2 ns;
        if S = x"6b21" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"21" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0fdb";
        B <= x"056f";
        wait for 2 ns;
        if S = x"154a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"4a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e0b6";
        B <= x"90e1";
        wait for 2 ns;
        if S = x"7197" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"97" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"bc5c";
        B <= x"4a5a";
        wait for 2 ns;
        if S = x"06b6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a854";
        B <= x"fa2b";
        wait for 2 ns;
        if S = x"a27f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4c37";
        B <= x"c927";
        wait for 2 ns;
        if S = x"155e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"5e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3be9";
        B <= x"b4e3";
        wait for 2 ns;
        if S = x"f0cc" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"cc" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"dd9c";
        B <= x"608d";
        wait for 2 ns;
        if S = x"3e29" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"29" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c3af";
        B <= x"61c4";
        wait for 2 ns;
        if S = x"2573" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"73" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d0e5";
        B <= x"1861";
        wait for 2 ns;
        if S = x"e946" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"46" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e7c2";
        B <= x"e594";
        wait for 2 ns;
        if S = x"cd56" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"56" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"48fe";
        B <= x"91ff";
        wait for 2 ns;
        if S = x"dafd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"fd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"31fe";
        B <= x"1c88";
        wait for 2 ns;
        if S = x"4e86" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"86" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"702a";
        B <= x"4ee8";
        wait for 2 ns;
        if S = x"bf12" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"12" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"239a";
        B <= x"ff57";
        wait for 2 ns;
        if S = x"22f1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"bbee";
        B <= x"39f5";
        wait for 2 ns;
        if S = x"f5e3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0c1c";
        B <= x"b63a";
        wait for 2 ns;
        if S = x"c256" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"56" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3e86";
        B <= x"2346";
        wait for 2 ns;
        if S = x"61cc" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"cc" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0a00";
        B <= x"077c";
        wait for 2 ns;
        if S = x"117c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"73ac";
        B <= x"8899";
        wait for 2 ns;
        if S = x"fc45" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"45" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c55a";
        B <= x"82a6";
        wait for 2 ns;
        if S = x"4800" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"00" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c160";
        B <= x"b0b4";
        wait for 2 ns;
        if S = x"7214" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"14" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"af64";
        B <= x"51da";
        wait for 2 ns;
        if S = x"013e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"3e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"40bc";
        B <= x"e767";
        wait for 2 ns;
        if S = x"2823" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"23" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7c2f";
        B <= x"fd29";
        wait for 2 ns;
        if S = x"7958" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"58" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0a96";
        B <= x"8947";
        wait for 2 ns;
        if S = x"93dd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"dd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"bb11";
        B <= x"4126";
        wait for 2 ns;
        if S = x"fc37" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"37" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"016f";
        B <= x"6f80";
        wait for 2 ns;
        if S = x"70ef" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ef" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"889c";
        B <= x"74d2";
        wait for 2 ns;
        if S = x"fd6e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"921e";
        B <= x"18f4";
        wait for 2 ns;
        if S = x"ab12" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"12" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6879";
        B <= x"70dd";
        wait for 2 ns;
        if S = x"d956" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"56" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3d75";
        B <= x"1210";
        wait for 2 ns;
        if S = x"4f85" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"85" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8acf";
        B <= x"94f4";
        wait for 2 ns;
        if S = x"1fc3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9d36";
        B <= x"052b";
        wait for 2 ns;
        if S = x"a261" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"61" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5ea3";
        B <= x"0a3c";
        wait for 2 ns;
        if S = x"68df" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"df" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1f79";
        B <= x"f8f8";
        wait for 2 ns;
        if S = x"1871" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"71" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2412";
        B <= x"c6a5";
        wait for 2 ns;
        if S = x"eab7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"37ab";
        B <= x"303d";
        wait for 2 ns;
        if S = x"67e8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6235";
        B <= x"a939";
        wait for 2 ns;
        if S = x"0b6e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c485";
        B <= x"9ca6";
        wait for 2 ns;
        if S = x"612b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2dc4";
        B <= x"e838";
        wait for 2 ns;
        if S = x"15fc" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"fc" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"381c";
        B <= x"3925";
        wait for 2 ns;
        if S = x"7141" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"41" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"185a";
        B <= x"1cdd";
        wait for 2 ns;
        if S = x"3537" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"37" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b925";
        B <= x"69f5";
        wait for 2 ns;
        if S = x"231a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"1a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"306a";
        B <= x"c39d";
        wait for 2 ns;
        if S = x"f407" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"07" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"80b1";
        B <= x"2ea0";
        wait for 2 ns;
        if S = x"af51" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"51" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8faa";
        B <= x"20c6";
        wait for 2 ns;
        if S = x"b070" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"70" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"42f7";
        B <= x"b5c3";
        wait for 2 ns;
        if S = x"f8ba" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ba" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"702f";
        B <= x"1092";
        wait for 2 ns;
        if S = x"80c1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3835";
        B <= x"f40f";
        wait for 2 ns;
        if S = x"2c44" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"44" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5878";
        B <= x"7da3";
        wait for 2 ns;
        if S = x"d61b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"1b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"022c";
        B <= x"6221";
        wait for 2 ns;
        if S = x"644d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"4d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"988c";
        B <= x"18a0";
        wait for 2 ns;
        if S = x"b12c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"70f5";
        B <= x"1059";
        wait for 2 ns;
        if S = x"814e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"4e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d432";
        B <= x"be23";
        wait for 2 ns;
        if S = x"9255" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"55" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"dae1";
        B <= x"80cb";
        wait for 2 ns;
        if S = x"5bac" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ac" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ae1e";
        B <= x"d1c5";
        wait for 2 ns;
        if S = x"7fe3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5da8";
        B <= x"c56f";
        wait for 2 ns;
        if S = x"2317" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"17" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e993";
        B <= x"e84f";
        wait for 2 ns;
        if S = x"d1e2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1bcc";
        B <= x"b93a";
        wait for 2 ns;
        if S = x"d506" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"06" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"edb3";
        B <= x"9733";
        wait for 2 ns;
        if S = x"84e6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"554f";
        B <= x"76f4";
        wait for 2 ns;
        if S = x"cc43" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"43" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"209c";
        B <= x"a0d9";
        wait for 2 ns;
        if S = x"c175" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"75" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"58c9";
        B <= x"18e1";
        wait for 2 ns;
        if S = x"71aa" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"aa" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d528";
        B <= x"f5b5";
        wait for 2 ns;
        if S = x"cadd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"dd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"aa34";
        B <= x"7e10";
        wait for 2 ns;
        if S = x"2844" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"44" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0042";
        B <= x"e3ac";
        wait for 2 ns;
        if S = x"e3ee" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ee" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"fb85";
        B <= x"dab9";
        wait for 2 ns;
        if S = x"d63e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"3e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9b3b";
        B <= x"ea38";
        wait for 2 ns;
        if S = x"8573" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"73" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"816e";
        B <= x"4cdd";
        wait for 2 ns;
        if S = x"ce4b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"4b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"46fd";
        B <= x"3871";
        wait for 2 ns;
        if S = x"7f6e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e1e6";
        B <= x"4d1f";
        wait for 2 ns;
        if S = x"2f05" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"05" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d8da";
        B <= x"d7ae";
        wait for 2 ns;
        if S = x"b088" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"88" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b2fd";
        B <= x"6c26";
        wait for 2 ns;
        if S = x"1f23" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"23" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7265";
        B <= x"b602";
        wait for 2 ns;
        if S = x"2867" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"67" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4b36";
        B <= x"e660";
        wait for 2 ns;
        if S = x"3196" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"96" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4f6d";
        B <= x"0144";
        wait for 2 ns;
        if S = x"50b1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"54f3";
        B <= x"dd01";
        wait for 2 ns;
        if S = x"31f4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c2dc";
        B <= x"64c1";
        wait for 2 ns;
        if S = x"279d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1479";
        B <= x"3f6f";
        wait for 2 ns;
        if S = x"53e8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6d4c";
        B <= x"fb9a";
        wait for 2 ns;
        if S = x"68e6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c9ed";
        B <= x"0c19";
        wait for 2 ns;
        if S = x"d606" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"06" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9fa5";
        B <= x"70f8";
        wait for 2 ns;
        if S = x"109d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6285";
        B <= x"7caa";
        wait for 2 ns;
        if S = x"df2f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"99f8";
        B <= x"15af";
        wait for 2 ns;
        if S = x"afa7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a7" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0eee";
        B <= x"e3ff";
        wait for 2 ns;
        if S = x"f2ed" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ed" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d953";
        B <= x"09d7";
        wait for 2 ns;
        if S = x"e32a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b4be";
        B <= x"63f5";
        wait for 2 ns;
        if S = x"18b3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"bf6b";
        B <= x"3396";
        wait for 2 ns;
        if S = x"f301" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"01" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"cd5e";
        B <= x"a815";
        wait for 2 ns;
        if S = x"7573" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"73" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"cd88";
        B <= x"af8e";
        wait for 2 ns;
        if S = x"7d16" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"16" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"dddc";
        B <= x"e405";
        wait for 2 ns;
        if S = x"c1e1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d347";
        B <= x"6019";
        wait for 2 ns;
        if S = x"3360" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"60" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3ea6";
        B <= x"1753";
        wait for 2 ns;
        if S = x"55f9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c318";
        B <= x"38bc";
        wait for 2 ns;
        if S = x"fbd4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c186";
        B <= x"761e";
        wait for 2 ns;
        if S = x"37a4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"518f";
        B <= x"e941";
        wait for 2 ns;
        if S = x"3ad0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"87cb";
        B <= x"5d97";
        wait for 2 ns;
        if S = x"e562" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"62" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"835b";
        B <= x"c491";
        wait for 2 ns;
        if S = x"47ec" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ec" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f63e";
        B <= x"5e4a";
        wait for 2 ns;
        if S = x"5488" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"88" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3cbd";
        B <= x"d18a";
        wait for 2 ns;
        if S = x"0e47" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"47" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"18ba";
        B <= x"5e70";
        wait for 2 ns;
        if S = x"772a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"da1f";
        B <= x"d6fa";
        wait for 2 ns;
        if S = x"b119" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"19" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9418";
        B <= x"230e";
        wait for 2 ns;
        if S = x"b726" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"26" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d26f";
        B <= x"5883";
        wait for 2 ns;
        if S = x"2af2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4b66";
        B <= x"d22a";
        wait for 2 ns;
        if S = x"1d90" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"90" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"bb0f";
        B <= x"5b3a";
        wait for 2 ns;
        if S = x"1649" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"49" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"24e6";
        B <= x"8fa2";
        wait for 2 ns;
        if S = x"b488" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"88" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"56e5";
        B <= x"e6b4";
        wait for 2 ns;
        if S = x"3d99" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"99" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ee46";
        B <= x"78bc";
        wait for 2 ns;
        if S = x"6702" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"02" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"bfcb";
        B <= x"1e3a";
        wait for 2 ns;
        if S = x"de05" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"05" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"90ca";
        B <= x"c25e";
        wait for 2 ns;
        if S = x"5328" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"28" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"df09";
        B <= x"bd41";
        wait for 2 ns;
        if S = x"9c4a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"4a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"dbff";
        B <= x"5f37";
        wait for 2 ns;
        if S = x"3b36" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"36" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b218";
        B <= x"fc26";
        wait for 2 ns;
        if S = x"ae3e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"3e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2e74";
        B <= x"b82c";
        wait for 2 ns;
        if S = x"e6a0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"273f";
        B <= x"5eb3";
        wait for 2 ns;
        if S = x"85f2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2b8a";
        B <= x"3a48";
        wait for 2 ns;
        if S = x"65d2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ed5f";
        B <= x"f333";
        wait for 2 ns;
        if S = x"e092" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"92" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"03fa";
        B <= x"9a56";
        wait for 2 ns;
        if S = x"9e50" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"50" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1070";
        B <= x"0fa7";
        wait for 2 ns;
        if S = x"2017" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"17" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0504";
        B <= x"a26b";
        wait for 2 ns;
        if S = x"a76f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7dd3";
        B <= x"e05b";
        wait for 2 ns;
        if S = x"5e2e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"64a1";
        B <= x"8f80";
        wait for 2 ns;
        if S = x"f421" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"21" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e98e";
        B <= x"4bfd";
        wait for 2 ns;
        if S = x"358b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"8b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f4a1";
        B <= x"913d";
        wait for 2 ns;
        if S = x"85de" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"de" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9129";
        B <= x"66d6";
        wait for 2 ns;
        if S = x"f7ff" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ff" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"be87";
        B <= x"2285";
        wait for 2 ns;
        if S = x"e10c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"0c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"fa20";
        B <= x"8af6";
        wait for 2 ns;
        if S = x"8516" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"16" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"dda9";
        B <= x"53f6";
        wait for 2 ns;
        if S = x"319f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1a0f";
        B <= x"f2a5";
        wait for 2 ns;
        if S = x"0cb4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6b58";
        B <= x"6a88";
        wait for 2 ns;
        if S = x"d5e0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7881";
        B <= x"9b24";
        wait for 2 ns;
        if S = x"13a5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3d08";
        B <= x"5c54";
        wait for 2 ns;
        if S = x"995c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"5c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3f93";
        B <= x"04b8";
        wait for 2 ns;
        if S = x"444b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"4b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"66cd";
        B <= x"43e5";
        wait for 2 ns;
        if S = x"aab2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7c67";
        B <= x"5d44";
        wait for 2 ns;
        if S = x"d9ab" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ab" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1d5c";
        B <= x"47d3";
        wait for 2 ns;
        if S = x"652f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9d3b";
        B <= x"9aaf";
        wait for 2 ns;
        if S = x"37ea" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ea" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6bbc";
        B <= x"decd";
        wait for 2 ns;
        if S = x"4a89" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"89" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f82f";
        B <= x"bc9f";
        wait for 2 ns;
        if S = x"b4ce" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ce" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"80db";
        B <= x"6dbb";
        wait for 2 ns;
        if S = x"ee96" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"96" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3270";
        B <= x"ab59";
        wait for 2 ns;
        if S = x"ddc9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"817b";
        B <= x"c224";
        wait for 2 ns;
        if S = x"439f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"abd4";
        B <= x"f669";
        wait for 2 ns;
        if S = x"a23d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"3d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"07b1";
        B <= x"2ef3";
        wait for 2 ns;
        if S = x"36a4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"245c";
        B <= x"a9c5";
        wait for 2 ns;
        if S = x"ce21" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"21" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"24b6";
        B <= x"fb08";
        wait for 2 ns;
        if S = x"1fbe" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"be" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3c9c";
        B <= x"0091";
        wait for 2 ns;
        if S = x"3d2d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e3de";
        B <= x"5333";
        wait for 2 ns;
        if S = x"3711" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"11" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c8d9";
        B <= x"48cb";
        wait for 2 ns;
        if S = x"11a4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5aa6";
        B <= x"b5b3";
        wait for 2 ns;
        if S = x"1059" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"59" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"cbef";
        B <= x"ff94";
        wait for 2 ns;
        if S = x"cb83" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"83" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a805";
        B <= x"4ef8";
        wait for 2 ns;
        if S = x"f6fd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"fd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"106e";
        B <= x"d5b3";
        wait for 2 ns;
        if S = x"e621" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"21" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"01ad";
        B <= x"a6ce";
        wait for 2 ns;
        if S = x"a87b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"cab2";
        B <= x"8a88";
        wait for 2 ns;
        if S = x"553a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"3a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8179";
        B <= x"de66";
        wait for 2 ns;
        if S = x"5fdf" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"df" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9282";
        B <= x"6ff0";
        wait for 2 ns;
        if S = x"0272" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"72" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5e10";
        B <= x"1830";
        wait for 2 ns;
        if S = x"7640" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"40" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"784b";
        B <= x"2454";
        wait for 2 ns;
        if S = x"9c9f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8d32";
        B <= x"ac11";
        wait for 2 ns;
        if S = x"3943" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"43" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"18b9";
        B <= x"588c";
        wait for 2 ns;
        if S = x"7145" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"45" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"aa67";
        B <= x"b2af";
        wait for 2 ns;
        if S = x"5d16" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"16" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"bf69";
        B <= x"8838";
        wait for 2 ns;
        if S = x"47a1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6c38";
        B <= x"2163";
        wait for 2 ns;
        if S = x"8d9b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7ac3";
        B <= x"1bcd";
        wait for 2 ns;
        if S = x"9690" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"90" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1bf1";
        B <= x"e241";
        wait for 2 ns;
        if S = x"fe32" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"32" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2463";
        B <= x"3736";
        wait for 2 ns;
        if S = x"5b99" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"99" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c29c";
        B <= x"57c9";
        wait for 2 ns;
        if S = x"1a65" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"65" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1c35";
        B <= x"00f8";
        wait for 2 ns;
        if S = x"1d2d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6cb8";
        B <= x"1aea";
        wait for 2 ns;
        if S = x"87a2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e58f";
        B <= x"405c";
        wait for 2 ns;
        if S = x"25eb" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"eb" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d454";
        B <= x"9a55";
        wait for 2 ns;
        if S = x"6ea9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4438";
        B <= x"9976";
        wait for 2 ns;
        if S = x"ddae" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ae" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8e8a";
        B <= x"aa82";
        wait for 2 ns;
        if S = x"390c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"0c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"dbb9";
        B <= x"b475";
        wait for 2 ns;
        if S = x"902e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"13ba";
        B <= x"c2b8";
        wait for 2 ns;
        if S = x"d672" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"72" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"603e";
        B <= x"3385";
        wait for 2 ns;
        if S = x"93c3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6543";
        B <= x"02d8";
        wait for 2 ns;
        if S = x"681b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"1b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"984e";
        B <= x"dd43";
        wait for 2 ns;
        if S = x"7591" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"91" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"10ab";
        B <= x"504b";
        wait for 2 ns;
        if S = x"60f6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7b6f";
        B <= x"9e2c";
        wait for 2 ns;
        if S = x"199b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"406c";
        B <= x"fefa";
        wait for 2 ns;
        if S = x"3f66" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"66" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"051f";
        B <= x"5d41";
        wait for 2 ns;
        if S = x"6260" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"60" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a554";
        B <= x"3cb3";
        wait for 2 ns;
        if S = x"e207" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"07" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"23d4";
        B <= x"8eb4";
        wait for 2 ns;
        if S = x"b288" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"88" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"add0";
        B <= x"d7fa";
        wait for 2 ns;
        if S = x"85ca" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ca" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ec0a";
        B <= x"1c01";
        wait for 2 ns;
        if S = x"080b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"0b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"454d";
        B <= x"bb74";
        wait for 2 ns;
        if S = x"00c1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3359";
        B <= x"5960";
        wait for 2 ns;
        if S = x"8cb9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"94b9";
        B <= x"f376";
        wait for 2 ns;
        if S = x"882f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0fd5";
        B <= x"3720";
        wait for 2 ns;
        if S = x"46f5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5a1f";
        B <= x"167b";
        wait for 2 ns;
        if S = x"709a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"57be";
        B <= x"14d8";
        wait for 2 ns;
        if S = x"6c96" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"96" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"eaaa";
        B <= x"696a";
        wait for 2 ns;
        if S = x"5414" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"14" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c478";
        B <= x"fa88";
        wait for 2 ns;
        if S = x"bf00" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"00" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e5cd";
        B <= x"d853";
        wait for 2 ns;
        if S = x"be20" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"20" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"20b8";
        B <= x"e391";
        wait for 2 ns;
        if S = x"0449" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"49" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f1af";
        B <= x"f8ab";
        wait for 2 ns;
        if S = x"ea5a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"5a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"db34";
        B <= x"29dc";
        wait for 2 ns;
        if S = x"0510" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"10" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d516";
        B <= x"3423";
        wait for 2 ns;
        if S = x"0939" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"39" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"bd9b";
        B <= x"2c33";
        wait for 2 ns;
        if S = x"e9ce" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ce" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"07b6";
        B <= x"a3b6";
        wait for 2 ns;
        if S = x"ab6c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f3af";
        B <= x"16d3";
        wait for 2 ns;
        if S = x"0a82" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"82" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c773";
        B <= x"e7bb";
        wait for 2 ns;
        if S = x"af2e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2edd";
        B <= x"3e9c";
        wait for 2 ns;
        if S = x"6d79" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"79" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"eb47";
        B <= x"15aa";
        wait for 2 ns;
        if S = x"00f1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8f02";
        B <= x"e71f";
        wait for 2 ns;
        if S = x"7621" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"21" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"bf7c";
        B <= x"d708";
        wait for 2 ns;
        if S = x"9684" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"84" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"dfcf";
        B <= x"63bc";
        wait for 2 ns;
        if S = x"438b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"8b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5c13";
        B <= x"4b98";
        wait for 2 ns;
        if S = x"a7ab" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ab" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5048";
        B <= x"28b6";
        wait for 2 ns;
        if S = x"78fe" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"fe" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"77c1";
        B <= x"5aae";
        wait for 2 ns;
        if S = x"d26f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9e42";
        B <= x"5088";
        wait for 2 ns;
        if S = x"eeca" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ca" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9ab4";
        B <= x"5f05";
        wait for 2 ns;
        if S = x"f9b9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a803";
        B <= x"6d1d";
        wait for 2 ns;
        if S = x"1520" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"20" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5efb";
        B <= x"795a";
        wait for 2 ns;
        if S = x"d855" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"55" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5ee4";
        B <= x"6f1d";
        wait for 2 ns;
        if S = x"ce01" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"01" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4890";
        B <= x"2508";
        wait for 2 ns;
        if S = x"6d98" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"98" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3da4";
        B <= x"deb4";
        wait for 2 ns;
        if S = x"1c58" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"58" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c68b";
        B <= x"f971";
        wait for 2 ns;
        if S = x"bffc" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"fc" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"103d";
        B <= x"c133";
        wait for 2 ns;
        if S = x"d170" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"70" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2814";
        B <= x"e360";
        wait for 2 ns;
        if S = x"0b74" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"74" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1588";
        B <= x"b9f1";
        wait for 2 ns;
        if S = x"cf79" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"79" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"fc96";
        B <= x"f529";
        wait for 2 ns;
        if S = x"f1bf" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"bf" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"811f";
        B <= x"ffbc";
        wait for 2 ns;
        if S = x"80db" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"db" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"42a3";
        B <= x"8366";
        wait for 2 ns;
        if S = x"c609" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"09" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8555";
        B <= x"6376";
        wait for 2 ns;
        if S = x"e8cb" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"cb" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5737";
        B <= x"e1e1";
        wait for 2 ns;
        if S = x"3918" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"18" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ecc8";
        B <= x"ccc3";
        wait for 2 ns;
        if S = x"b98b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"8b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8ccb";
        B <= x"22ce";
        wait for 2 ns;
        if S = x"af99" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"99" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"988a";
        B <= x"089c";
        wait for 2 ns;
        if S = x"a126" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"26" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2209";
        B <= x"aac1";
        wait for 2 ns;
        if S = x"ccca" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ca" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f892";
        B <= x"b0ad";
        wait for 2 ns;
        if S = x"a93f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"3f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4f57";
        B <= x"5337";
        wait for 2 ns;
        if S = x"a28e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"8e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b282";
        B <= x"1284";
        wait for 2 ns;
        if S = x"c506" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"06" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"40ce";
        B <= x"d231";
        wait for 2 ns;
        if S = x"12ff" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ff" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e026";
        B <= x"6528";
        wait for 2 ns;
        if S = x"454e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"4e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"24c8";
        B <= x"7ef2";
        wait for 2 ns;
        if S = x"a3ba" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ba" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5edc";
        B <= x"2b5d";
        wait for 2 ns;
        if S = x"8a39" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"39" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"176b";
        B <= x"a7a0";
        wait for 2 ns;
        if S = x"bf0b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"0b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ca67";
        B <= x"ebeb";
        wait for 2 ns;
        if S = x"b652" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"52" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"be70";
        B <= x"ff12";
        wait for 2 ns;
        if S = x"bd82" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"82" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"19f3";
        B <= x"5d77";
        wait for 2 ns;
        if S = x"776a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3bda";
        B <= x"1b3f";
        wait for 2 ns;
        if S = x"5719" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"19" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"794f";
        B <= x"acf3";
        wait for 2 ns;
        if S = x"2642" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"42" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e7d6";
        B <= x"131f";
        wait for 2 ns;
        if S = x"faf5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1741";
        B <= x"094e";
        wait for 2 ns;
        if S = x"208f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"8f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"afe2";
        B <= x"b3b9";
        wait for 2 ns;
        if S = x"639b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7709";
        B <= x"1cc2";
        wait for 2 ns;
        if S = x"93cb" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"cb" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0874";
        B <= x"65e7";
        wait for 2 ns;
        if S = x"6e5b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"5b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"83e9";
        B <= x"f9b2";
        wait for 2 ns;
        if S = x"7d9b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"547d";
        B <= x"5378";
        wait for 2 ns;
        if S = x"a7f5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9246";
        B <= x"9dc1";
        wait for 2 ns;
        if S = x"3007" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"07" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"79e3";
        B <= x"dea3";
        wait for 2 ns;
        if S = x"5886" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"86" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a34f";
        B <= x"4244";
        wait for 2 ns;
        if S = x"e593" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"93" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b495";
        B <= x"413a";
        wait for 2 ns;
        if S = x"f5cf" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"cf" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d609";
        B <= x"460c";
        wait for 2 ns;
        if S = x"1c15" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"15" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1806";
        B <= x"b5e9";
        wait for 2 ns;
        if S = x"cdef" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ef" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"45b2";
        B <= x"37c0";
        wait for 2 ns;
        if S = x"7d72" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"72" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"930c";
        B <= x"4856";
        wait for 2 ns;
        if S = x"db62" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"62" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"db35";
        B <= x"f852";
        wait for 2 ns;
        if S = x"d387" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"87" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"de25";
        B <= x"c60b";
        wait for 2 ns;
        if S = x"a430" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"30" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5b45";
        B <= x"d349";
        wait for 2 ns;
        if S = x"2e8e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"8e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4632";
        B <= x"633e";
        wait for 2 ns;
        if S = x"a970" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"70" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b6ce";
        B <= x"787e";
        wait for 2 ns;
        if S = x"2f4c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"4c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9422";
        B <= x"4687";
        wait for 2 ns;
        if S = x"daa9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"acb7";
        B <= x"18cf";
        wait for 2 ns;
        if S = x"c586" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"86" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ec1b";
        B <= x"0f15";
        wait for 2 ns;
        if S = x"fb30" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"30" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1c6b";
        B <= x"ee0a";
        wait for 2 ns;
        if S = x"0a75" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"75" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"012d";
        B <= x"b96f";
        wait for 2 ns;
        if S = x"ba9c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"14b0";
        B <= x"2cfe";
        wait for 2 ns;
        if S = x"41ae" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ae" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8cb0";
        B <= x"a360";
        wait for 2 ns;
        if S = x"3010" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"10" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3d7b";
        B <= x"c109";
        wait for 2 ns;
        if S = x"fe84" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"84" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"24b1";
        B <= x"b7a5";
        wait for 2 ns;
        if S = x"dc56" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"56" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0946";
        B <= x"d98d";
        wait for 2 ns;
        if S = x"e2d3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7fb3";
        B <= x"8a66";
        wait for 2 ns;
        if S = x"0a19" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"19" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7d4a";
        B <= x"ba42";
        wait for 2 ns;
        if S = x"378c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"8c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8fec";
        B <= x"776b";
        wait for 2 ns;
        if S = x"0757" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"57" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1d87";
        B <= x"57f2";
        wait for 2 ns;
        if S = x"7579" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"79" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"04a1";
        B <= x"a251";
        wait for 2 ns;
        if S = x"a6f2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2a9e";
        B <= x"cf7d";
        wait for 2 ns;
        if S = x"fa1b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"1b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"88ad";
        B <= x"4a16";
        wait for 2 ns;
        if S = x"d2c3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8122";
        B <= x"fdc9";
        wait for 2 ns;
        if S = x"7eeb" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"eb" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d5e1";
        B <= x"b626";
        wait for 2 ns;
        if S = x"8c07" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"07" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5114";
        B <= x"9a64";
        wait for 2 ns;
        if S = x"eb78" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"78" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"fd2e";
        B <= x"c4c8";
        wait for 2 ns;
        if S = x"c1f6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c456";
        B <= x"8190";
        wait for 2 ns;
        if S = x"45e6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"eb80";
        B <= x"d9a7";
        wait for 2 ns;
        if S = x"c527" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"27" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"119e";
        B <= x"573c";
        wait for 2 ns;
        if S = x"68da" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"da" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"548c";
        B <= x"d663";
        wait for 2 ns;
        if S = x"2aef" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ef" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"995d";
        B <= x"8e54";
        wait for 2 ns;
        if S = x"27b1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6c81";
        B <= x"c4c0";
        wait for 2 ns;
        if S = x"3141" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"41" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ad34";
        B <= x"4936";
        wait for 2 ns;
        if S = x"f66a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"87c1";
        B <= x"4cd6";
        wait for 2 ns;
        if S = x"d497" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"97" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5674";
        B <= x"dcf4";
        wait for 2 ns;
        if S = x"3368" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"68" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d745";
        B <= x"a5e5";
        wait for 2 ns;
        if S = x"7d2a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0bc0";
        B <= x"4a69";
        wait for 2 ns;
        if S = x"5629" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"29" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"db9d";
        B <= x"e7d1";
        wait for 2 ns;
        if S = x"c36e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4a9a";
        B <= x"0a48";
        wait for 2 ns;
        if S = x"54e2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3324";
        B <= x"60e6";
        wait for 2 ns;
        if S = x"940a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"0a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2374";
        B <= x"a332";
        wait for 2 ns;
        if S = x"c6a6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"bc27";
        B <= x"0569";
        wait for 2 ns;
        if S = x"c190" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"90" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"62d2";
        B <= x"c4e2";
        wait for 2 ns;
        if S = x"27b4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b4" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8ed0";
        B <= x"4d3b";
        wait for 2 ns;
        if S = x"dc0b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"0b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e7f9";
        B <= x"38c3";
        wait for 2 ns;
        if S = x"20bc" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"bc" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"17fd";
        B <= x"6a5b";
        wait for 2 ns;
        if S = x"8258" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"58" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a431";
        B <= x"85f4";
        wait for 2 ns;
        if S = x"2a25" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"25" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2c69";
        B <= x"2cd1";
        wait for 2 ns;
        if S = x"593a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"3a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"67d6";
        B <= x"187e";
        wait for 2 ns;
        if S = x"8054" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"54" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3044";
        B <= x"8505";
        wait for 2 ns;
        if S = x"b549" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"49" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"51fd";
        B <= x"0be1";
        wait for 2 ns;
        if S = x"5dde" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"de" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"866b";
        B <= x"ff72";
        wait for 2 ns;
        if S = x"85dd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"dd" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9471";
        B <= x"a4dd";
        wait for 2 ns;
        if S = x"394e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"4e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ed9b";
        B <= x"c2c3";
        wait for 2 ns;
        if S = x"b05e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"5e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1dad";
        B <= x"0181";
        wait for 2 ns;
        if S = x"1f2e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2e" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f43f";
        B <= x"3677";
        wait for 2 ns;
        if S = x"2ab6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b6" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"3f02";
        B <= x"a5d1";
        wait for 2 ns;
        if S = x"e4d3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"dac2";
        B <= x"d098";
        wait for 2 ns;
        if S = x"ab5a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"5a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"373b";
        B <= x"4fcb";
        wait for 2 ns;
        if S = x"8706" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"06" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9359";
        B <= x"aa1f";
        wait for 2 ns;
        if S = x"3d78" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"78" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7d61";
        B <= x"cb2f";
        wait for 2 ns;
        if S = x"4890" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"90" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b396";
        B <= x"37dd";
        wait for 2 ns;
        if S = x"eb73" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"73" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7675";
        B <= x"b659";
        wait for 2 ns;
        if S = x"2cce" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"ce" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f573";
        B <= x"1665";
        wait for 2 ns;
        if S = x"0bd8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"d8" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2ddf";
        B <= x"d66a";
        wait for 2 ns;
        if S = x"0449" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"49" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1e99";
        B <= x"af1c";
        wait for 2 ns;
        if S = x"cdb5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"b5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4d55";
        B <= x"d7dd";
        wait for 2 ns;
        if S = x"2532" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"32" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c2db";
        B <= x"cc94";
        wait for 2 ns;
        if S = x"8f6f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a5d5";
        B <= x"66a3";
        wait for 2 ns;
        if S = x"0c78" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"78" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"cab3";
        B <= x"09b8";
        wait for 2 ns;
        if S = x"d46b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"6b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f60d";
        B <= x"d93c";
        wait for 2 ns;
        if S = x"cf49" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"49" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"f9f8";
        B <= x"2623";
        wait for 2 ns;
        if S = x"201b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"1b" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7c22";
        B <= x"7866";
        wait for 2 ns;
        if S = x"f488" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"88" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"2012";
        B <= x"2e67";
        wait for 2 ns;
        if S = x"4e79" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"79" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"cc5e";
        B <= x"d295";
        wait for 2 ns;
        if S = x"9ef3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f3" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"87a1";
        B <= x"65ec";
        wait for 2 ns;
        if S = x"ed8d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"8d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"0020";
        B <= x"3e5f";
        wait for 2 ns;
        if S = x"3e7f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"1c6d";
        B <= x"b497";
        wait for 2 ns;
        if S = x"d104" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"04" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"655c";
        B <= x"d02c";
        wait for 2 ns;
        if S = x"3588" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"88" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ff47";
        B <= x"f2b7";
        wait for 2 ns;
        if S = x"f1fe" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"fe" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"dea3";
        B <= x"d686";
        wait for 2 ns;
        if S = x"b529" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"29" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a74b";
        B <= x"51a6";
        wait for 2 ns;
        if S = x"f8f1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9efa";
        B <= x"3a33";
        wait for 2 ns;
        if S = x"d92d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"2d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b461";
        B <= x"4b1c";
        wait for 2 ns;
        if S = x"ff7d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"7d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"93b2";
        B <= x"e55d";
        wait for 2 ns;
        if S = x"790f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"0f" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"be70";
        B <= x"9d29";
        wait for 2 ns;
        if S = x"5b99" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"99" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b1ae";
        B <= x"de12";
        wait for 2 ns;
        if S = x"8fc0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c0" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"dd11";
        B <= x"1b78";
        wait for 2 ns;
        if S = x"f889" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"89" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"55dc";
        B <= x"74b1";
        wait for 2 ns;
        if S = x"ca8d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"8d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6cb2";
        B <= x"c8d3";
        wait for 2 ns;
        if S = x"3585" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"85" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8463";
        B <= x"1aa3";
        wait for 2 ns;
        if S = x"9f06" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"06" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"bd7b";
        B <= x"d8ba";
        wait for 2 ns;
        if S = x"9635" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"35" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5fd0";
        B <= x"3a82";
        wait for 2 ns;
        if S = x"9a52" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"52" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"aabb";
        B <= x"c06d";
        wait for 2 ns;
        if S = x"6b28" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"28" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"59d1";
        B <= x"3836";
        wait for 2 ns;
        if S = x"9207" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"07" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"d2d3";
        B <= x"7079";
        wait for 2 ns;
        if S = x"434c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"4c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"6430";
        B <= x"fd1c";
        wait for 2 ns;
        if S = x"614c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"4c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"ed1c";
        B <= x"2dfd";
        wait for 2 ns;
        if S = x"1b19" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"19" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e403";
        B <= x"a853";
        wait for 2 ns;
        if S = x"8c56" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"56" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"af08";
        B <= x"6efd";
        wait for 2 ns;
        if S = x"1e05" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"05" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"b0bf";
        B <= x"00de";
        wait for 2 ns;
        if S = x"b19d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"9d" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"87b5";
        B <= x"5ce4";
        wait for 2 ns;
        if S = x"e499" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"99" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"8180";
        B <= x"6f62";
        wait for 2 ns;
        if S = x"f0e2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"e2" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7386";
        B <= x"7223";
        wait for 2 ns;
        if S = x"e5a9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"a9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"a3d2";
        B <= x"1c27";
        wait for 2 ns;
        if S = x"bff9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f9" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"574a";
        B <= x"b6a7";
        wait for 2 ns;
        if S = x"0df1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"f1" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c313";
        B <= x"d0f1";
        wait for 2 ns;
        if S = x"9404" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"04" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7cbc";
        B <= x"68ad";
        wait for 2 ns;
        if S = x"e569" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"69" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"4f7f";
        B <= x"f5f9";
        wait for 2 ns;
        if S = x"4578" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"78" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"c97c";
        B <= x"529a";
        wait for 2 ns;
        if S = x"1c16" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"16" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"9e4d";
        B <= x"af3d";
        wait for 2 ns;
        if S = x"4d8a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"8a" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"7e78";
        B <= x"4354";
        wait for 2 ns;
        if S = x"c1cc" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"cc" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"5155";
        B <= x"5ee7";
        wait for 2 ns;
        if S = x"b03c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"3c" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"74d8";
        B <= x"7eb1";
        wait for 2 ns;
        if S = x"f389" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"89" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"172b";
        B <= x"b30c";
        wait for 2 ns;
        if S = x"ca37" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"37" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        A <= x"e53e";
        B <= x"af87";
        wait for 2 ns;
        if S = x"94c5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C = '1' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if S8 = x"c5" then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        if C8 = '0' then
            good_checks := good_checks + 1;
        else
            bad_checks := bad_checks + 1;
        end if;
        wait for 2 ns;

        report "Simulation summary (good, bad, total): " & integer'image(good_checks) & " " & integer'image(bad_checks) & " " & integer'image(good_checks + bad_checks) & "" severity note;

        wait;
    end process;

    -------------------------------------------------------------------------------
    -- DUT
    -------------------------------------------------------------------------------
    DUT: component rca generic map (WIDTH => 16) port map(
        A => A,
        B => B,
        S => S,
        C => C
    );

    DUT2: component rca generic map (WIDTH => 8) port map(
        A => A(7 downto 0),
        B => B(7 downto 0),
        S => S8,
        C => C8
    );


end Behavioural;
