-- megafunction wizard: %LPM_CLSHIFT%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_CLSHIFT 

-- ============================================================
-- File Name: ALU_SHIFTER.vhd
-- Megafunction Name(s):
-- 			LPM_CLSHIFT
--
-- Simulation Library Files(s):
-- 			
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 15.1.0 Build 185 10/21/2015 SJ Lite Edition
-- ************************************************************


--Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, the Altera Quartus Prime License Agreement,
--the Altera MegaCore Function License Agreement, or other 
--applicable license agreement, including, without limitation, 
--that your use is for the sole purpose of programming logic 
--devices manufactured by Altera and sold by Altera or its 
--authorized distributors.  Please refer to the applicable 
--agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY ALU_SHIFTER IS
	PORT
	(
		data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		direction		: IN STD_LOGIC ;
		distance		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END ALU_SHIFTER;


ARCHITECTURE SYN OF alu_shifter IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (31 DOWNTO 0);



	COMPONENT lpm_clshift
	GENERIC (
		lpm_shifttype		: STRING;
		lpm_type		: STRING;
		lpm_width		: NATURAL;
		lpm_widthdist		: NATURAL
	);
	PORT (
			data	: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			direction	: IN STD_LOGIC ;
			distance	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			result	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	result    <= sub_wire0(31 DOWNTO 0);

	LPM_CLSHIFT_component : LPM_CLSHIFT
	GENERIC MAP (
		lpm_shifttype => "ARITHMETIC",
		lpm_type => "LPM_CLSHIFT",
		lpm_width => 32,
		lpm_widthdist => 4
	)
	PORT MAP (
		data => data,
		direction => direction,
		distance => distance,
		result => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV GX"
-- Retrieval info: PRIVATE: LPM_SHIFTTYPE NUMERIC "1"
-- Retrieval info: PRIVATE: LPM_WIDTH NUMERIC "32"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: lpm_widthdist NUMERIC "4"
-- Retrieval info: PRIVATE: lpm_widthdist_style NUMERIC "1"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: PRIVATE: port_direction NUMERIC "2"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_SHIFTTYPE STRING "ARITHMETIC"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_CLSHIFT"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "32"
-- Retrieval info: CONSTANT: LPM_WIDTHDIST NUMERIC "4"
-- Retrieval info: USED_PORT: data 0 0 32 0 INPUT NODEFVAL "data[31..0]"
-- Retrieval info: USED_PORT: direction 0 0 0 0 INPUT NODEFVAL "direction"
-- Retrieval info: USED_PORT: distance 0 0 4 0 INPUT NODEFVAL "distance[3..0]"
-- Retrieval info: USED_PORT: result 0 0 32 0 OUTPUT NODEFVAL "result[31..0]"
-- Retrieval info: CONNECT: @data 0 0 32 0 data 0 0 32 0
-- Retrieval info: CONNECT: @direction 0 0 0 0 direction 0 0 0 0
-- Retrieval info: CONNECT: @distance 0 0 4 0 distance 0 0 4 0
-- Retrieval info: CONNECT: result 0 0 32 0 @result 0 0 32 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL ALU_SHIFTER.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ALU_SHIFTER.inc TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ALU_SHIFTER.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ALU_SHIFTER.bsf TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ALU_SHIFTER_inst.vhd TRUE
