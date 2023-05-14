--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
--Date        : Sat May 13 15:21:57 2023
--Host        : Ryzen10 running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper_wrapper is
  port (
    A_in : in STD_LOGIC;
    B_in : in STD_LOGIC;
    CLK_in : in STD_LOGIC;
    C_in : in STD_LOGIC;
    C_out_ip : out STD_LOGIC;
    C_out_vhd : out STD_LOGIC;
    S_out_ip : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_out_vhd : out STD_LOGIC
  );
end design_1_wrapper_wrapper;

architecture STRUCTURE of design_1_wrapper_wrapper is
  component design_1_wrapper is
  port (
    A_in : in STD_LOGIC;
    B_in : in STD_LOGIC;
    C_in : in STD_LOGIC;
    C_out_vhd : out STD_LOGIC;
    S_out_vhd : out STD_LOGIC;
    C_out_ip : out STD_LOGIC;
    S_out_ip : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_in : in STD_LOGIC
  );
  end component design_1_wrapper;
begin
design_1_i: component design_1_wrapper
     port map (
      A_in => A_in,
      B_in => B_in,
      CLK_in => CLK_in,
      C_in => C_in,
      C_out_ip => C_out_ip,
      C_out_vhd => C_out_vhd,
      S_out_ip(0) => S_out_ip(0),
      S_out_vhd => S_out_vhd
    );
end STRUCTURE;
