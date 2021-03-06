-- megafunction wizard: %LPM_CLSHIFT%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_CLSHIFT 

-- ============================================================
-- File Name: shifter.vhd
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

ENTITY shifter IS
	PORT
	(
		data		: IN STD_LOGIC_VECTOR (24 DOWNTO 0);
		distance		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (24 DOWNTO 0)
	);
END shifter;


ARCHITECTURE SYN OF shifter IS

	SIGNAL sub_wire0	: STD_LOGIC ;
	SIGNAL sub_wire1	: STD_LOGIC_VECTOR (24 DOWNTO 0);



	COMPONENT lpm_clshift
	GENERIC (
		lpm_shifttype		: STRING;
		lpm_type		: STRING;
		lpm_width		: NATURAL;
		lpm_widthdist		: NATURAL
	);
	PORT (
			data	: IN STD_LOGIC_VECTOR (24 DOWNTO 0);
			direction	: IN STD_LOGIC ;
			distance	: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
			result	: OUT STD_LOGIC_VECTOR (24 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	sub_wire0    <= '1';
	result    <= sub_wire1(24 DOWNTO 0);

	LPM_CLSHIFT_component : LPM_CLSHIFT
	GENERIC MAP (
		lpm_shifttype => "ARITHMETIC",
		lpm_type => "LPM_CLSHIFT",
		lpm_width => 25,
		lpm_widthdist => 5
	)
	PORT MAP (
		data => data,
		direction => sub_wire0,
		distance => distance,
		result => sub_wire1
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "MAX V"
-- Retrieval info: PRIVATE: LPM_SHIFTTYPE NUMERIC "1"
-- Retrieval info: PRIVATE: LPM_WIDTH NUMERIC "25"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: lpm_widthdist NUMERIC "5"
-- Retrieval info: PRIVATE: lpm_widthdist_style NUMERIC "0"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: PRIVATE: port_direction NUMERIC "1"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_SHIFTTYPE STRING "ARITHMETIC"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_CLSHIFT"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "25"
-- Retrieval info: CONSTANT: LPM_WIDTHDIST NUMERIC "5"
-- Retrieval info: USED_PORT: data 0 0 25 0 INPUT NODEFVAL "data[24..0]"
-- Retrieval info: USED_PORT: distance 0 0 5 0 INPUT NODEFVAL "distance[4..0]"
-- Retrieval info: USED_PORT: result 0 0 25 0 OUTPUT NODEFVAL "result[24..0]"
-- Retrieval info: CONNECT: @data 0 0 25 0 data 0 0 25 0
-- Retrieval info: CONNECT: @direction 0 0 0 0 VCC 0 0 0 0
-- Retrieval info: CONNECT: @distance 0 0 5 0 distance 0 0 5 0
-- Retrieval info: CONNECT: result 0 0 25 0 @result 0 0 25 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL shifter.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL shifter.inc TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL shifter.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL shifter.bsf TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL shifter_inst.vhd TRUE
