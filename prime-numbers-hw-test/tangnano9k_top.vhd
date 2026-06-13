library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tangnano9k_top is
    port (
        clk    : in  std_logic;
        btn1_n : in  std_logic;
        btn2_n : in  std_logic;
        led    : out std_logic_vector(5 downto 0)
    );
end entity tangnano9k_top;

architecture rtl of tangnano9k_top is

    constant P_C      : integer := 16;
    constant N_BITS_C : integer := 8;

    signal rst         : std_logic;
    signal done        : std_logic;
    signal prime_out   : unsigned(N_BITS_C-1 downto 0);
    signal counter_out : unsigned(N_BITS_C-1 downto 0);

begin

    -- Tang Nano buttons are active-low.
    -- prime_finder expects active-high reset.
    rst <= not btn1_n;

    u_prime_finder : entity work.prime_finder
        generic map (
            P      => P_C,
            N_BITS => N_BITS_C
        )
        port map (
            clk         => clk,
            rst         => rst,
            prime_out   => prime_out,
            done        => done,
            counter_out => counter_out
        );

    -- Tang Nano LEDs are active-low.
    --
    -- led[0] = ON when done = 1
    -- led[5:1] show lower 5 bits of latest prime_out
    led(0) <= not done;
    led(1) <= not std_logic(prime_out(0));
    led(2) <= not std_logic(prime_out(1));
    led(3) <= not std_logic(prime_out(2));
    led(4) <= not std_logic(prime_out(3));
    led(5) <= not std_logic(prime_out(4));

end architecture rtl;
