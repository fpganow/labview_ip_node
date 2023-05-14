----------------------------------------------------------------------------------
-- Company: FPGA Now
-- Filename: fulladder_wrapper.vhd
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

entity fulladder_wrapper is
	Port (
		A_in : in STD_LOGIC;
		B_in : in STD_LOGIC;
		C_in : in STD_LOGIC;
		S_out : out STD_LOGIC;
		C_out : out STD_LOGIC
	);
end fulladder_wrapper;

architecture behavioral of fulladder_wrapper is
	component fulladder is
		Port (
			A_in : in STD_LOGIC;
			B_in : in STD_LOGIC;
			C_in : in STD_LOGIC;
			S_out : out STD_LOGIC;
			C_out : out STD_LOGIC
		);
	end component fulladder;

begin

	fulladder_inst: fulladder
		port map(
			A_in => A_in,
			B_in => B_in,
			C_in => C_in,
			S_out => S_out,
			C_out => C_out
		);
end behavioral;