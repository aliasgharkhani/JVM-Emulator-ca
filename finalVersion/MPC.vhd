-- megafunction wizard: %LPM_COUNTER%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_COUNTER 

-- ============================================================
-- File Name: MPC.vhd
-- Megafunction Name(s):
-- 			LPM_COUNTER
--
-- Simulation Library Files(s):
-- 			lpm
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

ENTITY MPC IS
	PORT
	(
		aset		: IN STD_LOGIC ;
		clock		: IN STD_LOGIC ;
		cnt_en		: IN STD_LOGIC ;
		data		: IN STD_LOGIC_VECTOR (8 DOWNTO 0);
		sload		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (8 DOWNTO 0)
	);
END MPC;


ARCHITECTURE SYN OF mpc IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (8 DOWNTO 0);



	COMPONENT lpm_counter
	GENERIC (
		lpm_avalue		: STRING;
		lpm_direction		: STRING;
		lpm_port_updown		: STRING;
		lpm_type		: STRING;
		lpm_width		: NATURAL
	);
	PORT (
			aset	: IN STD_LOGIC ;
			clock	: IN STD_LOGIC ;
			cnt_en	: IN STD_LOGIC ;
			data	: IN STD_LOGIC_VECTOR (8 DOWNTO 0);
			sload	: IN STD_LOGIC ;
			q	: OUT STD_LOGIC_VECTOR (8 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	q    <= sub_wire0(8 DOWNTO 0);

	LPM_COUNTER_component : LPM_COUNTER
	GENERIC MAP (
		lpm_avalue => "256",
		lpm_direction => "UP",
		lpm_port_updown => "PORT_UNUSED",
		lpm_type => "LPM_COUNTER",
		lpm_width => 9
	)
	PORT MAP (
		aset => aset,
		clock => clock,
		cnt_en => cnt_en,
		data => data,
		sload => sload,
		q => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: ACLR NUMERIC "0"
-- Retrieval info: PRIVATE: ALOAD NUMERIC "0"
-- Retrieval info: PRIVATE: ASET NUMERIC "1"
-- Retrieval info: PRIVATE: ASET_ALL1 NUMERIC "0"
-- Retrieval info: PRIVATE: CLK_EN NUMERIC "0"
-- Retrieval info: PRIVATE: CNT_EN NUMERIC "1"
-- Retrieval info: PRIVATE: CarryIn NUMERIC "0"
-- Retrieval info: PRIVATE: CarryOut NUMERIC "0"
-- Retrieval info: PRIVATE: Direction NUMERIC "0"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
-- Retrieval info: PRIVATE: ModulusCounter NUMERIC "0"
-- Retrieval info: PRIVATE: ModulusValue NUMERIC "0"
-- Retrieval info: PRIVATE: SCLR NUMERIC "0"
-- Retrieval info: PRIVATE: SLOAD NUMERIC "1"
-- Retrieval info: PRIVATE: SSET NUMERIC "0"
-- Retrieval info: PRIVATE: SSET_ALL1 NUMERIC "0"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: nBit NUMERIC "9"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_AVALUE STRING "256"
-- Retrieval info: CONSTANT: LPM_DIRECTION STRING "UP"
-- Retrieval info: CONSTANT: LPM_PORT_UPDOWN STRING "PORT_UNUSED"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_COUNTER"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "9"
-- Retrieval info: USED_PORT: aset 0 0 0 0 INPUT NODEFVAL "aset"
-- Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
-- Retrieval info: USED_PORT: cnt_en 0 0 0 0 INPUT NODEFVAL "cnt_en"
-- Retrieval info: USED_PORT: data 0 0 9 0 INPUT NODEFVAL "data[8..0]"
-- Retrieval info: USED_PORT: q 0 0 9 0 OUTPUT NODEFVAL "q[8..0]"
-- Retrieval info: USED_PORT: sload 0 0 0 0 INPUT NODEFVAL "sload"
-- Retrieval info: CONNECT: @aset 0 0 0 0 aset 0 0 0 0
-- Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
-- Retrieval info: CONNECT: @cnt_en 0 0 0 0 cnt_en 0 0 0 0
-- Retrieval info: CONNECT: @data 0 0 9 0 data 0 0 9 0
-- Retrieval info: CONNECT: @sload 0 0 0 0 sload 0 0 0 0
-- Retrieval info: CONNECT: q 0 0 9 0 @q 0 0 9 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL MPC.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL MPC.inc TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL MPC.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL MPC.bsf TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL MPC_inst.vhd TRUE
-- Retrieval info: LIB_FILE: lpm