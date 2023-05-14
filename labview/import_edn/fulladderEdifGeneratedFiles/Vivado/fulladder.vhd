-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Sat May 13 15:44:16 2023
-- Host        : Ryzen10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim {C:\NIFPGA\iptemp\ipin96DE538A83A24199928B8D97D4C6FA3B\Vivado\fulladder.vhd}
-- Design      : fulladder
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k410tfbg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fulladder is
  port (
    A_in : in STD_LOGIC;
    B_in : in STD_LOGIC;
    C_in : in STD_LOGIC;
    C_out : out STD_LOGIC;
    S_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fulladder : entity is true;
end fulladder;

architecture STRUCTURE of fulladder is
  signal A_in_IBUF : STD_LOGIC;
  signal B_in_IBUF : STD_LOGIC;
  signal C_in_IBUF : STD_LOGIC;
  signal C_out_OBUF : STD_LOGIC;
  signal S_out_OBUF : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of C_out_OBUF_inst_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of S_out_OBUF_inst_i_1 : label is "soft_lutpair0";
begin
A_in_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => A_in,
      O => A_in_IBUF
    );
B_in_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => B_in,
      O => B_in_IBUF
    );
C_in_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => C_in,
      O => C_in_IBUF
    );
C_out_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => C_out_OBUF,
      O => C_out
    );
C_out_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => C_in_IBUF,
      I1 => A_in_IBUF,
      I2 => B_in_IBUF,
      O => C_out_OBUF
    );
S_out_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => S_out_OBUF,
      O => S_out
    );
S_out_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B_in_IBUF,
      I1 => A_in_IBUF,
      I2 => C_in_IBUF,
      O => S_out_OBUF
    );
end STRUCTURE;
