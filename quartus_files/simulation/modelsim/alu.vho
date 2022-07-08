-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "07/08/2022 07:27:44"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	design IS
    PORT (
	input_vector : IN std_logic_vector(17 DOWNTO 0);
	output_vector : OUT std_logic_vector(9 DOWNTO 0)
	);
END design;

-- Design Ports Information


ARCHITECTURE structure OF design IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(9 DOWNTO 0);
SIGNAL \arithmetic_logical_unit|op6|full_adders:4:fa|g~combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|la|first_layer_black:4:b0|g~0_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|full_adders:6:fa|g~combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|la|first_layer_black:6:b0|g~0_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|full_adders:7:fa|p~0_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|full_adders:6:fa|p~combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|la|w5|g~0_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|full_adders:5:fa|p~combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|full_adders:4:fa|p~combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|la|w5|g~1_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|full_adders:2:fa|g~combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|la|first_layer_black:2:b0|g~0_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|la|w1|g~0_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|la|w1|g~1_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|full_adders:2:fa|p~combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|full_adders:3:fa|p~combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|full_adders:0:fa|g~combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|la|first_layer_black:0:b0|g~0_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|la|w3|g~0_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|la|w5|g~2_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|la|grey:2:w4|g~0_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|full_adders:3:fa|g~combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|la|first_layer_black:3:b0|g~0_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|full_adders:5:fa|g~combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|la|first_layer_black:5:b0|g~0_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|la|grey:2:w4|g~1_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|la|w2|g~0_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|full_adders:1:fa|g~combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|la|first_layer_black:1:b0|g~0_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|la|w2|g~combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|o~combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|enable|sel[1]~2_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|enable|sel[0]~0_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux7~1_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux7~2_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|enable|sel[2]~1_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux7~3_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux7~0_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux7~4_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux6~4_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|la|w0|g~0_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux6~2_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux7~5_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|full_adders:1:fa|p~combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux6~3_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux6~5_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux5~2_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|la|w3|g~1_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux5~3_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux5~4_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux5~5_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux4~1_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux4~0_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux4~2_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux4~3_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux4~4_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux3~0_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux3~1_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux3~2_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|la|w5|g~3_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux3~3_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|la|grey:0:w4|g~0_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|la|grey:0:w4|g~1_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux2~1_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux2~0_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux2~2_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux2~3_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux1~1_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux1~0_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux1~2_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|la|second_layer:2:b1|g~0_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|la|grey:1:w4|g~combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux1~3_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|op6|full_adders:7:fa|s~combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux0~0_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux0~1_combout\ : std_logic;
SIGNAL \arithmetic_logical_unit|mu1|Mux0~2_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(17 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(11),
	combout => \input_vector~combout\(11));

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(15),
	combout => \input_vector~combout\(15));

-- Location: LC_X11_Y7_N0
\arithmetic_logical_unit|op6|full_adders:4:fa|g\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|full_adders:4:fa|g~combout\ = ((\input_vector~combout\(11) & (\input_vector~combout\(4) $ (\input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|full_adders:4:fa|g~combout\);

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(12),
	combout => \input_vector~combout\(12));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X12_Y8_N7
\arithmetic_logical_unit|op6|la|first_layer_black:4:b0|g~0\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|la|first_layer_black:4:b0|g~0_combout\ = (\arithmetic_logical_unit|op6|full_adders:4:fa|g~combout\ & ((\input_vector~combout\(12)) # (\input_vector~combout\(5) $ (\input_vector~combout\(15))))) # 
-- (!\arithmetic_logical_unit|op6|full_adders:4:fa|g~combout\ & (\input_vector~combout\(12) & (\input_vector~combout\(5) $ (\input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|op6|full_adders:4:fa|g~combout\,
	datab => \input_vector~combout\(12),
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|la|first_layer_black:4:b0|g~0_combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(13),
	combout => \input_vector~combout\(13));

-- Location: LC_X13_Y7_N6
\arithmetic_logical_unit|op6|full_adders:6:fa|g\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|full_adders:6:fa|g~combout\ = (\input_vector~combout\(13) & (\input_vector~combout\(15) $ ((\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6060",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(15),
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|full_adders:6:fa|g~combout\);

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(14),
	combout => \input_vector~combout\(14));

-- Location: LC_X12_Y7_N4
\arithmetic_logical_unit|op6|la|first_layer_black:6:b0|g~0\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|la|first_layer_black:6:b0|g~0_combout\ = (\arithmetic_logical_unit|op6|full_adders:6:fa|g~combout\ & ((\input_vector~combout\(14)) # (\input_vector~combout\(7) $ (\input_vector~combout\(15))))) # 
-- (!\arithmetic_logical_unit|op6|full_adders:6:fa|g~combout\ & (\input_vector~combout\(14) & (\input_vector~combout\(7) $ (\input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|op6|full_adders:6:fa|g~combout\,
	datab => \input_vector~combout\(7),
	datac => \input_vector~combout\(14),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|la|first_layer_black:6:b0|g~0_combout\);

-- Location: LC_X12_Y7_N6
\arithmetic_logical_unit|op6|full_adders:7:fa|p~0\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|full_adders:7:fa|p~0_combout\ = (\input_vector~combout\(7) $ (\input_vector~combout\(14) $ (\input_vector~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(7),
	datac => \input_vector~combout\(14),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|full_adders:7:fa|p~0_combout\);

-- Location: LC_X13_Y7_N3
\arithmetic_logical_unit|op6|full_adders:6:fa|p\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|full_adders:6:fa|p~combout\ = \input_vector~combout\(15) $ (\input_vector~combout\(6) $ ((\input_vector~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(15),
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|full_adders:6:fa|p~combout\);

-- Location: LC_X13_Y7_N2
\arithmetic_logical_unit|op6|la|w5|g~0\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|la|w5|g~0_combout\ = (\arithmetic_logical_unit|op6|la|first_layer_black:6:b0|g~0_combout\) # ((\arithmetic_logical_unit|op6|la|first_layer_black:4:b0|g~0_combout\ & (\arithmetic_logical_unit|op6|full_adders:7:fa|p~0_combout\ & 
-- \arithmetic_logical_unit|op6|full_adders:6:fa|p~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|op6|la|first_layer_black:4:b0|g~0_combout\,
	datab => \arithmetic_logical_unit|op6|la|first_layer_black:6:b0|g~0_combout\,
	datac => \arithmetic_logical_unit|op6|full_adders:7:fa|p~0_combout\,
	datad => \arithmetic_logical_unit|op6|full_adders:6:fa|p~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|la|w5|g~0_combout\);

-- Location: LC_X12_Y8_N3
\arithmetic_logical_unit|op6|full_adders:5:fa|p\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|full_adders:5:fa|p~combout\ = (\input_vector~combout\(12) $ (\input_vector~combout\(5) $ (\input_vector~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(12),
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|full_adders:5:fa|p~combout\);

-- Location: LC_X11_Y7_N7
\arithmetic_logical_unit|op6|full_adders:4:fa|p\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|full_adders:4:fa|p~combout\ = \input_vector~combout\(4) $ (((\input_vector~combout\(11) $ (\input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|full_adders:4:fa|p~combout\);

-- Location: LC_X12_Y7_N0
\arithmetic_logical_unit|op6|la|w5|g~1\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|la|w5|g~1_combout\ = (\arithmetic_logical_unit|op6|full_adders:7:fa|p~0_combout\ & (\arithmetic_logical_unit|op6|full_adders:5:fa|p~combout\ & (\arithmetic_logical_unit|op6|full_adders:6:fa|p~combout\ & 
-- \arithmetic_logical_unit|op6|full_adders:4:fa|p~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|op6|full_adders:7:fa|p~0_combout\,
	datab => \arithmetic_logical_unit|op6|full_adders:5:fa|p~combout\,
	datac => \arithmetic_logical_unit|op6|full_adders:6:fa|p~combout\,
	datad => \arithmetic_logical_unit|op6|full_adders:4:fa|p~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|la|w5|g~1_combout\);

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(10),
	combout => \input_vector~combout\(10));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: LC_X13_Y8_N8
\arithmetic_logical_unit|op6|full_adders:2:fa|g\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|full_adders:2:fa|g~combout\ = (\input_vector~combout\(9) & (\input_vector~combout\(2) $ ((\input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4848",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|full_adders:2:fa|g~combout\);

-- Location: LC_X13_Y8_N9
\arithmetic_logical_unit|op6|la|first_layer_black:2:b0|g~0\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|la|first_layer_black:2:b0|g~0_combout\ = (\input_vector~combout\(10) & ((\arithmetic_logical_unit|op6|full_adders:2:fa|g~combout\) # (\input_vector~combout\(3) $ (\input_vector~combout\(15))))) # (!\input_vector~combout\(10) & 
-- (\arithmetic_logical_unit|op6|full_adders:2:fa|g~combout\ & (\input_vector~combout\(3) $ (\input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(15),
	datad => \arithmetic_logical_unit|op6|full_adders:2:fa|g~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|la|first_layer_black:2:b0|g~0_combout\);

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: LC_X15_Y7_N7
\arithmetic_logical_unit|op6|la|w1|g~0\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|la|w1|g~0_combout\ = ((\input_vector~combout\(15) & (\input_vector~combout\(0) $ (!\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|la|w1|g~0_combout\);

-- Location: LC_X15_Y7_N6
\arithmetic_logical_unit|op6|la|w1|g~1\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|la|w1|g~1_combout\ = (\arithmetic_logical_unit|op6|la|w1|g~0_combout\ & (\input_vector~combout\(1) $ (\input_vector~combout\(8) $ (\input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9060",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(8),
	datac => \arithmetic_logical_unit|op6|la|w1|g~0_combout\,
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|la|w1|g~1_combout\);

-- Location: LC_X13_Y8_N5
\arithmetic_logical_unit|op6|full_adders:2:fa|p\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|full_adders:2:fa|p~combout\ = \input_vector~combout\(2) $ (\input_vector~combout\(9) $ ((\input_vector~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|full_adders:2:fa|p~combout\);

-- Location: LC_X13_Y8_N6
\arithmetic_logical_unit|op6|full_adders:3:fa|p\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|full_adders:3:fa|p~combout\ = \input_vector~combout\(10) $ (\input_vector~combout\(3) $ ((\input_vector~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|full_adders:3:fa|p~combout\);

-- Location: LC_X15_Y7_N5
\arithmetic_logical_unit|op6|full_adders:0:fa|g\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|full_adders:0:fa|g~combout\ = ((\input_vector~combout\(7) & (\input_vector~combout\(0) $ (\input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|full_adders:0:fa|g~combout\);

-- Location: LC_X15_Y7_N3
\arithmetic_logical_unit|op6|la|first_layer_black:0:b0|g~0\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|la|first_layer_black:0:b0|g~0_combout\ = (\input_vector~combout\(8) & ((\arithmetic_logical_unit|op6|full_adders:0:fa|g~combout\) # (\input_vector~combout\(1) $ (\input_vector~combout\(15))))) # (!\input_vector~combout\(8) & 
-- (\arithmetic_logical_unit|op6|full_adders:0:fa|g~combout\ & (\input_vector~combout\(1) $ (\input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(8),
	datac => \arithmetic_logical_unit|op6|full_adders:0:fa|g~combout\,
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|la|first_layer_black:0:b0|g~0_combout\);

-- Location: LC_X15_Y7_N2
\arithmetic_logical_unit|op6|la|w3|g~0\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|la|w3|g~0_combout\ = (\arithmetic_logical_unit|op6|full_adders:2:fa|p~combout\ & (\arithmetic_logical_unit|op6|full_adders:3:fa|p~combout\ & ((\arithmetic_logical_unit|op6|la|w1|g~1_combout\) # 
-- (\arithmetic_logical_unit|op6|la|first_layer_black:0:b0|g~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|op6|la|w1|g~1_combout\,
	datab => \arithmetic_logical_unit|op6|full_adders:2:fa|p~combout\,
	datac => \arithmetic_logical_unit|op6|full_adders:3:fa|p~combout\,
	datad => \arithmetic_logical_unit|op6|la|first_layer_black:0:b0|g~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|la|w3|g~0_combout\);

-- Location: LC_X12_Y7_N5
\arithmetic_logical_unit|op6|la|w5|g~2\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|la|w5|g~2_combout\ = (\arithmetic_logical_unit|op6|la|w5|g~0_combout\) # ((\arithmetic_logical_unit|op6|la|w5|g~1_combout\ & ((\arithmetic_logical_unit|op6|la|first_layer_black:2:b0|g~0_combout\) # 
-- (\arithmetic_logical_unit|op6|la|w3|g~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|op6|la|w5|g~0_combout\,
	datab => \arithmetic_logical_unit|op6|la|w5|g~1_combout\,
	datac => \arithmetic_logical_unit|op6|la|first_layer_black:2:b0|g~0_combout\,
	datad => \arithmetic_logical_unit|op6|la|w3|g~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|la|w5|g~2_combout\);

-- Location: LC_X12_Y7_N9
\arithmetic_logical_unit|op6|la|grey:2:w4|g~0\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|la|grey:2:w4|g~0_combout\ = (\arithmetic_logical_unit|op6|full_adders:3:fa|p~combout\ & (\arithmetic_logical_unit|op6|full_adders:6:fa|p~combout\ & (\arithmetic_logical_unit|op6|full_adders:4:fa|p~combout\ & 
-- \arithmetic_logical_unit|op6|full_adders:5:fa|p~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|op6|full_adders:3:fa|p~combout\,
	datab => \arithmetic_logical_unit|op6|full_adders:6:fa|p~combout\,
	datac => \arithmetic_logical_unit|op6|full_adders:4:fa|p~combout\,
	datad => \arithmetic_logical_unit|op6|full_adders:5:fa|p~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|la|grey:2:w4|g~0_combout\);

-- Location: LC_X12_Y8_N9
\arithmetic_logical_unit|op6|full_adders:3:fa|g\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|full_adders:3:fa|g~combout\ = ((\input_vector~combout\(10) & (\input_vector~combout\(15) $ (\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6600",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(15),
	datab => \input_vector~combout\(3),
	datad => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|full_adders:3:fa|g~combout\);

-- Location: LC_X11_Y7_N5
\arithmetic_logical_unit|op6|la|first_layer_black:3:b0|g~0\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|la|first_layer_black:3:b0|g~0_combout\ = (\arithmetic_logical_unit|op6|full_adders:3:fa|g~combout\ & ((\input_vector~combout\(11)) # (\input_vector~combout\(4) $ (\input_vector~combout\(15))))) # 
-- (!\arithmetic_logical_unit|op6|full_adders:3:fa|g~combout\ & (\input_vector~combout\(11) & (\input_vector~combout\(4) $ (\input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \arithmetic_logical_unit|op6|full_adders:3:fa|g~combout\,
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|la|first_layer_black:3:b0|g~0_combout\);

-- Location: LC_X12_Y8_N5
\arithmetic_logical_unit|op6|full_adders:5:fa|g\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|full_adders:5:fa|g~combout\ = ((\input_vector~combout\(12) & (\input_vector~combout\(5) $ (\input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(12),
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|full_adders:5:fa|g~combout\);

-- Location: LC_X13_Y7_N7
\arithmetic_logical_unit|op6|la|first_layer_black:5:b0|g~0\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|la|first_layer_black:5:b0|g~0_combout\ = (\input_vector~combout\(13) & ((\arithmetic_logical_unit|op6|full_adders:5:fa|g~combout\) # (\input_vector~combout\(6) $ (\input_vector~combout\(15))))) # (!\input_vector~combout\(13) & 
-- (\arithmetic_logical_unit|op6|full_adders:5:fa|g~combout\ & (\input_vector~combout\(6) $ (\input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(13),
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(15),
	datad => \arithmetic_logical_unit|op6|full_adders:5:fa|g~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|la|first_layer_black:5:b0|g~0_combout\);

-- Location: LC_X12_Y7_N7
\arithmetic_logical_unit|op6|la|grey:2:w4|g~1\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|la|grey:2:w4|g~1_combout\ = (\arithmetic_logical_unit|op6|la|first_layer_black:5:b0|g~0_combout\) # ((\arithmetic_logical_unit|op6|la|first_layer_black:3:b0|g~0_combout\ & 
-- (\arithmetic_logical_unit|op6|full_adders:5:fa|p~combout\ & \arithmetic_logical_unit|op6|full_adders:6:fa|p~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|op6|la|first_layer_black:3:b0|g~0_combout\,
	datab => \arithmetic_logical_unit|op6|full_adders:5:fa|p~combout\,
	datac => \arithmetic_logical_unit|op6|full_adders:6:fa|p~combout\,
	datad => \arithmetic_logical_unit|op6|la|first_layer_black:5:b0|g~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|la|grey:2:w4|g~1_combout\);

-- Location: LC_X15_Y7_N9
\arithmetic_logical_unit|op6|la|w2|g~0\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|la|w2|g~0_combout\ = (\arithmetic_logical_unit|op6|full_adders:2:fa|p~combout\ & (\input_vector~combout\(1) $ (\input_vector~combout\(8) $ (\input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8448",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \arithmetic_logical_unit|op6|full_adders:2:fa|p~combout\,
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|la|w2|g~0_combout\);

-- Location: LC_X11_Y8_N1
\arithmetic_logical_unit|op6|full_adders:1:fa|g\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|full_adders:1:fa|g~combout\ = ((\input_vector~combout\(8) & (\input_vector~combout\(1) $ (\input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|full_adders:1:fa|g~combout\);

-- Location: LC_X13_Y8_N1
\arithmetic_logical_unit|op6|la|first_layer_black:1:b0|g~0\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|la|first_layer_black:1:b0|g~0_combout\ = (\input_vector~combout\(9) & ((\arithmetic_logical_unit|op6|full_adders:1:fa|g~combout\) # (\input_vector~combout\(2) $ (\input_vector~combout\(15))))) # (!\input_vector~combout\(9) & 
-- (\arithmetic_logical_unit|op6|full_adders:1:fa|g~combout\ & (\input_vector~combout\(2) $ (\input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(15),
	datad => \arithmetic_logical_unit|op6|full_adders:1:fa|g~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|la|first_layer_black:1:b0|g~0_combout\);

-- Location: LC_X15_Y7_N4
\arithmetic_logical_unit|op6|la|w2|g\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|la|w2|g~combout\ = (\arithmetic_logical_unit|op6|la|first_layer_black:1:b0|g~0_combout\) # ((\arithmetic_logical_unit|op6|la|w2|g~0_combout\ & ((\arithmetic_logical_unit|op6|la|w1|g~1_combout\) # 
-- (\arithmetic_logical_unit|op6|la|first_layer_black:0:b0|g~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|op6|la|w1|g~1_combout\,
	datab => \arithmetic_logical_unit|op6|la|w2|g~0_combout\,
	datac => \arithmetic_logical_unit|op6|la|first_layer_black:1:b0|g~0_combout\,
	datad => \arithmetic_logical_unit|op6|la|first_layer_black:0:b0|g~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|la|w2|g~combout\);

-- Location: LC_X12_Y7_N1
\arithmetic_logical_unit|op6|o\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|o~combout\ = \arithmetic_logical_unit|op6|la|w5|g~2_combout\ $ (((\arithmetic_logical_unit|op6|la|grey:2:w4|g~1_combout\) # ((\arithmetic_logical_unit|op6|la|grey:2:w4|g~0_combout\ & 
-- \arithmetic_logical_unit|op6|la|w2|g~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "565a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|op6|la|w5|g~2_combout\,
	datab => \arithmetic_logical_unit|op6|la|grey:2:w4|g~0_combout\,
	datac => \arithmetic_logical_unit|op6|la|grey:2:w4|g~1_combout\,
	datad => \arithmetic_logical_unit|op6|la|w2|g~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|o~combout\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(17),
	combout => \input_vector~combout\(17));

-- Location: LC_X12_Y9_N5
\arithmetic_logical_unit|enable|sel[1]~2\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|enable|sel[1]~2_combout\ = (\input_vector~combout\(15)) # (((!\input_vector~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(15),
	datac => \input_vector~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|enable|sel[1]~2_combout\);

-- Location: LC_X12_Y9_N0
\arithmetic_logical_unit|enable|sel[0]~0\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|enable|sel[0]~0_combout\ = (\input_vector~combout\(17) & (((!\input_vector~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(17),
	datac => \input_vector~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|enable|sel[0]~0_combout\);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(16),
	combout => \input_vector~combout\(16));

-- Location: LC_X12_Y9_N4
\arithmetic_logical_unit|mu1|Mux7~1\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux7~1_combout\ = (!\input_vector~combout\(7) & (((\input_vector~combout\(17) & !\input_vector~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datac => \input_vector~combout\(17),
	datad => \input_vector~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux7~1_combout\);

-- Location: LC_X12_Y9_N9
\arithmetic_logical_unit|mu1|Mux7~2\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux7~2_combout\ = (\arithmetic_logical_unit|mu1|Mux7~1_combout\ & ((\arithmetic_logical_unit|enable|sel[1]~2_combout\ & (\arithmetic_logical_unit|enable|sel[0]~0_combout\)) # (!\arithmetic_logical_unit|enable|sel[1]~2_combout\ 
-- & (!\arithmetic_logical_unit|enable|sel[0]~0_combout\ & !\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8090",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|enable|sel[1]~2_combout\,
	datab => \arithmetic_logical_unit|enable|sel[0]~0_combout\,
	datac => \arithmetic_logical_unit|mu1|Mux7~1_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux7~2_combout\);

-- Location: LC_X12_Y9_N1
\arithmetic_logical_unit|enable|sel[2]~1\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|enable|sel[2]~1_combout\ = (((\input_vector~combout\(16)) # (!\input_vector~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(17),
	datad => \input_vector~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|enable|sel[2]~1_combout\);

-- Location: LC_X12_Y9_N6
\arithmetic_logical_unit|mu1|Mux7~3\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux7~3_combout\ = (\arithmetic_logical_unit|enable|sel[1]~2_combout\ & (!\arithmetic_logical_unit|enable|sel[2]~1_combout\ & (!\arithmetic_logical_unit|enable|sel[0]~0_combout\ & \input_vector~combout\(0)))) # 
-- (!\arithmetic_logical_unit|enable|sel[1]~2_combout\ & (\arithmetic_logical_unit|enable|sel[2]~1_combout\ & (\arithmetic_logical_unit|enable|sel[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4240",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|enable|sel[1]~2_combout\,
	datab => \arithmetic_logical_unit|enable|sel[2]~1_combout\,
	datac => \arithmetic_logical_unit|enable|sel[0]~0_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux7~3_combout\);

-- Location: LC_X12_Y9_N2
\arithmetic_logical_unit|mu1|Mux7~0\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux7~0_combout\ = (\arithmetic_logical_unit|enable|sel[2]~1_combout\ & (\input_vector~combout\(7) $ (((\input_vector~combout\(0)))))) # (!\arithmetic_logical_unit|enable|sel[2]~1_combout\ & 
-- (\arithmetic_logical_unit|enable|sel[0]~0_combout\ & (\input_vector~combout\(7) $ (\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "54a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \arithmetic_logical_unit|enable|sel[2]~1_combout\,
	datac => \arithmetic_logical_unit|enable|sel[0]~0_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux7~0_combout\);

-- Location: LC_X12_Y9_N3
\arithmetic_logical_unit|mu1|Mux7~4\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux7~4_combout\ = (\arithmetic_logical_unit|mu1|Mux7~2_combout\) # ((\arithmetic_logical_unit|mu1|Mux7~0_combout\) # ((\input_vector~combout\(7) & \arithmetic_logical_unit|mu1|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \arithmetic_logical_unit|mu1|Mux7~2_combout\,
	datac => \arithmetic_logical_unit|mu1|Mux7~3_combout\,
	datad => \arithmetic_logical_unit|mu1|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux7~4_combout\);

-- Location: LC_X11_Y8_N7
\arithmetic_logical_unit|mu1|Mux6~4\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux6~4_combout\ = (\input_vector~combout\(8) & ((\arithmetic_logical_unit|enable|sel[0]~0_combout\ & ((!\input_vector~combout\(1)))) # (!\arithmetic_logical_unit|enable|sel[0]~0_combout\ & 
-- (\arithmetic_logical_unit|enable|sel[1]~2_combout\ & \input_vector~combout\(1))))) # (!\input_vector~combout\(8) & (\arithmetic_logical_unit|enable|sel[0]~0_combout\ $ (((!\arithmetic_logical_unit|enable|sel[1]~2_combout\ & !\input_vector~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4aa9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|enable|sel[0]~0_combout\,
	datab => \arithmetic_logical_unit|enable|sel[1]~2_combout\,
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux6~4_combout\);

-- Location: LC_X11_Y8_N6
\arithmetic_logical_unit|op6|la|w0|g~0\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|la|w0|g~0_combout\ = (\input_vector~combout\(0) & (((\input_vector~combout\(7))))) # (!\input_vector~combout\(0) & (((\input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|la|w0|g~0_combout\);

-- Location: LC_X11_Y8_N0
\arithmetic_logical_unit|mu1|Mux6~2\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux6~2_combout\ = (((!\input_vector~combout\(8) & !\input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux6~2_combout\);

-- Location: LC_X11_Y8_N5
\arithmetic_logical_unit|mu1|Mux7~5\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux7~5_combout\ = (((\input_vector~combout\(14)) # (\input_vector~combout\(15))) # (!\input_vector~combout\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(17),
	datac => \input_vector~combout\(14),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux7~5_combout\);

-- Location: LC_X11_Y8_N8
\arithmetic_logical_unit|op6|full_adders:1:fa|p\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|full_adders:1:fa|p~combout\ = (\input_vector~combout\(1) $ (\input_vector~combout\(8) $ (\input_vector~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|full_adders:1:fa|p~combout\);

-- Location: LC_X11_Y8_N4
\arithmetic_logical_unit|mu1|Mux6~3\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux6~3_combout\ = (\arithmetic_logical_unit|mu1|Mux7~5_combout\ & (\arithmetic_logical_unit|op6|la|w0|g~0_combout\ $ (((\arithmetic_logical_unit|op6|full_adders:1:fa|p~combout\))))) # 
-- (!\arithmetic_logical_unit|mu1|Mux7~5_combout\ & (((!\arithmetic_logical_unit|mu1|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "53a3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|op6|la|w0|g~0_combout\,
	datab => \arithmetic_logical_unit|mu1|Mux6~2_combout\,
	datac => \arithmetic_logical_unit|mu1|Mux7~5_combout\,
	datad => \arithmetic_logical_unit|op6|full_adders:1:fa|p~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux6~3_combout\);

-- Location: LC_X11_Y8_N2
\arithmetic_logical_unit|mu1|Mux6~5\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux6~5_combout\ = (\input_vector~combout\(16) & (((\arithmetic_logical_unit|mu1|Mux6~3_combout\)))) # (!\input_vector~combout\(16) & ((\input_vector~combout\(17) & (\arithmetic_logical_unit|mu1|Mux6~4_combout\)) # 
-- (!\input_vector~combout\(17) & ((\arithmetic_logical_unit|mu1|Mux6~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(16),
	datab => \arithmetic_logical_unit|mu1|Mux6~4_combout\,
	datac => \arithmetic_logical_unit|mu1|Mux6~3_combout\,
	datad => \input_vector~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux6~5_combout\);

-- Location: LC_X13_Y8_N4
\arithmetic_logical_unit|mu1|Mux5~2\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux5~2_combout\ = ((!\input_vector~combout\(9) & ((!\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(9),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux5~2_combout\);

-- Location: LC_X15_Y7_N8
\arithmetic_logical_unit|op6|la|w3|g~1\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|la|w3|g~1_combout\ = ((\arithmetic_logical_unit|op6|la|first_layer_black:0:b0|g~0_combout\) # ((\arithmetic_logical_unit|op6|full_adders:1:fa|p~combout\ & \arithmetic_logical_unit|op6|la|w1|g~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \arithmetic_logical_unit|op6|full_adders:1:fa|p~combout\,
	datac => \arithmetic_logical_unit|op6|la|w1|g~0_combout\,
	datad => \arithmetic_logical_unit|op6|la|first_layer_black:0:b0|g~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|la|w3|g~1_combout\);

-- Location: LC_X13_Y8_N7
\arithmetic_logical_unit|mu1|Mux5~3\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux5~3_combout\ = (\arithmetic_logical_unit|mu1|Mux7~5_combout\ & (\arithmetic_logical_unit|op6|full_adders:2:fa|p~combout\ $ (((\arithmetic_logical_unit|op6|la|w3|g~1_combout\))))) # 
-- (!\arithmetic_logical_unit|mu1|Mux7~5_combout\ & (((!\arithmetic_logical_unit|mu1|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "478b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|op6|full_adders:2:fa|p~combout\,
	datab => \arithmetic_logical_unit|mu1|Mux7~5_combout\,
	datac => \arithmetic_logical_unit|mu1|Mux5~2_combout\,
	datad => \arithmetic_logical_unit|op6|la|w3|g~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux5~3_combout\);

-- Location: LC_X13_Y8_N0
\arithmetic_logical_unit|mu1|Mux5~4\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux5~4_combout\ = (\input_vector~combout\(2) & ((\arithmetic_logical_unit|enable|sel[0]~0_combout\ & ((!\input_vector~combout\(9)))) # (!\arithmetic_logical_unit|enable|sel[0]~0_combout\ & 
-- (\arithmetic_logical_unit|enable|sel[1]~2_combout\ & \input_vector~combout\(9))))) # (!\input_vector~combout\(2) & (\arithmetic_logical_unit|enable|sel[0]~0_combout\ $ (((!\arithmetic_logical_unit|enable|sel[1]~2_combout\ & !\input_vector~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "64c9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \arithmetic_logical_unit|enable|sel[0]~0_combout\,
	datac => \arithmetic_logical_unit|enable|sel[1]~2_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux5~4_combout\);

-- Location: LC_X13_Y8_N3
\arithmetic_logical_unit|mu1|Mux5~5\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux5~5_combout\ = (\input_vector~combout\(17) & ((\input_vector~combout\(16) & (\arithmetic_logical_unit|mu1|Mux5~3_combout\)) # (!\input_vector~combout\(16) & ((\arithmetic_logical_unit|mu1|Mux5~4_combout\))))) # 
-- (!\input_vector~combout\(17) & (\arithmetic_logical_unit|mu1|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(17),
	datab => \arithmetic_logical_unit|mu1|Mux5~3_combout\,
	datac => \arithmetic_logical_unit|mu1|Mux5~4_combout\,
	datad => \input_vector~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux5~5_combout\);

-- Location: LC_X12_Y8_N1
\arithmetic_logical_unit|mu1|Mux4~1\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux4~1_combout\ = ((!\input_vector~combout\(3) & ((!\input_vector~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(3),
	datad => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux4~1_combout\);

-- Location: LC_X12_Y8_N4
\arithmetic_logical_unit|mu1|Mux4~0\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux4~0_combout\ = (\input_vector~combout\(3) & ((\arithmetic_logical_unit|enable|sel[0]~0_combout\ & ((!\input_vector~combout\(10)))) # (!\arithmetic_logical_unit|enable|sel[0]~0_combout\ & 
-- (\arithmetic_logical_unit|enable|sel[1]~2_combout\ & \input_vector~combout\(10))))) # (!\input_vector~combout\(3) & (\arithmetic_logical_unit|enable|sel[0]~0_combout\ $ (((!\arithmetic_logical_unit|enable|sel[1]~2_combout\ & 
-- !\input_vector~combout\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "58e1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \arithmetic_logical_unit|enable|sel[1]~2_combout\,
	datac => \arithmetic_logical_unit|enable|sel[0]~0_combout\,
	datad => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux4~0_combout\);

-- Location: LC_X12_Y8_N0
\arithmetic_logical_unit|mu1|Mux4~2\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux4~2_combout\ = (\arithmetic_logical_unit|enable|sel[2]~1_combout\ & (!\arithmetic_logical_unit|mu1|Mux7~5_combout\ & (!\arithmetic_logical_unit|mu1|Mux4~1_combout\))) # (!\arithmetic_logical_unit|enable|sel[2]~1_combout\ & 
-- (((\arithmetic_logical_unit|mu1|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "11f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|mu1|Mux7~5_combout\,
	datab => \arithmetic_logical_unit|mu1|Mux4~1_combout\,
	datac => \arithmetic_logical_unit|mu1|Mux4~0_combout\,
	datad => \arithmetic_logical_unit|enable|sel[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux4~2_combout\);

-- Location: LC_X11_Y8_N9
\arithmetic_logical_unit|mu1|Mux4~3\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux4~3_combout\ = ((\input_vector~combout\(16) & ((\input_vector~combout\(14)) # (\input_vector~combout\(15))))) # (!\input_vector~combout\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbb3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(16),
	datab => \input_vector~combout\(17),
	datac => \input_vector~combout\(14),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux4~3_combout\);

-- Location: LC_X12_Y7_N8
\arithmetic_logical_unit|mu1|Mux4~4\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux4~4_combout\ = (\arithmetic_logical_unit|mu1|Mux4~2_combout\) # ((\arithmetic_logical_unit|mu1|Mux4~3_combout\ & (\arithmetic_logical_unit|op6|full_adders:3:fa|p~combout\ $ (\arithmetic_logical_unit|op6|la|w2|g~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "baea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|mu1|Mux4~2_combout\,
	datab => \arithmetic_logical_unit|op6|full_adders:3:fa|p~combout\,
	datac => \arithmetic_logical_unit|mu1|Mux4~3_combout\,
	datad => \arithmetic_logical_unit|op6|la|w2|g~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux4~4_combout\);

-- Location: LC_X11_Y7_N9
\arithmetic_logical_unit|mu1|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux3~0_combout\ = (\input_vector~combout\(4) & ((\arithmetic_logical_unit|enable|sel[0]~0_combout\ & (!\input_vector~combout\(11))) # (!\arithmetic_logical_unit|enable|sel[0]~0_combout\ & (\input_vector~combout\(11) & 
-- \arithmetic_logical_unit|enable|sel[1]~2_combout\)))) # (!\input_vector~combout\(4) & (\arithmetic_logical_unit|enable|sel[0]~0_combout\ $ (((!\input_vector~combout\(11) & !\arithmetic_logical_unit|enable|sel[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6c49",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \arithmetic_logical_unit|enable|sel[0]~0_combout\,
	datac => \input_vector~combout\(11),
	datad => \arithmetic_logical_unit|enable|sel[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux3~0_combout\);

-- Location: LC_X11_Y7_N6
\arithmetic_logical_unit|mu1|Mux3~1\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux3~1_combout\ = (!\input_vector~combout\(4) & (((!\input_vector~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datac => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux3~1_combout\);

-- Location: LC_X11_Y7_N1
\arithmetic_logical_unit|mu1|Mux3~2\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux3~2_combout\ = (\arithmetic_logical_unit|enable|sel[2]~1_combout\ & (!\arithmetic_logical_unit|mu1|Mux7~5_combout\ & ((!\arithmetic_logical_unit|mu1|Mux3~1_combout\)))) # (!\arithmetic_logical_unit|enable|sel[2]~1_combout\ 
-- & (((\arithmetic_logical_unit|mu1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c5c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|mu1|Mux7~5_combout\,
	datab => \arithmetic_logical_unit|mu1|Mux3~0_combout\,
	datac => \arithmetic_logical_unit|enable|sel[2]~1_combout\,
	datad => \arithmetic_logical_unit|mu1|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux3~2_combout\);

-- Location: LC_X13_Y8_N2
\arithmetic_logical_unit|op6|la|w5|g~3\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|la|w5|g~3_combout\ = (\arithmetic_logical_unit|op6|la|first_layer_black:2:b0|g~0_combout\) # ((\arithmetic_logical_unit|op6|full_adders:3:fa|p~combout\ & (\arithmetic_logical_unit|op6|full_adders:2:fa|p~combout\ & 
-- \arithmetic_logical_unit|op6|la|w3|g~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|op6|full_adders:3:fa|p~combout\,
	datab => \arithmetic_logical_unit|op6|la|first_layer_black:2:b0|g~0_combout\,
	datac => \arithmetic_logical_unit|op6|full_adders:2:fa|p~combout\,
	datad => \arithmetic_logical_unit|op6|la|w3|g~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|la|w5|g~3_combout\);

-- Location: LC_X11_Y7_N8
\arithmetic_logical_unit|mu1|Mux3~3\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux3~3_combout\ = (\arithmetic_logical_unit|mu1|Mux3~2_combout\) # ((\arithmetic_logical_unit|mu1|Mux4~3_combout\ & (\arithmetic_logical_unit|op6|full_adders:4:fa|p~combout\ $ 
-- (\arithmetic_logical_unit|op6|la|w5|g~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|mu1|Mux4~3_combout\,
	datab => \arithmetic_logical_unit|op6|full_adders:4:fa|p~combout\,
	datac => \arithmetic_logical_unit|mu1|Mux3~2_combout\,
	datad => \arithmetic_logical_unit|op6|la|w5|g~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux3~3_combout\);

-- Location: LC_X11_Y8_N3
\arithmetic_logical_unit|op6|la|grey:0:w4|g~0\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|la|grey:0:w4|g~0_combout\ = (\arithmetic_logical_unit|op6|la|first_layer_black:1:b0|g~0_combout\) # ((\arithmetic_logical_unit|op6|full_adders:1:fa|p~combout\ & (\arithmetic_logical_unit|op6|la|w0|g~0_combout\ & 
-- \arithmetic_logical_unit|op6|full_adders:2:fa|p~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|op6|full_adders:1:fa|p~combout\,
	datab => \arithmetic_logical_unit|op6|la|first_layer_black:1:b0|g~0_combout\,
	datac => \arithmetic_logical_unit|op6|la|w0|g~0_combout\,
	datad => \arithmetic_logical_unit|op6|full_adders:2:fa|p~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|la|grey:0:w4|g~0_combout\);

-- Location: LC_X11_Y7_N2
\arithmetic_logical_unit|op6|la|grey:0:w4|g~1\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|la|grey:0:w4|g~1_combout\ = (\arithmetic_logical_unit|op6|la|first_layer_black:3:b0|g~0_combout\) # ((\arithmetic_logical_unit|op6|la|grey:0:w4|g~0_combout\ & (\arithmetic_logical_unit|op6|full_adders:4:fa|p~combout\ & 
-- \arithmetic_logical_unit|op6|full_adders:3:fa|p~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|op6|la|grey:0:w4|g~0_combout\,
	datab => \arithmetic_logical_unit|op6|full_adders:4:fa|p~combout\,
	datac => \arithmetic_logical_unit|op6|la|first_layer_black:3:b0|g~0_combout\,
	datad => \arithmetic_logical_unit|op6|full_adders:3:fa|p~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|la|grey:0:w4|g~1_combout\);

-- Location: LC_X12_Y8_N2
\arithmetic_logical_unit|mu1|Mux2~1\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux2~1_combout\ = ((!\input_vector~combout\(12) & (!\input_vector~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(12),
	datac => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux2~1_combout\);

-- Location: LC_X12_Y8_N6
\arithmetic_logical_unit|mu1|Mux2~0\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux2~0_combout\ = (\input_vector~combout\(12) & ((\arithmetic_logical_unit|enable|sel[0]~0_combout\ & (!\input_vector~combout\(5))) # (!\arithmetic_logical_unit|enable|sel[0]~0_combout\ & (\input_vector~combout\(5) & 
-- \arithmetic_logical_unit|enable|sel[1]~2_combout\)))) # (!\input_vector~combout\(12) & (\arithmetic_logical_unit|enable|sel[0]~0_combout\ $ (((!\input_vector~combout\(5) & !\arithmetic_logical_unit|enable|sel[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6a29",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|enable|sel[0]~0_combout\,
	datab => \input_vector~combout\(12),
	datac => \input_vector~combout\(5),
	datad => \arithmetic_logical_unit|enable|sel[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux2~0_combout\);

-- Location: LC_X12_Y8_N8
\arithmetic_logical_unit|mu1|Mux2~2\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux2~2_combout\ = (\arithmetic_logical_unit|enable|sel[2]~1_combout\ & (!\arithmetic_logical_unit|mu1|Mux7~5_combout\ & (!\arithmetic_logical_unit|mu1|Mux2~1_combout\))) # (!\arithmetic_logical_unit|enable|sel[2]~1_combout\ & 
-- (((\arithmetic_logical_unit|mu1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "11f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|mu1|Mux7~5_combout\,
	datab => \arithmetic_logical_unit|mu1|Mux2~1_combout\,
	datac => \arithmetic_logical_unit|mu1|Mux2~0_combout\,
	datad => \arithmetic_logical_unit|enable|sel[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux2~2_combout\);

-- Location: LC_X11_Y7_N3
\arithmetic_logical_unit|mu1|Mux2~3\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux2~3_combout\ = (\arithmetic_logical_unit|mu1|Mux2~2_combout\) # ((\arithmetic_logical_unit|mu1|Mux4~3_combout\ & (\arithmetic_logical_unit|op6|la|grey:0:w4|g~1_combout\ $ 
-- (\arithmetic_logical_unit|op6|full_adders:5:fa|p~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|mu1|Mux4~3_combout\,
	datab => \arithmetic_logical_unit|op6|la|grey:0:w4|g~1_combout\,
	datac => \arithmetic_logical_unit|op6|full_adders:5:fa|p~combout\,
	datad => \arithmetic_logical_unit|mu1|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux2~3_combout\);

-- Location: LC_X13_Y7_N9
\arithmetic_logical_unit|mu1|Mux1~1\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux1~1_combout\ = ((!\input_vector~combout\(6) & (!\input_vector~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux1~1_combout\);

-- Location: LC_X13_Y7_N5
\arithmetic_logical_unit|mu1|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux1~0_combout\ = (\input_vector~combout\(13) & ((\arithmetic_logical_unit|enable|sel[0]~0_combout\ & ((!\input_vector~combout\(6)))) # (!\arithmetic_logical_unit|enable|sel[0]~0_combout\ & 
-- (\arithmetic_logical_unit|enable|sel[1]~2_combout\ & \input_vector~combout\(6))))) # (!\input_vector~combout\(13) & (\arithmetic_logical_unit|enable|sel[0]~0_combout\ $ (((!\arithmetic_logical_unit|enable|sel[1]~2_combout\ & 
-- !\input_vector~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "58e1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(13),
	datab => \arithmetic_logical_unit|enable|sel[1]~2_combout\,
	datac => \arithmetic_logical_unit|enable|sel[0]~0_combout\,
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux1~0_combout\);

-- Location: LC_X13_Y7_N8
\arithmetic_logical_unit|mu1|Mux1~2\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux1~2_combout\ = (\arithmetic_logical_unit|enable|sel[2]~1_combout\ & (!\arithmetic_logical_unit|mu1|Mux7~5_combout\ & (!\arithmetic_logical_unit|mu1|Mux1~1_combout\))) # (!\arithmetic_logical_unit|enable|sel[2]~1_combout\ & 
-- (((\arithmetic_logical_unit|mu1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "11f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|mu1|Mux7~5_combout\,
	datab => \arithmetic_logical_unit|mu1|Mux1~1_combout\,
	datac => \arithmetic_logical_unit|mu1|Mux1~0_combout\,
	datad => \arithmetic_logical_unit|enable|sel[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux1~2_combout\);

-- Location: LC_X11_Y7_N4
\arithmetic_logical_unit|op6|la|second_layer:2:b1|g~0\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|la|second_layer:2:b1|g~0_combout\ = (\arithmetic_logical_unit|op6|full_adders:5:fa|p~combout\ & (\input_vector~combout\(4) $ (\input_vector~combout\(11) $ (\input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8448",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \arithmetic_logical_unit|op6|full_adders:5:fa|p~combout\,
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|la|second_layer:2:b1|g~0_combout\);

-- Location: LC_X13_Y7_N1
\arithmetic_logical_unit|op6|la|grey:1:w4|g\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|la|grey:1:w4|g~combout\ = (\arithmetic_logical_unit|op6|la|first_layer_black:4:b0|g~0_combout\) # ((\arithmetic_logical_unit|op6|la|second_layer:2:b1|g~0_combout\ & 
-- ((\arithmetic_logical_unit|op6|la|first_layer_black:2:b0|g~0_combout\) # (\arithmetic_logical_unit|op6|la|w3|g~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|op6|la|first_layer_black:4:b0|g~0_combout\,
	datab => \arithmetic_logical_unit|op6|la|second_layer:2:b1|g~0_combout\,
	datac => \arithmetic_logical_unit|op6|la|first_layer_black:2:b0|g~0_combout\,
	datad => \arithmetic_logical_unit|op6|la|w3|g~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|la|grey:1:w4|g~combout\);

-- Location: LC_X13_Y7_N4
\arithmetic_logical_unit|mu1|Mux1~3\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux1~3_combout\ = (\arithmetic_logical_unit|mu1|Mux1~2_combout\) # ((\arithmetic_logical_unit|mu1|Mux4~3_combout\ & (\arithmetic_logical_unit|op6|la|grey:1:w4|g~combout\ $ 
-- (\arithmetic_logical_unit|op6|full_adders:6:fa|p~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "baea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|mu1|Mux1~2_combout\,
	datab => \arithmetic_logical_unit|op6|la|grey:1:w4|g~combout\,
	datac => \arithmetic_logical_unit|mu1|Mux4~3_combout\,
	datad => \arithmetic_logical_unit|op6|full_adders:6:fa|p~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux1~3_combout\);

-- Location: LC_X12_Y7_N2
\arithmetic_logical_unit|op6|full_adders:7:fa|s\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|op6|full_adders:7:fa|s~combout\ = \arithmetic_logical_unit|op6|full_adders:7:fa|p~0_combout\ $ (((\arithmetic_logical_unit|op6|la|grey:2:w4|g~1_combout\) # ((\arithmetic_logical_unit|op6|la|grey:2:w4|g~0_combout\ & 
-- \arithmetic_logical_unit|op6|la|w2|g~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "565a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \arithmetic_logical_unit|op6|full_adders:7:fa|p~0_combout\,
	datab => \arithmetic_logical_unit|op6|la|grey:2:w4|g~0_combout\,
	datac => \arithmetic_logical_unit|op6|la|grey:2:w4|g~1_combout\,
	datad => \arithmetic_logical_unit|op6|la|w2|g~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|op6|full_adders:7:fa|s~combout\);

-- Location: LC_X12_Y9_N7
\arithmetic_logical_unit|mu1|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux0~0_combout\ = (\input_vector~combout\(7) & ((\input_vector~combout\(14) & (\input_vector~combout\(15) & !\input_vector~combout\(16))) # (!\input_vector~combout\(14) & (!\input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0282",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \input_vector~combout\(14),
	datac => \input_vector~combout\(15),
	datad => \input_vector~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux0~0_combout\);

-- Location: LC_X12_Y9_N8
\arithmetic_logical_unit|mu1|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux0~1_combout\ = (\arithmetic_logical_unit|mu1|Mux0~0_combout\) # ((\input_vector~combout\(15) & (!\input_vector~combout\(14) & !\arithmetic_logical_unit|enable|sel[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(15),
	datab => \arithmetic_logical_unit|mu1|Mux0~0_combout\,
	datac => \input_vector~combout\(14),
	datad => \arithmetic_logical_unit|enable|sel[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux0~1_combout\);

-- Location: LC_X12_Y7_N3
\arithmetic_logical_unit|mu1|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \arithmetic_logical_unit|mu1|Mux0~2_combout\ = (\input_vector~combout\(17) & ((\arithmetic_logical_unit|mu1|Mux0~1_combout\) # ((\arithmetic_logical_unit|op6|full_adders:7:fa|s~combout\ & \arithmetic_logical_unit|mu1|Mux4~3_combout\)))) # 
-- (!\input_vector~combout\(17) & (\arithmetic_logical_unit|op6|full_adders:7:fa|s~combout\ & (\arithmetic_logical_unit|mu1|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(17),
	datab => \arithmetic_logical_unit|op6|full_adders:7:fa|s~combout\,
	datac => \arithmetic_logical_unit|mu1|Mux4~3_combout\,
	datad => \arithmetic_logical_unit|mu1|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \arithmetic_logical_unit|mu1|Mux0~2_combout\);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \arithmetic_logical_unit|op6|la|w5|g~2_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \arithmetic_logical_unit|op6|o~combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \arithmetic_logical_unit|mu1|Mux7~4_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \arithmetic_logical_unit|mu1|Mux6~5_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \arithmetic_logical_unit|mu1|Mux5~5_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \arithmetic_logical_unit|mu1|Mux4~4_combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \arithmetic_logical_unit|mu1|Mux3~3_combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \arithmetic_logical_unit|mu1|Mux2~3_combout\,
	oe => VCC,
	padio => ww_output_vector(7));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \arithmetic_logical_unit|mu1|Mux1~3_combout\,
	oe => VCC,
	padio => ww_output_vector(8));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \arithmetic_logical_unit|mu1|Mux0~2_combout\,
	oe => VCC,
	padio => ww_output_vector(9));
END structure;


