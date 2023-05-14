--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
--Date        : Fri May 12 17:55:19 2023
--Host        : Ryzen10 running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    A_0 : in STD_LOGIC;
    B_0 : in STD_LOGIC;
    CLK_0 : in STD_LOGIC;
    C_OUT_0 : out STD_LOGIC;
    Cin_0 : in STD_LOGIC;
    Cout_0 : out STD_LOGIC;
    S_0 : out STD_LOGIC;
    S_1 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    A_0 : in STD_LOGIC;
    B_0 : in STD_LOGIC;
    Cin_0 : in STD_LOGIC;
    Cout_0 : out STD_LOGIC;
    S_0 : out STD_LOGIC;
    C_OUT_0 : out STD_LOGIC;
    S_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_0 : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      A_0 => A_0,
      B_0 => B_0,
      CLK_0 => CLK_0,
      C_OUT_0 => C_OUT_0,
      Cin_0 => Cin_0,
      Cout_0 => Cout_0,
      S_0 => S_0,
      S_1(0) => S_1(0)
    );
end STRUCTURE;
