------------------------------
--  Electrónica Digital     --
--  Taller 2                --
--  Com 2, grupo 5          --
--  ejercicio 1             --
------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is
end testbench;

architecture rtl of testbench is
    component design is
        port (
            -- compuerta OR
            i1 : in std_logic;
            i2 : in std_logic;
            -- mux_1
            i3 : in std_logic; -- selector
            i4 : in std_logic;
            i5 : in std_logic;
            -- mux_2
            i6 : in std_logic; -- selector
            i7 : in std_logic;
            i8 : in std_logic;
            -- salida
            f : out std_logic;
        );
    end component;

    -- entradas
    signal i1, i2, i3, i4, i5, i6, i7, i8 : std_logic;

    -- salida
    signal f : std_logic;
begin
    -- unidad bajo prueba
    uut : design
    port map(i1, i2, i3, i4, i5, i6, i7, i8, f);

    -- casos de prueba
    -- ###
    process
    begin
        -- caso 0
        i1 <= '0';
        i2 <= '0';
        i3 <= '0';
        i4 <= '0';
        i5 <= '0';
        i6 <= '0';
        i7 <= '0';
        i8 <= '0';
        wait for 1 ns;
        assert f = '0' report "::: >>> Fallo caso 0 :::" severity
        failure;

        -- fin simulacion
        assert false report "::: >>> SIMULACION OK <<< :::" severity
        note;
        wait;
    end process;
end rtl;