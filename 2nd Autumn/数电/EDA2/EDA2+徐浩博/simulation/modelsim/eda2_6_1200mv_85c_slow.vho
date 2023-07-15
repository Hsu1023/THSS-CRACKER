-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "12/13/2021 01:18:07"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	eda2 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	IN_5c : IN std_logic;
	IN_10c : IN std_logic;
	IN_50c : IN std_logic;
	OUT_15c : IN std_logic;
	OUT_25c : IN std_logic;
	error : OUT std_logic;
	success : OUT std_logic;
	wordout : OUT std_logic_vector(6 DOWNTO 0);
	segout : OUT std_logic_vector(5 DOWNTO 0)
	);
END eda2;

-- Design Ports Information
-- error	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- success	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wordout[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wordout[1]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wordout[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wordout[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wordout[4]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wordout[5]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wordout[6]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[3]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[4]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[5]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_5c	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_15c	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_25c	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_10c	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_50c	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF eda2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_IN_5c : std_logic;
SIGNAL ww_IN_10c : std_logic;
SIGNAL ww_IN_50c : std_logic;
SIGNAL ww_OUT_15c : std_logic;
SIGNAL ww_OUT_25c : std_logic;
SIGNAL ww_error : std_logic;
SIGNAL ww_success : std_logic;
SIGNAL ww_wordout : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segout : std_logic_vector(5 DOWNTO 0);
SIGNAL \my_clock|count[15]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[0]~10_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_calculator|Add4~6_combout\ : std_logic;
SIGNAL \my_calculator|Add3~4_combout\ : std_logic;
SIGNAL \my_calculator|Add3~10_combout\ : std_logic;
SIGNAL \my_calculator|Add3~16_combout\ : std_logic;
SIGNAL \my_calculator|Add0~0_combout\ : std_logic;
SIGNAL \my_calculator|Add2~0_combout\ : std_logic;
SIGNAL \my_calculator|Add2~2_combout\ : std_logic;
SIGNAL \my_calculator|Add2~4_combout\ : std_logic;
SIGNAL \my_calculator|Add2~6_combout\ : std_logic;
SIGNAL \my_calculator|Add2~12_combout\ : std_logic;
SIGNAL \my_calculator|Add2~14_combout\ : std_logic;
SIGNAL \my_calculator|Add1~15\ : std_logic;
SIGNAL \my_calculator|Add1~16_combout\ : std_logic;
SIGNAL \my_clock|count[1]~15_combout\ : std_logic;
SIGNAL \my_clock|count[1]~16\ : std_logic;
SIGNAL \my_clock|count[2]~17_combout\ : std_logic;
SIGNAL \my_clock|count[2]~18\ : std_logic;
SIGNAL \my_clock|count[3]~19_combout\ : std_logic;
SIGNAL \my_clock|count[3]~20\ : std_logic;
SIGNAL \my_clock|count[4]~21_combout\ : std_logic;
SIGNAL \my_clock|count[4]~22\ : std_logic;
SIGNAL \my_clock|count[5]~23_combout\ : std_logic;
SIGNAL \my_clock|count[5]~24\ : std_logic;
SIGNAL \my_clock|count[6]~25_combout\ : std_logic;
SIGNAL \my_clock|count[6]~26\ : std_logic;
SIGNAL \my_clock|count[7]~27_combout\ : std_logic;
SIGNAL \my_clock|count[7]~28\ : std_logic;
SIGNAL \my_clock|count[8]~29_combout\ : std_logic;
SIGNAL \my_clock|count[8]~30\ : std_logic;
SIGNAL \my_clock|count[9]~31_combout\ : std_logic;
SIGNAL \my_clock|count[9]~32\ : std_logic;
SIGNAL \my_clock|count[10]~33_combout\ : std_logic;
SIGNAL \my_clock|count[10]~34\ : std_logic;
SIGNAL \my_clock|count[11]~35_combout\ : std_logic;
SIGNAL \my_clock|count[11]~36\ : std_logic;
SIGNAL \my_clock|count[12]~37_combout\ : std_logic;
SIGNAL \my_clock|count[12]~38\ : std_logic;
SIGNAL \my_clock|count[13]~39_combout\ : std_logic;
SIGNAL \my_clock|count[13]~40\ : std_logic;
SIGNAL \my_clock|count[14]~41_combout\ : std_logic;
SIGNAL \my_clock|count[14]~42\ : std_logic;
SIGNAL \my_clock|count[15]~43_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[54]~55_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[70]~76_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[56]~82_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[56]~83_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[65]~84_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[18]~57_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[33]~76_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[42]~89_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[41]~90_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[33]~36_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~43_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~45_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[35]~48_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux2~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[18]~56_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~58_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[16]~60_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~62_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~68_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[28]~70_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~72_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~75_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[33]~76_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~79_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[30]~80_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[38]~82_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~83_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[36]~85_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[35]~86_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[40]~89_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[43]~90_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~93_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux0~3_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux0~4_combout\ : std_logic;
SIGNAL \my_FSM|next[2]~0_combout\ : std_logic;
SIGNAL \my_FSM|next[2]~1_combout\ : std_logic;
SIGNAL \my_FSM|next[1]~3_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[69]~86_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[68]~87_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[28]~94_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[38]~96_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[43]~97_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[43]~54_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[62]~88_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[67]~92_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[23]~98_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[38]~56_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[23]~98_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~101_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~103_combout\ : std_logic;
SIGNAL \my_clock|count[0]~45_combout\ : std_logic;
SIGNAL \OUT_25c~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \my_clock|count[15]~clkctrl_outclk\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \error~output_o\ : std_logic;
SIGNAL \success~output_o\ : std_logic;
SIGNAL \wordout[0]~output_o\ : std_logic;
SIGNAL \wordout[1]~output_o\ : std_logic;
SIGNAL \wordout[2]~output_o\ : std_logic;
SIGNAL \wordout[3]~output_o\ : std_logic;
SIGNAL \wordout[4]~output_o\ : std_logic;
SIGNAL \wordout[5]~output_o\ : std_logic;
SIGNAL \wordout[6]~output_o\ : std_logic;
SIGNAL \segout[0]~output_o\ : std_logic;
SIGNAL \segout[1]~output_o\ : std_logic;
SIGNAL \segout[2]~output_o\ : std_logic;
SIGNAL \segout[3]~output_o\ : std_logic;
SIGNAL \segout[4]~output_o\ : std_logic;
SIGNAL \segout[5]~output_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \IN_5c~input_o\ : std_logic;
SIGNAL \IN_10c~input_o\ : std_logic;
SIGNAL \OUT_15c~input_o\ : std_logic;
SIGNAL \IN_50c~input_o\ : std_logic;
SIGNAL \my_FSM|next[0]~4_combout\ : std_logic;
SIGNAL \my_FSM|next[0]~5_combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \my_FSM|next[1]~6_combout\ : std_logic;
SIGNAL \my_FSM|next[1]~7_combout\ : std_logic;
SIGNAL \my_FSM|next[2]~2_combout\ : std_logic;
SIGNAL \my_calculator|Add4~1\ : std_logic;
SIGNAL \my_calculator|Add4~3\ : std_logic;
SIGNAL \my_calculator|Add4~4_combout\ : std_logic;
SIGNAL \my_calculator|Mux4~1_combout\ : std_logic;
SIGNAL \my_calculator|Add4~0_combout\ : std_logic;
SIGNAL \my_calculator|Mux13~0_combout\ : std_logic;
SIGNAL \my_calculator|Add3~0_combout\ : std_logic;
SIGNAL \my_calculator|Mux13~1_combout\ : std_logic;
SIGNAL \my_calculator|Mux1~0_combout\ : std_logic;
SIGNAL \my_calculator|Add3~1\ : std_logic;
SIGNAL \my_calculator|Add3~2_combout\ : std_logic;
SIGNAL \my_calculator|Add0~1\ : std_logic;
SIGNAL \my_calculator|Add0~2_combout\ : std_logic;
SIGNAL \my_calculator|Add1~0_combout\ : std_logic;
SIGNAL \my_calculator|Mux12~0_combout\ : std_logic;
SIGNAL \my_calculator|Mux12~1_combout\ : std_logic;
SIGNAL \my_calculator|Mux12~2_combout\ : std_logic;
SIGNAL \my_calculator|Add4~2_combout\ : std_logic;
SIGNAL \my_calculator|Mux12~3_combout\ : std_logic;
SIGNAL \my_calculator|Add1~1\ : std_logic;
SIGNAL \my_calculator|Add1~2_combout\ : std_logic;
SIGNAL \my_calculator|Add0~3\ : std_logic;
SIGNAL \my_calculator|Add0~4_combout\ : std_logic;
SIGNAL \my_calculator|Mux11~0_combout\ : std_logic;
SIGNAL \my_calculator|Mux11~1_combout\ : std_logic;
SIGNAL \my_calculator|Mux4~0_combout\ : std_logic;
SIGNAL \my_calculator|Mux11~2_combout\ : std_logic;
SIGNAL \my_calculator|Mux11~3_combout\ : std_logic;
SIGNAL \my_calculator|Add4~5\ : std_logic;
SIGNAL \my_calculator|Add4~7\ : std_logic;
SIGNAL \my_calculator|Add4~9\ : std_logic;
SIGNAL \my_calculator|Add4~11\ : std_logic;
SIGNAL \my_calculator|Add4~13\ : std_logic;
SIGNAL \my_calculator|Add4~14_combout\ : std_logic;
SIGNAL \my_calculator|Add4~10_combout\ : std_logic;
SIGNAL \my_calculator|Add2~1\ : std_logic;
SIGNAL \my_calculator|Add2~3\ : std_logic;
SIGNAL \my_calculator|Add2~5\ : std_logic;
SIGNAL \my_calculator|Add2~7\ : std_logic;
SIGNAL \my_calculator|Add2~8_combout\ : std_logic;
SIGNAL \my_calculator|Add4~8_combout\ : std_logic;
SIGNAL \my_calculator|Add1~3\ : std_logic;
SIGNAL \my_calculator|Add1~5\ : std_logic;
SIGNAL \my_calculator|Add1~6_combout\ : std_logic;
SIGNAL \my_calculator|Add0~5\ : std_logic;
SIGNAL \my_calculator|Add0~7\ : std_logic;
SIGNAL \my_calculator|Add0~8_combout\ : std_logic;
SIGNAL \my_calculator|Add3~3\ : std_logic;
SIGNAL \my_calculator|Add3~5\ : std_logic;
SIGNAL \my_calculator|Add3~7\ : std_logic;
SIGNAL \my_calculator|Add3~8_combout\ : std_logic;
SIGNAL \my_calculator|Mux9~0_combout\ : std_logic;
SIGNAL \my_calculator|Mux9~1_combout\ : std_logic;
SIGNAL \my_calculator|Mux9~2_combout\ : std_logic;
SIGNAL \my_calculator|Add0~9\ : std_logic;
SIGNAL \my_calculator|Add0~10_combout\ : std_logic;
SIGNAL \my_calculator|Add1~7\ : std_logic;
SIGNAL \my_calculator|Add1~8_combout\ : std_logic;
SIGNAL \my_calculator|Mux8~0_combout\ : std_logic;
SIGNAL \my_calculator|Mux8~1_combout\ : std_logic;
SIGNAL \my_calculator|Mux8~2_combout\ : std_logic;
SIGNAL \my_calculator|Add3~9\ : std_logic;
SIGNAL \my_calculator|Add3~11\ : std_logic;
SIGNAL \my_calculator|Add3~13\ : std_logic;
SIGNAL \my_calculator|Add3~14_combout\ : std_logic;
SIGNAL \my_calculator|Add4~12_combout\ : std_logic;
SIGNAL \my_calculator|Add1~9\ : std_logic;
SIGNAL \my_calculator|Add1~10_combout\ : std_logic;
SIGNAL \my_calculator|Add2~9\ : std_logic;
SIGNAL \my_calculator|Add2~10_combout\ : std_logic;
SIGNAL \my_calculator|Add0~11\ : std_logic;
SIGNAL \my_calculator|Add0~12_combout\ : std_logic;
SIGNAL \my_calculator|Add3~12_combout\ : std_logic;
SIGNAL \my_calculator|Mux7~0_combout\ : std_logic;
SIGNAL \my_calculator|Mux7~1_combout\ : std_logic;
SIGNAL \my_calculator|Mux7~2_combout\ : std_logic;
SIGNAL \my_calculator|Add1~11\ : std_logic;
SIGNAL \my_calculator|Add1~12_combout\ : std_logic;
SIGNAL \my_calculator|Add0~13\ : std_logic;
SIGNAL \my_calculator|Add0~14_combout\ : std_logic;
SIGNAL \my_calculator|Mux6~0_combout\ : std_logic;
SIGNAL \my_calculator|Mux6~1_combout\ : std_logic;
SIGNAL \my_calculator|Mux6~2_combout\ : std_logic;
SIGNAL \my_calculator|Add4~15\ : std_logic;
SIGNAL \my_calculator|Add4~17\ : std_logic;
SIGNAL \my_calculator|Add4~18_combout\ : std_logic;
SIGNAL \my_calculator|Add4~16_combout\ : std_logic;
SIGNAL \my_calculator|Add1~13\ : std_logic;
SIGNAL \my_calculator|Add1~14_combout\ : std_logic;
SIGNAL \my_calculator|Add0~15\ : std_logic;
SIGNAL \my_calculator|Add0~16_combout\ : std_logic;
SIGNAL \my_calculator|Mux5~0_combout\ : std_logic;
SIGNAL \my_calculator|Mux5~1_combout\ : std_logic;
SIGNAL \my_calculator|Mux5~2_combout\ : std_logic;
SIGNAL \my_calculator|Add3~15\ : std_logic;
SIGNAL \my_calculator|Add3~17\ : std_logic;
SIGNAL \my_calculator|Add3~18_combout\ : std_logic;
SIGNAL \my_calculator|Add2~11\ : std_logic;
SIGNAL \my_calculator|Add2~13\ : std_logic;
SIGNAL \my_calculator|Add2~15\ : std_logic;
SIGNAL \my_calculator|Add2~16_combout\ : std_logic;
SIGNAL \my_calculator|Mux4~2_combout\ : std_logic;
SIGNAL \my_calculator|Add0~17\ : std_logic;
SIGNAL \my_calculator|Add0~18_combout\ : std_logic;
SIGNAL \my_calculator|Mux4~3_combout\ : std_logic;
SIGNAL \my_calculator|Mux4~4_combout\ : std_logic;
SIGNAL \my_calculator|Mux0~1_combout\ : std_logic;
SIGNAL \my_calculator|Mux0~2_combout\ : std_logic;
SIGNAL \my_calculator|Mux0~0_combout\ : std_logic;
SIGNAL \my_calculator|Mux0~3_combout\ : std_logic;
SIGNAL \my_calculator|Mux0~4_combout\ : std_logic;
SIGNAL \my_calculator|Add3~6_combout\ : std_logic;
SIGNAL \my_calculator|Add0~6_combout\ : std_logic;
SIGNAL \my_calculator|Add1~4_combout\ : std_logic;
SIGNAL \my_calculator|Mux10~0_combout\ : std_logic;
SIGNAL \my_calculator|Mux10~1_combout\ : std_logic;
SIGNAL \my_calculator|Mux10~2_combout\ : std_logic;
SIGNAL \my_calculator|Mux10~3_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~59_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[16]~61_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[18]~57_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~99_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[21]~67_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~69_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~100_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[28]~94_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~71_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~73_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~74_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[33]~95_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~77_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~78_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[30]~81_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[36]~84_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[38]~96_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~102_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~91_combout\ : std_logic;
SIGNAL \my_counter|wordselector[0]~1_combout\ : std_logic;
SIGNAL \my_counter|wordselector[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[43]~97_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~92_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[40]~88_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux0~1_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[32]~38_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[31]~41_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~42_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[38]~44_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[33]~37_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~57_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~46_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[33]~95_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[35]~47_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~50_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~59_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[38]~82_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~52_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[43]~49_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~7\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux0~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~55_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux0~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux0~5_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[62]~66_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[48]~74_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[48]~73_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~75_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ : std_logic;
SIGNAL \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux2~1_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ : std_logic;
SIGNAL \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\ : std_logic;
SIGNAL \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\ : std_logic;
SIGNAL \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux1~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux1~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux1~3_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux1~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~51_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux1~1_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux1~5_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[69]~77_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[68]~78_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[66]~93_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux3~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux3~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[43]~88_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[42]~103_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[41]~91_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[40]~93_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux3~1_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux3~3_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux2~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux2~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux2~3_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux2~5_combout\ : std_logic;
SIGNAL \my_numbertranslator|WideOr6~0_combout\ : std_logic;
SIGNAL \my_numbertranslator|WideOr5~0_combout\ : std_logic;
SIGNAL \my_numbertranslator|WideOr4~0_combout\ : std_logic;
SIGNAL \my_numbertranslator|WideOr3~0_combout\ : std_logic;
SIGNAL \my_numbertranslator|WideOr2~0_combout\ : std_logic;
SIGNAL \my_numbertranslator|WideOr1~0_combout\ : std_logic;
SIGNAL \my_numbertranslator|WideOr0~0_combout\ : std_logic;
SIGNAL \my_segtranslator|Decoder0~0_combout\ : std_logic;
SIGNAL \my_segtranslator|Decoder0~1_combout\ : std_logic;
SIGNAL \my_clock|count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \my_counter|wordselector\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \my_calculator|sum\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \my_FSM|state\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \my_segtranslator|ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \my_segtranslator|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \my_numbertranslator|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|ALT_INV_Mux2~1_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_IN_5c <= IN_5c;
ww_IN_10c <= IN_10c;
ww_IN_50c <= IN_50c;
ww_OUT_15c <= OUT_15c;
ww_OUT_25c <= OUT_25c;
error <= ww_error;
success <= ww_success;
wordout <= ww_wordout;
segout <= ww_segout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\my_clock|count[15]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \my_clock|count\(15));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\my_segtranslator|ALT_INV_Decoder0~1_combout\ <= NOT \my_segtranslator|Decoder0~1_combout\;
\my_segtranslator|ALT_INV_Decoder0~0_combout\ <= NOT \my_segtranslator|Decoder0~0_combout\;
\my_numbertranslator|ALT_INV_WideOr0~0_combout\ <= NOT \my_numbertranslator|WideOr0~0_combout\;
\my_gettempnumber|ALT_INV_Mux2~1_combout\ <= NOT \my_gettempnumber|Mux2~1_combout\;

-- Location: LCCOMB_X10_Y12_N12
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \my_calculator|sum\(5) $ (VCC)
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\my_calculator|sum\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(5),
	datad => VCC,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X10_Y12_N20
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\my_calculator|sum\(9) & (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\my_calculator|sum\(9) & 
-- (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\my_calculator|sum\(9) & !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(9),
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X19_Y11_N0
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\) # 
-- (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\)))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X19_Y11_N2
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & 
-- (((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\)))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & 
-- (!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\ & (!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\)))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\ & (!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\ & 
-- !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X19_Y11_N4
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & 
-- ((((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\))))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ 
-- & ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\) # ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\) # (GND))))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\) # ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\) # 
-- (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X19_Y11_N6
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\ & 
-- (((!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\ & ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\ 
-- & (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\ & ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) 
-- # (GND)))))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\ & !\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\)) 
-- # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X14_Y14_N0
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ = (((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\) # 
-- (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~75_combout\)))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ = CARRY((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~75_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\);

-- Location: LCCOMB_X14_Y14_N4
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & 
-- ((((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\))))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ 
-- & ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\) # ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\) # (GND))))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ = CARRY((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\) # ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\) # 
-- (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\);

-- Location: LCCOMB_X14_Y14_N8
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & 
-- (((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\)))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & 
-- ((((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\)))))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ = CARRY((!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\) 
-- # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\);

-- Location: LCCOMB_X14_Y11_N26
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[56]~83_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[56]~82_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[56]~83_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[56]~82_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\);

-- Location: LCCOMB_X19_Y17_N20
\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (!\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ & VCC)) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ $ (GND)))
-- \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\ = CARRY((!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- !\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\,
	combout => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\,
	cout => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\);

-- Location: LCCOMB_X13_Y12_N10
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\my_calculator|sum\(8) & (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\my_calculator|sum\(8) & 
-- (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\my_calculator|sum\(8) & !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(8),
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X13_Y12_N12
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\my_calculator|sum\(9) & (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\my_calculator|sum\(9) & 
-- (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\my_calculator|sum\(9) & !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(9),
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X13_Y12_N22
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\) # 
-- (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\)))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X16_Y12_N10
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # 
-- (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\)))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X16_Y12_N12
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\)))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\ & (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\)))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\ & (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X16_Y12_N14
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- (((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\)))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ 
-- & ((((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\)))))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- ((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X17_Y12_N6
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\) # 
-- (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\)))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X17_Y13_N4
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & 
-- (((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\)))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & 
-- (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\ & (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\)))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\ & (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X19_Y12_N12
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC))
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X18_Y12_N20
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ = !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\);

-- Location: LCCOMB_X18_Y12_N12
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & 
-- (((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\) # (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[31]~41_combout\)))) # (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & 
-- (!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ & (!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[31]~41_combout\)))
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ & (!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[31]~41_combout\ & 
-- !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[31]~41_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X18_Y13_N0
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[0]~10_combout\ = !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[0]~10_combout\);

-- Location: LCCOMB_X21_Y12_N2
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ & 
-- (((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~51_combout\) # (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~59_combout\)))) # (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ & 
-- (!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~51_combout\ & (!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~59_combout\)))
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ = CARRY((!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~51_combout\ & (!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~59_combout\ & 
-- !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~51_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~59_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~3\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\,
	cout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~5\);

-- Location: LCCOMB_X11_Y13_N2
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[16]~60_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[16]~61_combout\)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[16]~60_combout\ & (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[16]~61_combout\)))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[16]~60_combout\ & (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[16]~61_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[16]~60_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[16]~61_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X12_Y13_N10
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~65_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~99_combout\)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~65_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~99_combout\)))))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~65_combout\) 
-- # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~99_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X16_Y13_N20
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~100_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~71_combout\)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ 
-- & ((((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~100_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~71_combout\)))))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- ((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~100_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~100_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~71_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X19_Y13_N4
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[30]~80_combout\) # 
-- (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[30]~81_combout\)))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[30]~80_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[30]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[30]~80_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[30]~81_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X19_Y13_N8
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~101_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~77_combout\)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ 
-- & ((((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~101_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~77_combout\)))))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- ((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~101_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~101_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~77_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X21_Y13_N16
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & 
-- (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~83_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~102_combout\)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ 
-- & ((((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~83_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~102_combout\)))))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~83_combout\) 
-- # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~83_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~102_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X21_Y13_N4
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & 
-- (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~103_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~91_combout\)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ 
-- & ((((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~103_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~91_combout\)))))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & 
-- ((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~103_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~103_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~91_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X12_Y11_N10
\my_calculator|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add4~6_combout\ = (\my_calculator|sum\(3) & (!\my_calculator|Add4~5\)) # (!\my_calculator|sum\(3) & ((\my_calculator|Add4~5\) # (GND)))
-- \my_calculator|Add4~7\ = CARRY((!\my_calculator|Add4~5\) # (!\my_calculator|sum\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(3),
	datad => VCC,
	cin => \my_calculator|Add4~5\,
	combout => \my_calculator|Add4~6_combout\,
	cout => \my_calculator|Add4~7\);

-- Location: LCCOMB_X10_Y11_N10
\my_calculator|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add3~4_combout\ = (\my_calculator|sum\(2) & (\my_calculator|Add3~3\ $ (GND))) # (!\my_calculator|sum\(2) & (!\my_calculator|Add3~3\ & VCC))
-- \my_calculator|Add3~5\ = CARRY((\my_calculator|sum\(2) & !\my_calculator|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(2),
	datad => VCC,
	cin => \my_calculator|Add3~3\,
	combout => \my_calculator|Add3~4_combout\,
	cout => \my_calculator|Add3~5\);

-- Location: LCCOMB_X10_Y11_N16
\my_calculator|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add3~10_combout\ = (\my_calculator|sum\(5) & (\my_calculator|Add3~9\ & VCC)) # (!\my_calculator|sum\(5) & (!\my_calculator|Add3~9\))
-- \my_calculator|Add3~11\ = CARRY((!\my_calculator|sum\(5) & !\my_calculator|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(5),
	datad => VCC,
	cin => \my_calculator|Add3~9\,
	combout => \my_calculator|Add3~10_combout\,
	cout => \my_calculator|Add3~11\);

-- Location: LCCOMB_X10_Y11_N22
\my_calculator|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add3~16_combout\ = (\my_calculator|sum\(8) & ((GND) # (!\my_calculator|Add3~15\))) # (!\my_calculator|sum\(8) & (\my_calculator|Add3~15\ $ (GND)))
-- \my_calculator|Add3~17\ = CARRY((\my_calculator|sum\(8)) # (!\my_calculator|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(8),
	datad => VCC,
	cin => \my_calculator|Add3~15\,
	combout => \my_calculator|Add3~16_combout\,
	cout => \my_calculator|Add3~17\);

-- Location: LCCOMB_X8_Y11_N8
\my_calculator|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add0~0_combout\ = \my_calculator|sum\(0) $ (VCC)
-- \my_calculator|Add0~1\ = CARRY(\my_calculator|sum\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(0),
	datad => VCC,
	combout => \my_calculator|Add0~0_combout\,
	cout => \my_calculator|Add0~1\);

-- Location: LCCOMB_X9_Y11_N0
\my_calculator|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add2~0_combout\ = \my_calculator|sum\(1) $ (VCC)
-- \my_calculator|Add2~1\ = CARRY(\my_calculator|sum\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(1),
	datad => VCC,
	combout => \my_calculator|Add2~0_combout\,
	cout => \my_calculator|Add2~1\);

-- Location: LCCOMB_X9_Y11_N2
\my_calculator|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add2~2_combout\ = (\my_calculator|sum\(2) & (!\my_calculator|Add2~1\)) # (!\my_calculator|sum\(2) & ((\my_calculator|Add2~1\) # (GND)))
-- \my_calculator|Add2~3\ = CARRY((!\my_calculator|Add2~1\) # (!\my_calculator|sum\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(2),
	datad => VCC,
	cin => \my_calculator|Add2~1\,
	combout => \my_calculator|Add2~2_combout\,
	cout => \my_calculator|Add2~3\);

-- Location: LCCOMB_X9_Y11_N4
\my_calculator|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add2~4_combout\ = (\my_calculator|sum\(3) & (\my_calculator|Add2~3\ $ (GND))) # (!\my_calculator|sum\(3) & (!\my_calculator|Add2~3\ & VCC))
-- \my_calculator|Add2~5\ = CARRY((\my_calculator|sum\(3) & !\my_calculator|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(3),
	datad => VCC,
	cin => \my_calculator|Add2~3\,
	combout => \my_calculator|Add2~4_combout\,
	cout => \my_calculator|Add2~5\);

-- Location: LCCOMB_X9_Y11_N6
\my_calculator|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add2~6_combout\ = (\my_calculator|sum\(4) & (\my_calculator|Add2~5\ & VCC)) # (!\my_calculator|sum\(4) & (!\my_calculator|Add2~5\))
-- \my_calculator|Add2~7\ = CARRY((!\my_calculator|sum\(4) & !\my_calculator|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(4),
	datad => VCC,
	cin => \my_calculator|Add2~5\,
	combout => \my_calculator|Add2~6_combout\,
	cout => \my_calculator|Add2~7\);

-- Location: LCCOMB_X9_Y11_N12
\my_calculator|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add2~12_combout\ = (\my_calculator|sum\(7) & (\my_calculator|Add2~11\ $ (GND))) # (!\my_calculator|sum\(7) & (!\my_calculator|Add2~11\ & VCC))
-- \my_calculator|Add2~13\ = CARRY((\my_calculator|sum\(7) & !\my_calculator|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(7),
	datad => VCC,
	cin => \my_calculator|Add2~11\,
	combout => \my_calculator|Add2~12_combout\,
	cout => \my_calculator|Add2~13\);

-- Location: LCCOMB_X9_Y11_N14
\my_calculator|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add2~14_combout\ = (\my_calculator|sum\(8) & (!\my_calculator|Add2~13\)) # (!\my_calculator|sum\(8) & ((\my_calculator|Add2~13\) # (GND)))
-- \my_calculator|Add2~15\ = CARRY((!\my_calculator|Add2~13\) # (!\my_calculator|sum\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(8),
	datad => VCC,
	cin => \my_calculator|Add2~13\,
	combout => \my_calculator|Add2~14_combout\,
	cout => \my_calculator|Add2~15\);

-- Location: LCCOMB_X11_Y11_N28
\my_calculator|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add1~14_combout\ = (\my_calculator|sum\(8) & (!\my_calculator|Add1~13\)) # (!\my_calculator|sum\(8) & ((\my_calculator|Add1~13\) # (GND)))
-- \my_calculator|Add1~15\ = CARRY((!\my_calculator|Add1~13\) # (!\my_calculator|sum\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(8),
	datad => VCC,
	cin => \my_calculator|Add1~13\,
	combout => \my_calculator|Add1~14_combout\,
	cout => \my_calculator|Add1~15\);

-- Location: LCCOMB_X11_Y11_N30
\my_calculator|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add1~16_combout\ = \my_calculator|Add1~15\ $ (!\my_calculator|sum\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \my_calculator|sum\(9),
	cin => \my_calculator|Add1~15\,
	combout => \my_calculator|Add1~16_combout\);

-- Location: FF_X1_Y11_N29
\my_clock|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_clock|count[15]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_clock|count\(15));

-- Location: FF_X1_Y11_N27
\my_clock|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_clock|count[14]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_clock|count\(14));

-- Location: FF_X1_Y11_N25
\my_clock|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_clock|count[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_clock|count\(13));

-- Location: FF_X1_Y11_N23
\my_clock|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_clock|count[12]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_clock|count\(12));

-- Location: FF_X1_Y11_N21
\my_clock|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_clock|count[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_clock|count\(11));

-- Location: FF_X1_Y11_N19
\my_clock|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_clock|count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_clock|count\(10));

-- Location: FF_X1_Y11_N17
\my_clock|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_clock|count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_clock|count\(9));

-- Location: FF_X1_Y11_N15
\my_clock|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_clock|count[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_clock|count\(8));

-- Location: FF_X1_Y11_N13
\my_clock|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_clock|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_clock|count\(7));

-- Location: FF_X1_Y11_N11
\my_clock|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_clock|count[6]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_clock|count\(6));

-- Location: FF_X1_Y11_N9
\my_clock|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_clock|count[5]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_clock|count\(5));

-- Location: FF_X1_Y11_N7
\my_clock|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_clock|count[4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_clock|count\(4));

-- Location: FF_X1_Y11_N5
\my_clock|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_clock|count[3]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_clock|count\(3));

-- Location: FF_X1_Y11_N3
\my_clock|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_clock|count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_clock|count\(2));

-- Location: FF_X1_Y11_N1
\my_clock|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_clock|count[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_clock|count\(1));

-- Location: LCCOMB_X1_Y11_N0
\my_clock|count[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_clock|count[1]~15_combout\ = (\my_clock|count\(0) & (\my_clock|count\(1) $ (VCC))) # (!\my_clock|count\(0) & (\my_clock|count\(1) & VCC))
-- \my_clock|count[1]~16\ = CARRY((\my_clock|count\(0) & \my_clock|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_clock|count\(0),
	datab => \my_clock|count\(1),
	datad => VCC,
	combout => \my_clock|count[1]~15_combout\,
	cout => \my_clock|count[1]~16\);

-- Location: LCCOMB_X1_Y11_N2
\my_clock|count[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_clock|count[2]~17_combout\ = (\my_clock|count\(2) & (!\my_clock|count[1]~16\)) # (!\my_clock|count\(2) & ((\my_clock|count[1]~16\) # (GND)))
-- \my_clock|count[2]~18\ = CARRY((!\my_clock|count[1]~16\) # (!\my_clock|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_clock|count\(2),
	datad => VCC,
	cin => \my_clock|count[1]~16\,
	combout => \my_clock|count[2]~17_combout\,
	cout => \my_clock|count[2]~18\);

-- Location: LCCOMB_X1_Y11_N4
\my_clock|count[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_clock|count[3]~19_combout\ = (\my_clock|count\(3) & (\my_clock|count[2]~18\ $ (GND))) # (!\my_clock|count\(3) & (!\my_clock|count[2]~18\ & VCC))
-- \my_clock|count[3]~20\ = CARRY((\my_clock|count\(3) & !\my_clock|count[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_clock|count\(3),
	datad => VCC,
	cin => \my_clock|count[2]~18\,
	combout => \my_clock|count[3]~19_combout\,
	cout => \my_clock|count[3]~20\);

-- Location: LCCOMB_X1_Y11_N6
\my_clock|count[4]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_clock|count[4]~21_combout\ = (\my_clock|count\(4) & (!\my_clock|count[3]~20\)) # (!\my_clock|count\(4) & ((\my_clock|count[3]~20\) # (GND)))
-- \my_clock|count[4]~22\ = CARRY((!\my_clock|count[3]~20\) # (!\my_clock|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_clock|count\(4),
	datad => VCC,
	cin => \my_clock|count[3]~20\,
	combout => \my_clock|count[4]~21_combout\,
	cout => \my_clock|count[4]~22\);

-- Location: LCCOMB_X1_Y11_N8
\my_clock|count[5]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_clock|count[5]~23_combout\ = (\my_clock|count\(5) & (\my_clock|count[4]~22\ $ (GND))) # (!\my_clock|count\(5) & (!\my_clock|count[4]~22\ & VCC))
-- \my_clock|count[5]~24\ = CARRY((\my_clock|count\(5) & !\my_clock|count[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_clock|count\(5),
	datad => VCC,
	cin => \my_clock|count[4]~22\,
	combout => \my_clock|count[5]~23_combout\,
	cout => \my_clock|count[5]~24\);

-- Location: LCCOMB_X1_Y11_N10
\my_clock|count[6]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_clock|count[6]~25_combout\ = (\my_clock|count\(6) & (!\my_clock|count[5]~24\)) # (!\my_clock|count\(6) & ((\my_clock|count[5]~24\) # (GND)))
-- \my_clock|count[6]~26\ = CARRY((!\my_clock|count[5]~24\) # (!\my_clock|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_clock|count\(6),
	datad => VCC,
	cin => \my_clock|count[5]~24\,
	combout => \my_clock|count[6]~25_combout\,
	cout => \my_clock|count[6]~26\);

-- Location: LCCOMB_X1_Y11_N12
\my_clock|count[7]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_clock|count[7]~27_combout\ = (\my_clock|count\(7) & (\my_clock|count[6]~26\ $ (GND))) # (!\my_clock|count\(7) & (!\my_clock|count[6]~26\ & VCC))
-- \my_clock|count[7]~28\ = CARRY((\my_clock|count\(7) & !\my_clock|count[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_clock|count\(7),
	datad => VCC,
	cin => \my_clock|count[6]~26\,
	combout => \my_clock|count[7]~27_combout\,
	cout => \my_clock|count[7]~28\);

-- Location: LCCOMB_X1_Y11_N14
\my_clock|count[8]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_clock|count[8]~29_combout\ = (\my_clock|count\(8) & (!\my_clock|count[7]~28\)) # (!\my_clock|count\(8) & ((\my_clock|count[7]~28\) # (GND)))
-- \my_clock|count[8]~30\ = CARRY((!\my_clock|count[7]~28\) # (!\my_clock|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_clock|count\(8),
	datad => VCC,
	cin => \my_clock|count[7]~28\,
	combout => \my_clock|count[8]~29_combout\,
	cout => \my_clock|count[8]~30\);

-- Location: LCCOMB_X1_Y11_N16
\my_clock|count[9]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_clock|count[9]~31_combout\ = (\my_clock|count\(9) & (\my_clock|count[8]~30\ $ (GND))) # (!\my_clock|count\(9) & (!\my_clock|count[8]~30\ & VCC))
-- \my_clock|count[9]~32\ = CARRY((\my_clock|count\(9) & !\my_clock|count[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_clock|count\(9),
	datad => VCC,
	cin => \my_clock|count[8]~30\,
	combout => \my_clock|count[9]~31_combout\,
	cout => \my_clock|count[9]~32\);

-- Location: LCCOMB_X1_Y11_N18
\my_clock|count[10]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_clock|count[10]~33_combout\ = (\my_clock|count\(10) & (!\my_clock|count[9]~32\)) # (!\my_clock|count\(10) & ((\my_clock|count[9]~32\) # (GND)))
-- \my_clock|count[10]~34\ = CARRY((!\my_clock|count[9]~32\) # (!\my_clock|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_clock|count\(10),
	datad => VCC,
	cin => \my_clock|count[9]~32\,
	combout => \my_clock|count[10]~33_combout\,
	cout => \my_clock|count[10]~34\);

-- Location: LCCOMB_X1_Y11_N20
\my_clock|count[11]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_clock|count[11]~35_combout\ = (\my_clock|count\(11) & (\my_clock|count[10]~34\ $ (GND))) # (!\my_clock|count\(11) & (!\my_clock|count[10]~34\ & VCC))
-- \my_clock|count[11]~36\ = CARRY((\my_clock|count\(11) & !\my_clock|count[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_clock|count\(11),
	datad => VCC,
	cin => \my_clock|count[10]~34\,
	combout => \my_clock|count[11]~35_combout\,
	cout => \my_clock|count[11]~36\);

-- Location: LCCOMB_X1_Y11_N22
\my_clock|count[12]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_clock|count[12]~37_combout\ = (\my_clock|count\(12) & (!\my_clock|count[11]~36\)) # (!\my_clock|count\(12) & ((\my_clock|count[11]~36\) # (GND)))
-- \my_clock|count[12]~38\ = CARRY((!\my_clock|count[11]~36\) # (!\my_clock|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_clock|count\(12),
	datad => VCC,
	cin => \my_clock|count[11]~36\,
	combout => \my_clock|count[12]~37_combout\,
	cout => \my_clock|count[12]~38\);

-- Location: LCCOMB_X1_Y11_N24
\my_clock|count[13]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_clock|count[13]~39_combout\ = (\my_clock|count\(13) & (\my_clock|count[12]~38\ $ (GND))) # (!\my_clock|count\(13) & (!\my_clock|count[12]~38\ & VCC))
-- \my_clock|count[13]~40\ = CARRY((\my_clock|count\(13) & !\my_clock|count[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_clock|count\(13),
	datad => VCC,
	cin => \my_clock|count[12]~38\,
	combout => \my_clock|count[13]~39_combout\,
	cout => \my_clock|count[13]~40\);

-- Location: LCCOMB_X1_Y11_N26
\my_clock|count[14]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_clock|count[14]~41_combout\ = (\my_clock|count\(14) & (!\my_clock|count[13]~40\)) # (!\my_clock|count\(14) & ((\my_clock|count[13]~40\) # (GND)))
-- \my_clock|count[14]~42\ = CARRY((!\my_clock|count[13]~40\) # (!\my_clock|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_clock|count\(14),
	datad => VCC,
	cin => \my_clock|count[13]~40\,
	combout => \my_clock|count[14]~41_combout\,
	cout => \my_clock|count[14]~42\);

-- Location: LCCOMB_X1_Y11_N28
\my_clock|count[15]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_clock|count[15]~43_combout\ = \my_clock|count\(15) $ (!\my_clock|count[14]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_clock|count\(15),
	cin => \my_clock|count[14]~42\,
	combout => \my_clock|count[15]~43_combout\);

-- Location: LCCOMB_X10_Y12_N4
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[54]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[54]~55_combout\ = (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[54]~55_combout\);

-- Location: LCCOMB_X16_Y11_N8
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \my_calculator|sum\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \my_calculator|sum\(8),
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\);

-- Location: LCCOMB_X16_Y11_N10
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[52]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \my_calculator|sum\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \my_calculator|sum\(7),
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\);

-- Location: LCCOMB_X19_Y11_N22
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \my_calculator|sum\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \my_calculator|sum\(6),
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\);

-- Location: LCCOMB_X10_Y12_N28
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\ = (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\);

-- Location: LCCOMB_X19_Y11_N30
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[49]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \my_calculator|sum\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \my_calculator|sum\(4),
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\);

-- Location: LCCOMB_X14_Y14_N26
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & 
-- !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\);

-- Location: LCCOMB_X14_Y14_N28
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\ = (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\);

-- Location: LCCOMB_X14_Y14_N22
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & 
-- !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\);

-- Location: LCCOMB_X13_Y14_N8
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\ = (\my_calculator|sum\(4) & \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(4),
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\);

-- Location: LCCOMB_X14_Y11_N24
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\ = (\my_calculator|sum\(3) & \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(3),
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\);

-- Location: LCCOMB_X13_Y14_N12
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[70]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[70]~76_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ & 
-- !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[70]~76_combout\);

-- Location: LCCOMB_X14_Y14_N30
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[66]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ & 
-- !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\);

-- Location: LCCOMB_X14_Y11_N2
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[56]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[56]~82_combout\ = (\my_calculator|sum\(2) & \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(2),
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[56]~82_combout\);

-- Location: LCCOMB_X14_Y11_N12
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[56]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[56]~83_combout\ = (\my_calculator|sum\(2) & !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(2),
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[56]~83_combout\);

-- Location: LCCOMB_X13_Y14_N10
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[65]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[65]~84_combout\ = (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[65]~84_combout\);

-- Location: LCCOMB_X13_Y12_N0
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[18]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[18]~57_combout\ = (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[18]~57_combout\);

-- Location: LCCOMB_X13_Y12_N20
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[17]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\ = (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\);

-- Location: LCCOMB_X13_Y12_N6
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \my_calculator|sum\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \my_calculator|sum\(7),
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\);

-- Location: LCCOMB_X14_Y12_N4
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\ = (\my_calculator|sum\(6) & \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(6),
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\);

-- Location: LCCOMB_X14_Y12_N6
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\);

-- Location: LCCOMB_X14_Y12_N30
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\ = (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \my_calculator|sum\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \my_calculator|sum\(5),
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\);

-- Location: LCCOMB_X16_Y12_N22
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[26]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\ = (\my_calculator|sum\(5) & \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(5),
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\);

-- Location: LCCOMB_X16_Y12_N30
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[25]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ = (\my_calculator|sum\(4) & \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(4),
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\);

-- Location: LCCOMB_X17_Y12_N26
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[33]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[33]~76_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[33]~76_combout\);

-- Location: LCCOMB_X17_Y12_N16
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\);

-- Location: LCCOMB_X17_Y12_N22
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\);

-- Location: LCCOMB_X17_Y12_N30
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\ = (\my_calculator|sum\(3) & !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(3),
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\);

-- Location: LCCOMB_X17_Y13_N26
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[36]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \my_calculator|sum\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \my_calculator|sum\(3),
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\);

-- Location: LCCOMB_X17_Y13_N22
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[35]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \my_calculator|sum\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \my_calculator|sum\(2),
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\);

-- Location: LCCOMB_X18_Y13_N26
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[42]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[42]~89_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[42]~89_combout\);

-- Location: LCCOMB_X18_Y13_N12
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[41]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[41]~90_combout\ = (\my_calculator|sum\(2) & \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(2),
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[41]~90_combout\);

-- Location: LCCOMB_X18_Y13_N22
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[40]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\ = (\my_calculator|sum\(1) & \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(1),
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\);

-- Location: LCCOMB_X19_Y12_N4
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[33]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[33]~36_combout\ = (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[33]~36_combout\);

-- Location: LCCOMB_X18_Y12_N22
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[32]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & 
-- !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\);

-- Location: LCCOMB_X19_Y12_N6
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[31]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ = (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\);

-- Location: LCCOMB_X18_Y12_N30
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~43_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ & 
-- !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~43_combout\);

-- Location: LCCOMB_X22_Y12_N12
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~45_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & 
-- !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~45_combout\);

-- Location: LCCOMB_X22_Y12_N26
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[35]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[35]~48_combout\ = (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[35]~48_combout\);

-- Location: LCCOMB_X18_Y13_N24
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\ = (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[0]~10_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\);

-- Location: LCCOMB_X21_Y12_N26
\my_gettempnumber|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux2~0_combout\ = (\my_counter|wordselector\(0) & (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & ((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~52_combout\) # 
-- (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_counter|wordselector\(0),
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~52_combout\,
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\,
	combout => \my_gettempnumber|Mux2~0_combout\);

-- Location: LCCOMB_X11_Y13_N30
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[18]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[18]~56_combout\ = (\my_calculator|sum\(9) & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(9),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[18]~56_combout\);

-- Location: LCCOMB_X11_Y13_N26
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~58_combout\ = (\my_calculator|sum\(8) & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(8),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~58_combout\);

-- Location: LCCOMB_X11_Y13_N10
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[16]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[16]~60_combout\ = (\my_calculator|sum\(7) & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(7),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[16]~60_combout\);

-- Location: LCCOMB_X11_Y13_N22
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~62_combout\ = (\my_calculator|sum\(6) & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(6),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~62_combout\);

-- Location: LCCOMB_X12_Y13_N30
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X12_Y13_N24
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[21]~66_combout\ = (\my_calculator|sum\(6) & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(6),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[21]~66_combout\);

-- Location: LCCOMB_X12_Y13_N22
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~68_combout\ = (\my_calculator|sum\(5) & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(5),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~68_combout\);

-- Location: LCCOMB_X12_Y13_N2
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[28]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[28]~70_combout\ = (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[28]~70_combout\);

-- Location: LCCOMB_X16_Y13_N30
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~72_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \my_calculator|sum\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \my_calculator|sum\(5),
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~72_combout\);

-- Location: LCCOMB_X16_Y13_N12
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~75_combout\ = (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \my_calculator|sum\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \my_calculator|sum\(4),
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~75_combout\);

-- Location: LCCOMB_X16_Y13_N26
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[33]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[33]~76_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[33]~76_combout\);

-- Location: LCCOMB_X19_Y13_N26
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~79_combout\ = (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~79_combout\);

-- Location: LCCOMB_X19_Y13_N30
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[30]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[30]~80_combout\ = (\my_calculator|sum\(3) & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(3),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[30]~80_combout\);

-- Location: LCCOMB_X19_Y13_N18
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[38]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[38]~82_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[38]~82_combout\);

-- Location: LCCOMB_X19_Y13_N24
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~83_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~83_combout\);

-- Location: LCCOMB_X21_Y13_N22
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[36]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[36]~85_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[36]~85_combout\);

-- Location: LCCOMB_X21_Y13_N30
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[35]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[35]~86_combout\ = (\my_calculator|sum\(2) & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(2),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[35]~86_combout\);

-- Location: LCCOMB_X21_Y12_N22
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[40]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[40]~89_combout\ = (\my_calculator|sum\(1) & !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(1),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[40]~89_combout\);

-- Location: LCCOMB_X21_Y13_N26
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[43]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[43]~90_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[43]~90_combout\);

-- Location: LCCOMB_X22_Y13_N4
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~93_combout\ = (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~93_combout\);

-- Location: LCCOMB_X19_Y17_N10
\my_gettempnumber|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux0~3_combout\ = (\my_gettempnumber|Mux2~1_combout\ & ((\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & 
-- (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)) # (!\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & 
-- ((\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\,
	datac => \my_gettempnumber|Mux2~1_combout\,
	datad => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	combout => \my_gettempnumber|Mux0~3_combout\);

-- Location: LCCOMB_X21_Y12_N12
\my_gettempnumber|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux0~4_combout\ = (\my_gettempnumber|Mux0~3_combout\) # ((\my_counter|wordselector\(1) & (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mux0~3_combout\,
	datab => \my_counter|wordselector\(1),
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mux0~4_combout\);

-- Location: LCCOMB_X6_Y11_N0
\my_FSM|next[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_FSM|next[2]~0_combout\ = (!\IN_10c~input_o\ & (!\IN_50c~input_o\ & ((\OUT_25c~input_o\) # (\OUT_15c~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_25c~input_o\,
	datab => \OUT_15c~input_o\,
	datac => \IN_10c~input_o\,
	datad => \IN_50c~input_o\,
	combout => \my_FSM|next[2]~0_combout\);

-- Location: LCCOMB_X6_Y11_N14
\my_FSM|next[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_FSM|next[2]~1_combout\ = (\my_FSM|next[2]~0_combout\ & !\IN_5c~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|next[2]~0_combout\,
	datab => \IN_5c~input_o\,
	combout => \my_FSM|next[2]~1_combout\);

-- Location: LCCOMB_X6_Y11_N10
\my_FSM|next[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_FSM|next[1]~3_combout\ = (!\my_FSM|state\(0) & (!\my_FSM|state\(1) & !\my_FSM|state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(0),
	datac => \my_FSM|state\(1),
	datad => \my_FSM|state\(2),
	combout => \my_FSM|next[1]~3_combout\);

-- Location: FF_X1_Y11_N31
\my_clock|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_clock|count[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_clock|count\(0));

-- Location: LCCOMB_X14_Y14_N14
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[69]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[69]~86_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\) 
-- # ((!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[69]~86_combout\);

-- Location: LCCOMB_X14_Y14_N20
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[68]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[68]~87_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\) 
-- # ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\,
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[68]~87_combout\);

-- Location: LCCOMB_X14_Y12_N12
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[28]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[28]~94_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\) 
-- # ((!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[28]~94_combout\);

-- Location: LCCOMB_X17_Y12_N0
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[38]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[38]~96_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\) 
-- # ((\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[38]~96_combout\);

-- Location: LCCOMB_X17_Y13_N12
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[43]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[43]~97_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\) 
-- # ((\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[43]~97_combout\);

-- Location: LCCOMB_X22_Y12_N22
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[43]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[43]~54_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~57_combout\) 
-- # ((!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~57_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[43]~54_combout\);

-- Location: LCCOMB_X10_Y12_N2
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[62]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[62]~88_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\my_calculator|sum\(8)))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datab => \my_calculator|sum\(8),
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[62]~88_combout\);

-- Location: LCCOMB_X13_Y14_N30
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[67]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[67]~92_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\my_calculator|sum\(4)))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datab => \my_calculator|sum\(4),
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[67]~92_combout\);

-- Location: LCCOMB_X13_Y12_N2
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[23]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[23]~98_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\my_calculator|sum\(8))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \my_calculator|sum\(8),
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[23]~98_combout\);

-- Location: LCCOMB_X13_Y12_N16
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\my_calculator|sum\(7)))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \my_calculator|sum\(7),
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\);

-- Location: LCCOMB_X16_Y12_N26
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\my_calculator|sum\(6))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \my_calculator|sum\(6),
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\);

-- Location: LCCOMB_X17_Y12_N20
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\my_calculator|sum\(4)))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \my_calculator|sum\(4),
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\);

-- Location: LCCOMB_X19_Y12_N20
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[38]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[38]~56_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # 
-- (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[38]~56_combout\);

-- Location: LCCOMB_X18_Y12_N26
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # 
-- (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\);

-- Location: LCCOMB_X12_Y13_N26
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[23]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[23]~98_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\my_calculator|sum\(8))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \my_calculator|sum\(8),
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[23]~98_combout\);

-- Location: LCCOMB_X16_Y13_N10
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~101_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\my_calculator|sum\(5)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \my_calculator|sum\(5),
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~101_combout\);

-- Location: LCCOMB_X19_Y13_N14
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~103_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\my_calculator|sum\(3))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \my_calculator|sum\(3),
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~103_combout\);

-- Location: LCCOMB_X1_Y11_N30
\my_clock|count[0]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_clock|count[0]~45_combout\ = !\my_clock|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_clock|count\(0),
	combout => \my_clock|count[0]~45_combout\);

-- Location: IOIBUF_X7_Y0_N15
\OUT_25c~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OUT_25c,
	o => \OUT_25c~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\my_clock|count[15]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \my_clock|count[15]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \my_clock|count[15]~clkctrl_outclk\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOOBUF_X25_Y0_N16
\error~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \error~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\success~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \success~output_o\);

-- Location: IOOBUF_X11_Y24_N2
\wordout[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_numbertranslator|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \wordout[0]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\wordout[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_numbertranslator|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \wordout[1]~output_o\);

-- Location: IOOBUF_X11_Y24_N23
\wordout[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_numbertranslator|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \wordout[2]~output_o\);

-- Location: IOOBUF_X11_Y24_N9
\wordout[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_numbertranslator|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \wordout[3]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\wordout[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_numbertranslator|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \wordout[4]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\wordout[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_numbertranslator|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \wordout[5]~output_o\);

-- Location: IOOBUF_X5_Y24_N23
\wordout[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_numbertranslator|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \wordout[6]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\segout[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_gettempnumber|ALT_INV_Mux2~1_combout\,
	devoe => ww_devoe,
	o => \segout[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\segout[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_segtranslator|ALT_INV_Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \segout[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\segout[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_segtranslator|ALT_INV_Decoder0~1_combout\,
	devoe => ww_devoe,
	o => \segout[2]~output_o\);

-- Location: IOOBUF_X3_Y24_N9
\segout[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segout[3]~output_o\);

-- Location: IOOBUF_X32_Y24_N16
\segout[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segout[4]~output_o\);

-- Location: IOOBUF_X34_Y3_N16
\segout[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segout[5]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\IN_5c~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_5c,
	o => \IN_5c~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\IN_10c~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_10c,
	o => \IN_10c~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\OUT_15c~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OUT_15c,
	o => \OUT_15c~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\IN_50c~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_50c,
	o => \IN_50c~input_o\);

-- Location: LCCOMB_X7_Y11_N14
\my_FSM|next[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_FSM|next[0]~4_combout\ = (!\IN_10c~input_o\ & ((\IN_50c~input_o\) # ((\OUT_25c~input_o\ & !\OUT_15c~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_25c~input_o\,
	datab => \IN_10c~input_o\,
	datac => \OUT_15c~input_o\,
	datad => \IN_50c~input_o\,
	combout => \my_FSM|next[0]~4_combout\);

-- Location: LCCOMB_X6_Y11_N18
\my_FSM|next[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_FSM|next[0]~5_combout\ = (\my_FSM|next[1]~3_combout\ & ((\IN_5c~input_o\) # (\my_FSM|next[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|next[1]~3_combout\,
	datab => \IN_5c~input_o\,
	datac => \my_FSM|next[0]~4_combout\,
	combout => \my_FSM|next[0]~5_combout\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X6_Y11_N19
\my_FSM|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_FSM|next[0]~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_FSM|state\(0));

-- Location: LCCOMB_X6_Y11_N26
\my_FSM|next[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_FSM|next[1]~6_combout\ = (!\my_FSM|state\(1) & (!\my_FSM|state\(0) & (!\IN_5c~input_o\ & !\my_FSM|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(1),
	datab => \my_FSM|state\(0),
	datac => \IN_5c~input_o\,
	datad => \my_FSM|state\(2),
	combout => \my_FSM|next[1]~6_combout\);

-- Location: LCCOMB_X6_Y11_N12
\my_FSM|next[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_FSM|next[1]~7_combout\ = (\my_FSM|next[1]~6_combout\ & ((\IN_10c~input_o\) # (\IN_50c~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN_10c~input_o\,
	datac => \my_FSM|next[1]~6_combout\,
	datad => \IN_50c~input_o\,
	combout => \my_FSM|next[1]~7_combout\);

-- Location: FF_X6_Y11_N13
\my_FSM|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \my_FSM|next[1]~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_FSM|state\(1));

-- Location: LCCOMB_X6_Y11_N30
\my_FSM|next[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_FSM|next[2]~2_combout\ = (\my_FSM|next[2]~1_combout\ & (!\my_FSM|state\(0) & (!\my_FSM|state\(2) & !\my_FSM|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|next[2]~1_combout\,
	datab => \my_FSM|state\(0),
	datac => \my_FSM|state\(2),
	datad => \my_FSM|state\(1),
	combout => \my_FSM|next[2]~2_combout\);

-- Location: FF_X6_Y11_N15
\my_FSM|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \my_FSM|next[2]~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_FSM|state\(2));

-- Location: LCCOMB_X12_Y11_N4
\my_calculator|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add4~0_combout\ = \my_calculator|sum\(0) $ (VCC)
-- \my_calculator|Add4~1\ = CARRY(\my_calculator|sum\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(0),
	datad => VCC,
	combout => \my_calculator|Add4~0_combout\,
	cout => \my_calculator|Add4~1\);

-- Location: LCCOMB_X12_Y11_N6
\my_calculator|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add4~2_combout\ = (\my_calculator|sum\(1) & (\my_calculator|Add4~1\ & VCC)) # (!\my_calculator|sum\(1) & (!\my_calculator|Add4~1\))
-- \my_calculator|Add4~3\ = CARRY((!\my_calculator|sum\(1) & !\my_calculator|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(1),
	datad => VCC,
	cin => \my_calculator|Add4~1\,
	combout => \my_calculator|Add4~2_combout\,
	cout => \my_calculator|Add4~3\);

-- Location: LCCOMB_X12_Y11_N8
\my_calculator|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add4~4_combout\ = (\my_calculator|sum\(2) & ((GND) # (!\my_calculator|Add4~3\))) # (!\my_calculator|sum\(2) & (\my_calculator|Add4~3\ $ (GND)))
-- \my_calculator|Add4~5\ = CARRY((\my_calculator|sum\(2)) # (!\my_calculator|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(2),
	datad => VCC,
	cin => \my_calculator|Add4~3\,
	combout => \my_calculator|Add4~4_combout\,
	cout => \my_calculator|Add4~5\);

-- Location: LCCOMB_X6_Y11_N2
\my_calculator|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux4~1_combout\ = (\my_FSM|state\(2)) # ((\my_FSM|state\(0) & \my_FSM|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_FSM|state\(0),
	datac => \my_FSM|state\(2),
	datad => \my_FSM|state\(1),
	combout => \my_calculator|Mux4~1_combout\);

-- Location: LCCOMB_X7_Y11_N26
\my_calculator|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux13~0_combout\ = (\my_FSM|state\(0) & ((\my_FSM|state\(2) & ((\my_calculator|Add4~0_combout\))) # (!\my_FSM|state\(2) & (\my_calculator|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Add0~0_combout\,
	datab => \my_FSM|state\(0),
	datac => \my_FSM|state\(2),
	datad => \my_calculator|Add4~0_combout\,
	combout => \my_calculator|Mux13~0_combout\);

-- Location: LCCOMB_X10_Y11_N6
\my_calculator|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add3~0_combout\ = \my_calculator|sum\(0) $ (VCC)
-- \my_calculator|Add3~1\ = CARRY(\my_calculator|sum\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(0),
	datad => VCC,
	combout => \my_calculator|Add3~0_combout\,
	cout => \my_calculator|Add3~1\);

-- Location: LCCOMB_X7_Y11_N22
\my_calculator|Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux13~1_combout\ = (\my_calculator|Mux13~0_combout\) # ((!\my_FSM|state\(0) & \my_calculator|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(0),
	datab => \my_calculator|Mux13~0_combout\,
	datad => \my_calculator|Add3~0_combout\,
	combout => \my_calculator|Mux13~1_combout\);

-- Location: LCCOMB_X6_Y11_N20
\my_calculator|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux1~0_combout\ = (!\my_FSM|state\(1) & ((\my_FSM|state\(2) & ((\my_calculator|Mux0~3_combout\))) # (!\my_FSM|state\(2) & (\my_FSM|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(2),
	datab => \my_FSM|state\(0),
	datac => \my_calculator|Mux0~3_combout\,
	datad => \my_FSM|state\(1),
	combout => \my_calculator|Mux1~0_combout\);

-- Location: LCCOMB_X8_Y11_N6
\my_calculator|sum[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|sum\(0) = (!\reset~input_o\ & ((\my_calculator|Mux1~0_combout\ & (\my_calculator|Mux13~1_combout\)) # (!\my_calculator|Mux1~0_combout\ & ((\my_calculator|sum\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \my_calculator|Mux13~1_combout\,
	datac => \my_calculator|Mux1~0_combout\,
	datad => \my_calculator|sum\(0),
	combout => \my_calculator|sum\(0));

-- Location: LCCOMB_X10_Y11_N8
\my_calculator|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add3~2_combout\ = (\my_calculator|sum\(1) & (!\my_calculator|Add3~1\)) # (!\my_calculator|sum\(1) & ((\my_calculator|Add3~1\) # (GND)))
-- \my_calculator|Add3~3\ = CARRY((!\my_calculator|Add3~1\) # (!\my_calculator|sum\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(1),
	datad => VCC,
	cin => \my_calculator|Add3~1\,
	combout => \my_calculator|Add3~2_combout\,
	cout => \my_calculator|Add3~3\);

-- Location: LCCOMB_X8_Y11_N10
\my_calculator|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add0~2_combout\ = (\my_calculator|sum\(1) & (!\my_calculator|Add0~1\)) # (!\my_calculator|sum\(1) & ((\my_calculator|Add0~1\) # (GND)))
-- \my_calculator|Add0~3\ = CARRY((!\my_calculator|Add0~1\) # (!\my_calculator|sum\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(1),
	datad => VCC,
	cin => \my_calculator|Add0~1\,
	combout => \my_calculator|Add0~2_combout\,
	cout => \my_calculator|Add0~3\);

-- Location: LCCOMB_X11_Y11_N14
\my_calculator|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add1~0_combout\ = \my_calculator|sum\(1) $ (VCC)
-- \my_calculator|Add1~1\ = CARRY(\my_calculator|sum\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(1),
	datad => VCC,
	combout => \my_calculator|Add1~0_combout\,
	cout => \my_calculator|Add1~1\);

-- Location: LCCOMB_X6_Y11_N8
\my_calculator|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux12~0_combout\ = (\my_FSM|state\(0)) # (\my_calculator|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_FSM|state\(0),
	datad => \my_calculator|Add1~0_combout\,
	combout => \my_calculator|Mux12~0_combout\);

-- Location: LCCOMB_X6_Y11_N6
\my_calculator|Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux12~1_combout\ = (!\my_FSM|state\(2) & ((\my_FSM|state\(1) & ((\my_calculator|Mux12~0_combout\))) # (!\my_FSM|state\(1) & (\my_calculator|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(1),
	datab => \my_FSM|state\(2),
	datac => \my_calculator|Add0~2_combout\,
	datad => \my_calculator|Mux12~0_combout\,
	combout => \my_calculator|Mux12~1_combout\);

-- Location: LCCOMB_X6_Y11_N16
\my_calculator|Mux12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux12~2_combout\ = (\my_calculator|Mux4~1_combout\ & ((\my_calculator|Mux12~1_combout\ & (\my_calculator|Add2~0_combout\)) # (!\my_calculator|Mux12~1_combout\ & ((\my_calculator|Add3~2_combout\))))) # (!\my_calculator|Mux4~1_combout\ & 
-- (((\my_calculator|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Add2~0_combout\,
	datab => \my_calculator|Mux4~1_combout\,
	datac => \my_calculator|Add3~2_combout\,
	datad => \my_calculator|Mux12~1_combout\,
	combout => \my_calculator|Mux12~2_combout\);

-- Location: LCCOMB_X6_Y11_N4
\my_calculator|Mux12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux12~3_combout\ = (\my_FSM|state\(2) & ((\my_FSM|state\(0) & ((\my_calculator|Add4~2_combout\))) # (!\my_FSM|state\(0) & (\my_calculator|Mux12~2_combout\)))) # (!\my_FSM|state\(2) & (((\my_calculator|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(2),
	datab => \my_FSM|state\(0),
	datac => \my_calculator|Mux12~2_combout\,
	datad => \my_calculator|Add4~2_combout\,
	combout => \my_calculator|Mux12~3_combout\);

-- Location: LCCOMB_X6_Y11_N24
\my_calculator|sum[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|sum\(1) = (!\reset~input_o\ & ((\my_calculator|Mux0~4_combout\ & ((\my_calculator|Mux12~3_combout\))) # (!\my_calculator|Mux0~4_combout\ & (\my_calculator|sum\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \my_calculator|sum\(1),
	datac => \my_calculator|Mux12~3_combout\,
	datad => \my_calculator|Mux0~4_combout\,
	combout => \my_calculator|sum\(1));

-- Location: LCCOMB_X11_Y11_N16
\my_calculator|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add1~2_combout\ = (\my_calculator|sum\(2) & (!\my_calculator|Add1~1\)) # (!\my_calculator|sum\(2) & ((\my_calculator|Add1~1\) # (GND)))
-- \my_calculator|Add1~3\ = CARRY((!\my_calculator|Add1~1\) # (!\my_calculator|sum\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(2),
	datad => VCC,
	cin => \my_calculator|Add1~1\,
	combout => \my_calculator|Add1~2_combout\,
	cout => \my_calculator|Add1~3\);

-- Location: LCCOMB_X8_Y11_N12
\my_calculator|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add0~4_combout\ = (\my_calculator|sum\(2) & ((GND) # (!\my_calculator|Add0~3\))) # (!\my_calculator|sum\(2) & (\my_calculator|Add0~3\ $ (GND)))
-- \my_calculator|Add0~5\ = CARRY((\my_calculator|sum\(2)) # (!\my_calculator|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(2),
	datad => VCC,
	cin => \my_calculator|Add0~3\,
	combout => \my_calculator|Add0~4_combout\,
	cout => \my_calculator|Add0~5\);

-- Location: LCCOMB_X10_Y11_N28
\my_calculator|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux11~0_combout\ = (\my_FSM|state\(1) & (\my_FSM|state\(0))) # (!\my_FSM|state\(1) & ((\my_calculator|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_FSM|state\(0),
	datac => \my_calculator|Add0~4_combout\,
	datad => \my_FSM|state\(1),
	combout => \my_calculator|Mux11~0_combout\);

-- Location: LCCOMB_X10_Y11_N26
\my_calculator|Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux11~1_combout\ = (\my_FSM|state\(2) & (\my_calculator|Add3~4_combout\)) # (!\my_FSM|state\(2) & ((\my_calculator|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Add3~4_combout\,
	datac => \my_FSM|state\(2),
	datad => \my_calculator|Mux11~0_combout\,
	combout => \my_calculator|Mux11~1_combout\);

-- Location: LCCOMB_X6_Y11_N22
\my_calculator|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux4~0_combout\ = (!\my_FSM|state\(2) & \my_FSM|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_FSM|state\(2),
	datad => \my_FSM|state\(1),
	combout => \my_calculator|Mux4~0_combout\);

-- Location: LCCOMB_X10_Y11_N0
\my_calculator|Mux11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux11~2_combout\ = (\my_calculator|Mux11~1_combout\ & ((\my_calculator|Add2~2_combout\) # ((!\my_calculator|Mux4~0_combout\)))) # (!\my_calculator|Mux11~1_combout\ & (((\my_calculator|Add1~2_combout\ & \my_calculator|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Add2~2_combout\,
	datab => \my_calculator|Add1~2_combout\,
	datac => \my_calculator|Mux11~1_combout\,
	datad => \my_calculator|Mux4~0_combout\,
	combout => \my_calculator|Mux11~2_combout\);

-- Location: LCCOMB_X10_Y11_N30
\my_calculator|Mux11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux11~3_combout\ = (\my_FSM|state\(2) & ((\my_FSM|state\(0) & (\my_calculator|Add4~4_combout\)) # (!\my_FSM|state\(0) & ((\my_calculator|Mux11~2_combout\))))) # (!\my_FSM|state\(2) & (((\my_calculator|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(2),
	datab => \my_calculator|Add4~4_combout\,
	datac => \my_FSM|state\(0),
	datad => \my_calculator|Mux11~2_combout\,
	combout => \my_calculator|Mux11~3_combout\);

-- Location: LCCOMB_X10_Y11_N4
\my_calculator|sum[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|sum\(2) = (!\reset~input_o\ & ((\my_calculator|Mux0~4_combout\ & ((\my_calculator|Mux11~3_combout\))) # (!\my_calculator|Mux0~4_combout\ & (\my_calculator|sum\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \my_calculator|sum\(2),
	datac => \my_calculator|Mux11~3_combout\,
	datad => \my_calculator|Mux0~4_combout\,
	combout => \my_calculator|sum\(2));

-- Location: LCCOMB_X12_Y11_N12
\my_calculator|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add4~8_combout\ = (\my_calculator|sum\(4) & (\my_calculator|Add4~7\ $ (GND))) # (!\my_calculator|sum\(4) & (!\my_calculator|Add4~7\ & VCC))
-- \my_calculator|Add4~9\ = CARRY((\my_calculator|sum\(4) & !\my_calculator|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(4),
	datad => VCC,
	cin => \my_calculator|Add4~7\,
	combout => \my_calculator|Add4~8_combout\,
	cout => \my_calculator|Add4~9\);

-- Location: LCCOMB_X12_Y11_N14
\my_calculator|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add4~10_combout\ = (\my_calculator|sum\(5) & (\my_calculator|Add4~9\ & VCC)) # (!\my_calculator|sum\(5) & (!\my_calculator|Add4~9\))
-- \my_calculator|Add4~11\ = CARRY((!\my_calculator|sum\(5) & !\my_calculator|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(5),
	datad => VCC,
	cin => \my_calculator|Add4~9\,
	combout => \my_calculator|Add4~10_combout\,
	cout => \my_calculator|Add4~11\);

-- Location: LCCOMB_X12_Y11_N16
\my_calculator|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add4~12_combout\ = (\my_calculator|sum\(6) & ((GND) # (!\my_calculator|Add4~11\))) # (!\my_calculator|sum\(6) & (\my_calculator|Add4~11\ $ (GND)))
-- \my_calculator|Add4~13\ = CARRY((\my_calculator|sum\(6)) # (!\my_calculator|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(6),
	datad => VCC,
	cin => \my_calculator|Add4~11\,
	combout => \my_calculator|Add4~12_combout\,
	cout => \my_calculator|Add4~13\);

-- Location: LCCOMB_X12_Y11_N18
\my_calculator|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add4~14_combout\ = (\my_calculator|sum\(7) & (\my_calculator|Add4~13\ & VCC)) # (!\my_calculator|sum\(7) & (!\my_calculator|Add4~13\))
-- \my_calculator|Add4~15\ = CARRY((!\my_calculator|sum\(7) & !\my_calculator|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(7),
	datad => VCC,
	cin => \my_calculator|Add4~13\,
	combout => \my_calculator|Add4~14_combout\,
	cout => \my_calculator|Add4~15\);

-- Location: LCCOMB_X9_Y11_N8
\my_calculator|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add2~8_combout\ = (\my_calculator|sum\(5) & ((GND) # (!\my_calculator|Add2~7\))) # (!\my_calculator|sum\(5) & (\my_calculator|Add2~7\ $ (GND)))
-- \my_calculator|Add2~9\ = CARRY((\my_calculator|sum\(5)) # (!\my_calculator|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(5),
	datad => VCC,
	cin => \my_calculator|Add2~7\,
	combout => \my_calculator|Add2~8_combout\,
	cout => \my_calculator|Add2~9\);

-- Location: LCCOMB_X11_Y11_N18
\my_calculator|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add1~4_combout\ = (\my_calculator|sum\(3) & ((GND) # (!\my_calculator|Add1~3\))) # (!\my_calculator|sum\(3) & (\my_calculator|Add1~3\ $ (GND)))
-- \my_calculator|Add1~5\ = CARRY((\my_calculator|sum\(3)) # (!\my_calculator|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(3),
	datad => VCC,
	cin => \my_calculator|Add1~3\,
	combout => \my_calculator|Add1~4_combout\,
	cout => \my_calculator|Add1~5\);

-- Location: LCCOMB_X11_Y11_N20
\my_calculator|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add1~6_combout\ = (\my_calculator|sum\(4) & (!\my_calculator|Add1~5\)) # (!\my_calculator|sum\(4) & ((\my_calculator|Add1~5\) # (GND)))
-- \my_calculator|Add1~7\ = CARRY((!\my_calculator|Add1~5\) # (!\my_calculator|sum\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(4),
	datad => VCC,
	cin => \my_calculator|Add1~5\,
	combout => \my_calculator|Add1~6_combout\,
	cout => \my_calculator|Add1~7\);

-- Location: LCCOMB_X8_Y11_N14
\my_calculator|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add0~6_combout\ = (\my_calculator|sum\(3) & (!\my_calculator|Add0~5\)) # (!\my_calculator|sum\(3) & ((\my_calculator|Add0~5\) # (GND)))
-- \my_calculator|Add0~7\ = CARRY((!\my_calculator|Add0~5\) # (!\my_calculator|sum\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(3),
	datad => VCC,
	cin => \my_calculator|Add0~5\,
	combout => \my_calculator|Add0~6_combout\,
	cout => \my_calculator|Add0~7\);

-- Location: LCCOMB_X8_Y11_N16
\my_calculator|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add0~8_combout\ = (\my_calculator|sum\(4) & (\my_calculator|Add0~7\ $ (GND))) # (!\my_calculator|sum\(4) & (!\my_calculator|Add0~7\ & VCC))
-- \my_calculator|Add0~9\ = CARRY((\my_calculator|sum\(4) & !\my_calculator|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(4),
	datad => VCC,
	cin => \my_calculator|Add0~7\,
	combout => \my_calculator|Add0~8_combout\,
	cout => \my_calculator|Add0~9\);

-- Location: LCCOMB_X10_Y11_N12
\my_calculator|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add3~6_combout\ = (\my_calculator|sum\(3) & (!\my_calculator|Add3~5\)) # (!\my_calculator|sum\(3) & ((\my_calculator|Add3~5\) # (GND)))
-- \my_calculator|Add3~7\ = CARRY((!\my_calculator|Add3~5\) # (!\my_calculator|sum\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(3),
	datad => VCC,
	cin => \my_calculator|Add3~5\,
	combout => \my_calculator|Add3~6_combout\,
	cout => \my_calculator|Add3~7\);

-- Location: LCCOMB_X10_Y11_N14
\my_calculator|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add3~8_combout\ = (\my_calculator|sum\(4) & ((GND) # (!\my_calculator|Add3~7\))) # (!\my_calculator|sum\(4) & (\my_calculator|Add3~7\ $ (GND)))
-- \my_calculator|Add3~9\ = CARRY((\my_calculator|sum\(4)) # (!\my_calculator|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(4),
	datad => VCC,
	cin => \my_calculator|Add3~7\,
	combout => \my_calculator|Add3~8_combout\,
	cout => \my_calculator|Add3~9\);

-- Location: LCCOMB_X7_Y11_N16
\my_calculator|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux9~0_combout\ = (\my_calculator|Mux4~0_combout\ & (((\my_calculator|Mux4~1_combout\)))) # (!\my_calculator|Mux4~0_combout\ & ((\my_calculator|Mux4~1_combout\ & ((\my_calculator|Add3~8_combout\))) # (!\my_calculator|Mux4~1_combout\ & 
-- (\my_calculator|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Mux4~0_combout\,
	datab => \my_calculator|Add0~8_combout\,
	datac => \my_calculator|Add3~8_combout\,
	datad => \my_calculator|Mux4~1_combout\,
	combout => \my_calculator|Mux9~0_combout\);

-- Location: LCCOMB_X7_Y11_N24
\my_calculator|Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux9~1_combout\ = (\my_calculator|Mux4~0_combout\ & ((\my_calculator|Mux9~0_combout\ & (\my_calculator|Add2~6_combout\)) # (!\my_calculator|Mux9~0_combout\ & ((\my_calculator|Add1~6_combout\))))) # (!\my_calculator|Mux4~0_combout\ & 
-- (((\my_calculator|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Add2~6_combout\,
	datab => \my_calculator|Mux4~0_combout\,
	datac => \my_calculator|Add1~6_combout\,
	datad => \my_calculator|Mux9~0_combout\,
	combout => \my_calculator|Mux9~1_combout\);

-- Location: LCCOMB_X7_Y11_N20
\my_calculator|Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux9~2_combout\ = (\my_FSM|state\(2) & ((\my_FSM|state\(0) & (\my_calculator|Add4~8_combout\)) # (!\my_FSM|state\(0) & ((\my_calculator|Mux9~1_combout\))))) # (!\my_FSM|state\(2) & (((\my_calculator|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(2),
	datab => \my_FSM|state\(0),
	datac => \my_calculator|Add4~8_combout\,
	datad => \my_calculator|Mux9~1_combout\,
	combout => \my_calculator|Mux9~2_combout\);

-- Location: LCCOMB_X7_Y11_N30
\my_calculator|sum[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|sum\(4) = (!\reset~input_o\ & ((\my_calculator|Mux0~4_combout\ & ((\my_calculator|Mux9~2_combout\))) # (!\my_calculator|Mux0~4_combout\ & (\my_calculator|sum\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \my_calculator|Mux0~4_combout\,
	datac => \my_calculator|sum\(4),
	datad => \my_calculator|Mux9~2_combout\,
	combout => \my_calculator|sum\(4));

-- Location: LCCOMB_X8_Y11_N18
\my_calculator|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add0~10_combout\ = (\my_calculator|sum\(5) & (!\my_calculator|Add0~9\)) # (!\my_calculator|sum\(5) & ((\my_calculator|Add0~9\) # (GND)))
-- \my_calculator|Add0~11\ = CARRY((!\my_calculator|Add0~9\) # (!\my_calculator|sum\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(5),
	datad => VCC,
	cin => \my_calculator|Add0~9\,
	combout => \my_calculator|Add0~10_combout\,
	cout => \my_calculator|Add0~11\);

-- Location: LCCOMB_X11_Y11_N22
\my_calculator|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add1~8_combout\ = (\my_calculator|sum\(5) & (\my_calculator|Add1~7\ $ (GND))) # (!\my_calculator|sum\(5) & (!\my_calculator|Add1~7\ & VCC))
-- \my_calculator|Add1~9\ = CARRY((\my_calculator|sum\(5) & !\my_calculator|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(5),
	datad => VCC,
	cin => \my_calculator|Add1~7\,
	combout => \my_calculator|Add1~8_combout\,
	cout => \my_calculator|Add1~9\);

-- Location: LCCOMB_X9_Y11_N20
\my_calculator|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux8~0_combout\ = (\my_calculator|Mux4~1_combout\ & (((\my_calculator|Mux4~0_combout\)))) # (!\my_calculator|Mux4~1_combout\ & ((\my_calculator|Mux4~0_combout\ & ((\my_calculator|Add1~8_combout\))) # (!\my_calculator|Mux4~0_combout\ & 
-- (\my_calculator|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Mux4~1_combout\,
	datab => \my_calculator|Add0~10_combout\,
	datac => \my_calculator|Add1~8_combout\,
	datad => \my_calculator|Mux4~0_combout\,
	combout => \my_calculator|Mux8~0_combout\);

-- Location: LCCOMB_X9_Y11_N24
\my_calculator|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux8~1_combout\ = (\my_calculator|Mux4~1_combout\ & ((\my_calculator|Mux8~0_combout\ & ((\my_calculator|Add2~8_combout\))) # (!\my_calculator|Mux8~0_combout\ & (\my_calculator|Add3~10_combout\)))) # (!\my_calculator|Mux4~1_combout\ & 
-- (((\my_calculator|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Add3~10_combout\,
	datab => \my_calculator|Mux4~1_combout\,
	datac => \my_calculator|Add2~8_combout\,
	datad => \my_calculator|Mux8~0_combout\,
	combout => \my_calculator|Mux8~1_combout\);

-- Location: LCCOMB_X9_Y11_N22
\my_calculator|Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux8~2_combout\ = (\my_FSM|state\(2) & ((\my_FSM|state\(0) & (\my_calculator|Add4~10_combout\)) # (!\my_FSM|state\(0) & ((\my_calculator|Mux8~1_combout\))))) # (!\my_FSM|state\(2) & (((\my_calculator|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(2),
	datab => \my_FSM|state\(0),
	datac => \my_calculator|Add4~10_combout\,
	datad => \my_calculator|Mux8~1_combout\,
	combout => \my_calculator|Mux8~2_combout\);

-- Location: LCCOMB_X9_Y11_N30
\my_calculator|sum[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|sum\(5) = (!\reset~input_o\ & ((\my_calculator|Mux0~4_combout\ & ((\my_calculator|Mux8~2_combout\))) # (!\my_calculator|Mux0~4_combout\ & (\my_calculator|sum\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(5),
	datab => \reset~input_o\,
	datac => \my_calculator|Mux8~2_combout\,
	datad => \my_calculator|Mux0~4_combout\,
	combout => \my_calculator|sum\(5));

-- Location: LCCOMB_X10_Y11_N18
\my_calculator|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add3~12_combout\ = (\my_calculator|sum\(6) & ((GND) # (!\my_calculator|Add3~11\))) # (!\my_calculator|sum\(6) & (\my_calculator|Add3~11\ $ (GND)))
-- \my_calculator|Add3~13\ = CARRY((\my_calculator|sum\(6)) # (!\my_calculator|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(6),
	datad => VCC,
	cin => \my_calculator|Add3~11\,
	combout => \my_calculator|Add3~12_combout\,
	cout => \my_calculator|Add3~13\);

-- Location: LCCOMB_X10_Y11_N20
\my_calculator|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add3~14_combout\ = (\my_calculator|sum\(7) & (\my_calculator|Add3~13\ & VCC)) # (!\my_calculator|sum\(7) & (!\my_calculator|Add3~13\))
-- \my_calculator|Add3~15\ = CARRY((!\my_calculator|sum\(7) & !\my_calculator|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(7),
	datad => VCC,
	cin => \my_calculator|Add3~13\,
	combout => \my_calculator|Add3~14_combout\,
	cout => \my_calculator|Add3~15\);

-- Location: LCCOMB_X11_Y11_N24
\my_calculator|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add1~10_combout\ = (\my_calculator|sum\(6) & (!\my_calculator|Add1~9\)) # (!\my_calculator|sum\(6) & ((\my_calculator|Add1~9\) # (GND)))
-- \my_calculator|Add1~11\ = CARRY((!\my_calculator|Add1~9\) # (!\my_calculator|sum\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(6),
	datad => VCC,
	cin => \my_calculator|Add1~9\,
	combout => \my_calculator|Add1~10_combout\,
	cout => \my_calculator|Add1~11\);

-- Location: LCCOMB_X9_Y11_N10
\my_calculator|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add2~10_combout\ = (\my_calculator|sum\(6) & (!\my_calculator|Add2~9\)) # (!\my_calculator|sum\(6) & ((\my_calculator|Add2~9\) # (GND)))
-- \my_calculator|Add2~11\ = CARRY((!\my_calculator|Add2~9\) # (!\my_calculator|sum\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(6),
	datad => VCC,
	cin => \my_calculator|Add2~9\,
	combout => \my_calculator|Add2~10_combout\,
	cout => \my_calculator|Add2~11\);

-- Location: LCCOMB_X8_Y11_N20
\my_calculator|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add0~12_combout\ = (\my_calculator|sum\(6) & (\my_calculator|Add0~11\ $ (GND))) # (!\my_calculator|sum\(6) & (!\my_calculator|Add0~11\ & VCC))
-- \my_calculator|Add0~13\ = CARRY((\my_calculator|sum\(6) & !\my_calculator|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(6),
	datad => VCC,
	cin => \my_calculator|Add0~11\,
	combout => \my_calculator|Add0~12_combout\,
	cout => \my_calculator|Add0~13\);

-- Location: LCCOMB_X7_Y11_N12
\my_calculator|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux7~0_combout\ = (\my_calculator|Mux4~1_combout\ & ((\my_calculator|Mux4~0_combout\) # ((\my_calculator|Add3~12_combout\)))) # (!\my_calculator|Mux4~1_combout\ & (!\my_calculator|Mux4~0_combout\ & (\my_calculator|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Mux4~1_combout\,
	datab => \my_calculator|Mux4~0_combout\,
	datac => \my_calculator|Add0~12_combout\,
	datad => \my_calculator|Add3~12_combout\,
	combout => \my_calculator|Mux7~0_combout\);

-- Location: LCCOMB_X7_Y11_N28
\my_calculator|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux7~1_combout\ = (\my_calculator|Mux4~0_combout\ & ((\my_calculator|Mux7~0_combout\ & ((\my_calculator|Add2~10_combout\))) # (!\my_calculator|Mux7~0_combout\ & (\my_calculator|Add1~10_combout\)))) # (!\my_calculator|Mux4~0_combout\ & 
-- (((\my_calculator|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Mux4~0_combout\,
	datab => \my_calculator|Add1~10_combout\,
	datac => \my_calculator|Add2~10_combout\,
	datad => \my_calculator|Mux7~0_combout\,
	combout => \my_calculator|Mux7~1_combout\);

-- Location: LCCOMB_X7_Y11_N2
\my_calculator|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux7~2_combout\ = (\my_FSM|state\(2) & ((\my_FSM|state\(0) & (\my_calculator|Add4~12_combout\)) # (!\my_FSM|state\(0) & ((\my_calculator|Mux7~1_combout\))))) # (!\my_FSM|state\(2) & (((\my_calculator|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(2),
	datab => \my_FSM|state\(0),
	datac => \my_calculator|Add4~12_combout\,
	datad => \my_calculator|Mux7~1_combout\,
	combout => \my_calculator|Mux7~2_combout\);

-- Location: LCCOMB_X7_Y11_N8
\my_calculator|sum[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|sum\(6) = (!\reset~input_o\ & ((\my_calculator|Mux0~4_combout\ & ((\my_calculator|Mux7~2_combout\))) # (!\my_calculator|Mux0~4_combout\ & (\my_calculator|sum\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \my_calculator|Mux0~4_combout\,
	datac => \my_calculator|sum\(6),
	datad => \my_calculator|Mux7~2_combout\,
	combout => \my_calculator|sum\(6));

-- Location: LCCOMB_X11_Y11_N26
\my_calculator|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add1~12_combout\ = (\my_calculator|sum\(7) & (\my_calculator|Add1~11\ $ (GND))) # (!\my_calculator|sum\(7) & (!\my_calculator|Add1~11\ & VCC))
-- \my_calculator|Add1~13\ = CARRY((\my_calculator|sum\(7) & !\my_calculator|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(7),
	datad => VCC,
	cin => \my_calculator|Add1~11\,
	combout => \my_calculator|Add1~12_combout\,
	cout => \my_calculator|Add1~13\);

-- Location: LCCOMB_X8_Y11_N22
\my_calculator|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add0~14_combout\ = (\my_calculator|sum\(7) & (!\my_calculator|Add0~13\)) # (!\my_calculator|sum\(7) & ((\my_calculator|Add0~13\) # (GND)))
-- \my_calculator|Add0~15\ = CARRY((!\my_calculator|Add0~13\) # (!\my_calculator|sum\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(7),
	datad => VCC,
	cin => \my_calculator|Add0~13\,
	combout => \my_calculator|Add0~14_combout\,
	cout => \my_calculator|Add0~15\);

-- Location: LCCOMB_X7_Y11_N10
\my_calculator|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux6~0_combout\ = (\my_calculator|Mux4~1_combout\ & (\my_calculator|Mux4~0_combout\)) # (!\my_calculator|Mux4~1_combout\ & ((\my_calculator|Mux4~0_combout\ & (\my_calculator|Add1~12_combout\)) # (!\my_calculator|Mux4~0_combout\ & 
-- ((\my_calculator|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Mux4~1_combout\,
	datab => \my_calculator|Mux4~0_combout\,
	datac => \my_calculator|Add1~12_combout\,
	datad => \my_calculator|Add0~14_combout\,
	combout => \my_calculator|Mux6~0_combout\);

-- Location: LCCOMB_X7_Y11_N0
\my_calculator|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux6~1_combout\ = (\my_calculator|Mux4~1_combout\ & ((\my_calculator|Mux6~0_combout\ & (\my_calculator|Add2~12_combout\)) # (!\my_calculator|Mux6~0_combout\ & ((\my_calculator|Add3~14_combout\))))) # (!\my_calculator|Mux4~1_combout\ & 
-- (((\my_calculator|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Add2~12_combout\,
	datab => \my_calculator|Mux4~1_combout\,
	datac => \my_calculator|Add3~14_combout\,
	datad => \my_calculator|Mux6~0_combout\,
	combout => \my_calculator|Mux6~1_combout\);

-- Location: LCCOMB_X7_Y11_N4
\my_calculator|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux6~2_combout\ = (\my_FSM|state\(2) & ((\my_FSM|state\(0) & (\my_calculator|Add4~14_combout\)) # (!\my_FSM|state\(0) & ((\my_calculator|Mux6~1_combout\))))) # (!\my_FSM|state\(2) & (((\my_calculator|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(2),
	datab => \my_FSM|state\(0),
	datac => \my_calculator|Add4~14_combout\,
	datad => \my_calculator|Mux6~1_combout\,
	combout => \my_calculator|Mux6~2_combout\);

-- Location: LCCOMB_X7_Y11_N18
\my_calculator|sum[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|sum\(7) = (!\reset~input_o\ & ((\my_calculator|Mux0~4_combout\ & ((\my_calculator|Mux6~2_combout\))) # (!\my_calculator|Mux0~4_combout\ & (\my_calculator|sum\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \my_calculator|sum\(7),
	datac => \my_calculator|Mux6~2_combout\,
	datad => \my_calculator|Mux0~4_combout\,
	combout => \my_calculator|sum\(7));

-- Location: LCCOMB_X12_Y11_N20
\my_calculator|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add4~16_combout\ = (\my_calculator|sum\(8) & ((GND) # (!\my_calculator|Add4~15\))) # (!\my_calculator|sum\(8) & (\my_calculator|Add4~15\ $ (GND)))
-- \my_calculator|Add4~17\ = CARRY((\my_calculator|sum\(8)) # (!\my_calculator|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(8),
	datad => VCC,
	cin => \my_calculator|Add4~15\,
	combout => \my_calculator|Add4~16_combout\,
	cout => \my_calculator|Add4~17\);

-- Location: LCCOMB_X12_Y11_N22
\my_calculator|Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add4~18_combout\ = \my_calculator|Add4~17\ $ (!\my_calculator|sum\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \my_calculator|sum\(9),
	cin => \my_calculator|Add4~17\,
	combout => \my_calculator|Add4~18_combout\);

-- Location: LCCOMB_X8_Y11_N24
\my_calculator|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add0~16_combout\ = (\my_calculator|sum\(8) & (\my_calculator|Add0~15\ $ (GND))) # (!\my_calculator|sum\(8) & (!\my_calculator|Add0~15\ & VCC))
-- \my_calculator|Add0~17\ = CARRY((\my_calculator|sum\(8) & !\my_calculator|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(8),
	datad => VCC,
	cin => \my_calculator|Add0~15\,
	combout => \my_calculator|Add0~16_combout\,
	cout => \my_calculator|Add0~17\);

-- Location: LCCOMB_X10_Y11_N2
\my_calculator|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux5~0_combout\ = (\my_calculator|Mux4~1_combout\ & ((\my_calculator|Add3~16_combout\) # ((\my_calculator|Mux4~0_combout\)))) # (!\my_calculator|Mux4~1_combout\ & (((\my_calculator|Add0~16_combout\ & !\my_calculator|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Add3~16_combout\,
	datab => \my_calculator|Add0~16_combout\,
	datac => \my_calculator|Mux4~1_combout\,
	datad => \my_calculator|Mux4~0_combout\,
	combout => \my_calculator|Mux5~0_combout\);

-- Location: LCCOMB_X11_Y11_N12
\my_calculator|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux5~1_combout\ = (\my_calculator|Mux4~0_combout\ & ((\my_calculator|Mux5~0_combout\ & (\my_calculator|Add2~14_combout\)) # (!\my_calculator|Mux5~0_combout\ & ((\my_calculator|Add1~14_combout\))))) # (!\my_calculator|Mux4~0_combout\ & 
-- (((\my_calculator|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Add2~14_combout\,
	datab => \my_calculator|Add1~14_combout\,
	datac => \my_calculator|Mux4~0_combout\,
	datad => \my_calculator|Mux5~0_combout\,
	combout => \my_calculator|Mux5~1_combout\);

-- Location: LCCOMB_X11_Y11_N2
\my_calculator|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux5~2_combout\ = (\my_FSM|state\(0) & ((\my_FSM|state\(2) & (\my_calculator|Add4~16_combout\)) # (!\my_FSM|state\(2) & ((\my_calculator|Mux5~1_combout\))))) # (!\my_FSM|state\(0) & (((\my_calculator|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(0),
	datab => \my_FSM|state\(2),
	datac => \my_calculator|Add4~16_combout\,
	datad => \my_calculator|Mux5~1_combout\,
	combout => \my_calculator|Mux5~2_combout\);

-- Location: LCCOMB_X11_Y11_N10
\my_calculator|sum[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|sum\(8) = (!\reset~input_o\ & ((\my_calculator|Mux0~4_combout\ & ((\my_calculator|Mux5~2_combout\))) # (!\my_calculator|Mux0~4_combout\ & (\my_calculator|sum\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(8),
	datab => \reset~input_o\,
	datac => \my_calculator|Mux0~4_combout\,
	datad => \my_calculator|Mux5~2_combout\,
	combout => \my_calculator|sum\(8));

-- Location: LCCOMB_X10_Y11_N24
\my_calculator|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add3~18_combout\ = \my_calculator|Add3~17\ $ (!\my_calculator|sum\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \my_calculator|sum\(9),
	cin => \my_calculator|Add3~17\,
	combout => \my_calculator|Add3~18_combout\);

-- Location: LCCOMB_X9_Y11_N16
\my_calculator|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add2~16_combout\ = \my_calculator|Add2~15\ $ (!\my_calculator|sum\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \my_calculator|sum\(9),
	cin => \my_calculator|Add2~15\,
	combout => \my_calculator|Add2~16_combout\);

-- Location: LCCOMB_X11_Y11_N4
\my_calculator|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux4~2_combout\ = (\my_calculator|Mux4~1_combout\ & (((\my_calculator|Add2~16_combout\) # (!\my_calculator|Mux4~0_combout\)))) # (!\my_calculator|Mux4~1_combout\ & (\my_calculator|Add1~16_combout\ & ((\my_calculator|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Add1~16_combout\,
	datab => \my_calculator|Mux4~1_combout\,
	datac => \my_calculator|Add2~16_combout\,
	datad => \my_calculator|Mux4~0_combout\,
	combout => \my_calculator|Mux4~2_combout\);

-- Location: LCCOMB_X8_Y11_N26
\my_calculator|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add0~18_combout\ = \my_calculator|sum\(9) $ (\my_calculator|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(9),
	cin => \my_calculator|Add0~17\,
	combout => \my_calculator|Add0~18_combout\);

-- Location: LCCOMB_X11_Y11_N0
\my_calculator|Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux4~3_combout\ = (\my_calculator|Mux4~0_combout\ & (((\my_calculator|Mux4~2_combout\)))) # (!\my_calculator|Mux4~0_combout\ & ((\my_calculator|Mux4~2_combout\ & (\my_calculator|Add3~18_combout\)) # (!\my_calculator|Mux4~2_combout\ & 
-- ((\my_calculator|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Mux4~0_combout\,
	datab => \my_calculator|Add3~18_combout\,
	datac => \my_calculator|Mux4~2_combout\,
	datad => \my_calculator|Add0~18_combout\,
	combout => \my_calculator|Mux4~3_combout\);

-- Location: LCCOMB_X11_Y11_N8
\my_calculator|Mux4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux4~4_combout\ = (\my_FSM|state\(0) & ((\my_FSM|state\(2) & (\my_calculator|Add4~18_combout\)) # (!\my_FSM|state\(2) & ((\my_calculator|Mux4~3_combout\))))) # (!\my_FSM|state\(0) & (((\my_calculator|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(0),
	datab => \my_FSM|state\(2),
	datac => \my_calculator|Add4~18_combout\,
	datad => \my_calculator|Mux4~3_combout\,
	combout => \my_calculator|Mux4~4_combout\);

-- Location: LCCOMB_X11_Y11_N6
\my_calculator|sum[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|sum\(9) = (!\reset~input_o\ & ((\my_calculator|Mux0~4_combout\ & ((\my_calculator|Mux4~4_combout\))) # (!\my_calculator|Mux0~4_combout\ & (\my_calculator|sum\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(9),
	datab => \reset~input_o\,
	datac => \my_calculator|Mux0~4_combout\,
	datad => \my_calculator|Mux4~4_combout\,
	combout => \my_calculator|sum\(9));

-- Location: LCCOMB_X7_Y11_N6
\my_calculator|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux0~1_combout\ = (\my_calculator|sum\(0) & ((\my_calculator|sum\(4)) # ((\my_calculator|sum\(2) & \my_calculator|sum\(1))))) # (!\my_calculator|sum\(0) & (\my_calculator|sum\(4) & ((\my_calculator|sum\(2)) # (\my_calculator|sum\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(0),
	datab => \my_calculator|sum\(2),
	datac => \my_calculator|sum\(4),
	datad => \my_calculator|sum\(1),
	combout => \my_calculator|Mux0~1_combout\);

-- Location: LCCOMB_X8_Y11_N4
\my_calculator|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux0~2_combout\ = (\my_FSM|state\(0) & (\my_calculator|sum\(3) & (\my_calculator|Mux0~1_combout\ & \my_calculator|sum\(4)))) # (!\my_FSM|state\(0) & ((\my_calculator|sum\(4)) # ((\my_calculator|sum\(3) & \my_calculator|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(0),
	datab => \my_calculator|sum\(3),
	datac => \my_calculator|Mux0~1_combout\,
	datad => \my_calculator|sum\(4),
	combout => \my_calculator|Mux0~2_combout\);

-- Location: LCCOMB_X8_Y11_N0
\my_calculator|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux0~0_combout\ = (\my_calculator|sum\(6)) # ((\my_calculator|sum\(8)) # ((\my_calculator|sum\(5)) # (\my_calculator|sum\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(6),
	datab => \my_calculator|sum\(8),
	datac => \my_calculator|sum\(5),
	datad => \my_calculator|sum\(7),
	combout => \my_calculator|Mux0~0_combout\);

-- Location: LCCOMB_X8_Y11_N30
\my_calculator|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux0~3_combout\ = (\my_calculator|sum\(9)) # ((\my_calculator|Mux0~2_combout\) # (\my_calculator|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(9),
	datac => \my_calculator|Mux0~2_combout\,
	datad => \my_calculator|Mux0~0_combout\,
	combout => \my_calculator|Mux0~3_combout\);

-- Location: LCCOMB_X6_Y11_N28
\my_calculator|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux0~4_combout\ = (\my_FSM|state\(1) & (((!\my_FSM|state\(2))))) # (!\my_FSM|state\(1) & ((\my_FSM|state\(2) & ((\my_calculator|Mux0~3_combout\))) # (!\my_FSM|state\(2) & (\my_FSM|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(1),
	datab => \my_FSM|state\(0),
	datac => \my_calculator|Mux0~3_combout\,
	datad => \my_FSM|state\(2),
	combout => \my_calculator|Mux0~4_combout\);

-- Location: LCCOMB_X8_Y11_N2
\my_calculator|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux10~0_combout\ = (\my_FSM|state\(0)) # (\my_calculator|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_FSM|state\(0),
	datad => \my_calculator|Add1~4_combout\,
	combout => \my_calculator|Mux10~0_combout\);

-- Location: LCCOMB_X8_Y11_N28
\my_calculator|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux10~1_combout\ = (!\my_FSM|state\(2) & ((\my_FSM|state\(1) & ((\my_calculator|Mux10~0_combout\))) # (!\my_FSM|state\(1) & (\my_calculator|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(1),
	datab => \my_calculator|Add0~6_combout\,
	datac => \my_FSM|state\(2),
	datad => \my_calculator|Mux10~0_combout\,
	combout => \my_calculator|Mux10~1_combout\);

-- Location: LCCOMB_X9_Y11_N28
\my_calculator|Mux10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux10~2_combout\ = (\my_calculator|Mux4~1_combout\ & ((\my_calculator|Mux10~1_combout\ & (\my_calculator|Add2~4_combout\)) # (!\my_calculator|Mux10~1_combout\ & ((\my_calculator|Add3~6_combout\))))) # (!\my_calculator|Mux4~1_combout\ & 
-- (((\my_calculator|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Add2~4_combout\,
	datab => \my_calculator|Mux4~1_combout\,
	datac => \my_calculator|Add3~6_combout\,
	datad => \my_calculator|Mux10~1_combout\,
	combout => \my_calculator|Mux10~2_combout\);

-- Location: LCCOMB_X9_Y11_N18
\my_calculator|Mux10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux10~3_combout\ = (\my_FSM|state\(0) & ((\my_FSM|state\(2) & (\my_calculator|Add4~6_combout\)) # (!\my_FSM|state\(2) & ((\my_calculator|Mux10~2_combout\))))) # (!\my_FSM|state\(0) & (((\my_calculator|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Add4~6_combout\,
	datab => \my_FSM|state\(0),
	datac => \my_FSM|state\(2),
	datad => \my_calculator|Mux10~2_combout\,
	combout => \my_calculator|Mux10~3_combout\);

-- Location: LCCOMB_X9_Y11_N26
\my_calculator|sum[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|sum\(3) = (!\reset~input_o\ & ((\my_calculator|Mux0~4_combout\ & ((\my_calculator|Mux10~3_combout\))) # (!\my_calculator|Mux0~4_combout\ & (\my_calculator|sum\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(3),
	datab => \reset~input_o\,
	datac => \my_calculator|Mux0~4_combout\,
	datad => \my_calculator|Mux10~3_combout\,
	combout => \my_calculator|sum\(3));

-- Location: LCCOMB_X11_Y13_N14
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \my_calculator|sum\(7) $ (VCC)
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\my_calculator|sum\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(7),
	datad => VCC,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X11_Y13_N16
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\my_calculator|sum\(8) & (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\my_calculator|sum\(8) & 
-- (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\my_calculator|sum\(8) & !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(8),
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X11_Y13_N18
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\my_calculator|sum\(9) & (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\my_calculator|sum\(9) & 
-- (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\my_calculator|sum\(9) & !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(9),
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X11_Y13_N20
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X11_Y13_N24
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~59_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~59_combout\);

-- Location: LCCOMB_X11_Y13_N12
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[16]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[16]~61_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[16]~61_combout\);

-- Location: LCCOMB_X12_Y12_N0
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~63_combout\ = (\my_calculator|sum\(6) & !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(6),
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~63_combout\);

-- Location: LCCOMB_X11_Y13_N0
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~62_combout\) # 
-- (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~63_combout\)))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~62_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~62_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X11_Y13_N4
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~58_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~59_combout\)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~58_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~59_combout\)))))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~58_combout\) 
-- # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~58_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~59_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X11_Y13_N28
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[18]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[18]~57_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[18]~57_combout\);

-- Location: LCCOMB_X11_Y13_N6
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[18]~56_combout\ & 
-- (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[18]~57_combout\ & !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[18]~56_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[18]~57_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X11_Y13_N8
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X12_Y13_N16
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[23]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X12_Y13_N0
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~99_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\my_calculator|sum\(7)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \my_calculator|sum\(7),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~99_combout\);

-- Location: LCCOMB_X12_Y13_N28
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[21]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[21]~67_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[21]~67_combout\);

-- Location: LCCOMB_X12_Y13_N20
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~69_combout\ = (\my_calculator|sum\(5) & !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(5),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~69_combout\);

-- Location: LCCOMB_X12_Y13_N6
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~68_combout\) # 
-- (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~69_combout\)))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~68_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~68_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~69_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X12_Y13_N8
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[21]~66_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[21]~67_combout\)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[21]~66_combout\ & (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[21]~67_combout\)))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[21]~66_combout\ & (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[21]~67_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[21]~67_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X12_Y13_N12
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[23]~98_combout\ & 
-- (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[23]~64_combout\ & !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[23]~98_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X12_Y13_N14
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X12_Y13_N18
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~100_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\my_calculator|sum\(6))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(6),
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~100_combout\);

-- Location: LCCOMB_X12_Y13_N4
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[28]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[28]~94_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~99_combout\) 
-- # ((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~99_combout\,
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[28]~94_combout\);

-- Location: LCCOMB_X16_Y13_N4
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~71_combout\ = (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~71_combout\);

-- Location: LCCOMB_X16_Y13_N8
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~73_combout\ = (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~73_combout\);

-- Location: LCCOMB_X16_Y13_N14
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~74_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \my_calculator|sum\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \my_calculator|sum\(4),
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~74_combout\);

-- Location: LCCOMB_X16_Y13_N16
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~75_combout\) # 
-- (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~74_combout\)))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~75_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~75_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X16_Y13_N18
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~72_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~73_combout\)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~72_combout\ & (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~73_combout\)))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~72_combout\ & (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~73_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~72_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~73_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X16_Y13_N22
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[28]~70_combout\ & 
-- (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[28]~94_combout\ & !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[28]~70_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[28]~94_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X16_Y13_N24
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X16_Y13_N6
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[33]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[33]~95_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~100_combout\) 
-- # ((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~100_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[33]~95_combout\);

-- Location: LCCOMB_X16_Y13_N28
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~77_combout\ = (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~77_combout\);

-- Location: LCCOMB_X19_Y13_N16
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~78_combout\ = (\my_calculator|sum\(4) & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(4),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~78_combout\);

-- Location: LCCOMB_X19_Y13_N28
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[30]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[30]~81_combout\ = (\my_calculator|sum\(3) & !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(3),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[30]~81_combout\);

-- Location: LCCOMB_X19_Y13_N6
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & 
-- (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~79_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~78_combout\)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & 
-- (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~79_combout\ & (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~78_combout\)))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~79_combout\ & (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~78_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~79_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~78_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X19_Y13_N10
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[33]~76_combout\ & 
-- (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[33]~95_combout\ & !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[33]~76_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[33]~95_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X19_Y13_N12
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X19_Y13_N22
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[36]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[36]~84_combout\ = (\my_calculator|sum\(3) & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(3),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[36]~84_combout\);

-- Location: LCCOMB_X21_Y13_N28
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[35]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\ = (\my_calculator|sum\(2) & !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(2),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\);

-- Location: LCCOMB_X21_Y13_N12
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[35]~86_combout\) # 
-- (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\)))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[35]~86_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[35]~86_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X21_Y13_N14
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & 
-- (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[36]~85_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[36]~84_combout\)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & 
-- (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[36]~85_combout\ & (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[36]~84_combout\)))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[36]~85_combout\ & (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[36]~84_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[36]~85_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[36]~84_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X19_Y13_N20
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[38]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[38]~96_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~101_combout\) 
-- # ((!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~101_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[38]~96_combout\);

-- Location: LCCOMB_X19_Y13_N0
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~102_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\my_calculator|sum\(4)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \my_calculator|sum\(4),
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~102_combout\);

-- Location: LCCOMB_X21_Y13_N18
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[38]~82_combout\ & 
-- (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[38]~96_combout\ & !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[38]~82_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[38]~96_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y13_N20
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y13_N24
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~91_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~91_combout\);

-- Location: LCCOMB_X12_Y17_N10
\my_counter|wordselector[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_counter|wordselector[0]~1_combout\ = !\my_counter|wordselector\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_counter|wordselector\(0),
	combout => \my_counter|wordselector[0]~1_combout\);

-- Location: FF_X12_Y17_N11
\my_counter|wordselector[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_clock|count[15]~clkctrl_outclk\,
	d => \my_counter|wordselector[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_counter|wordselector\(0));

-- Location: LCCOMB_X12_Y17_N12
\my_counter|wordselector[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_counter|wordselector[1]~0_combout\ = \my_counter|wordselector\(1) $ (\my_counter|wordselector\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_counter|wordselector\(1),
	datad => \my_counter|wordselector\(0),
	combout => \my_counter|wordselector[1]~0_combout\);

-- Location: FF_X12_Y17_N13
\my_counter|wordselector[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_clock|count[15]~clkctrl_outclk\,
	d => \my_counter|wordselector[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_counter|wordselector\(1));

-- Location: LCCOMB_X19_Y13_N2
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[43]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[43]~97_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~102_combout\) 
-- # ((!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~102_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[43]~97_combout\);

-- Location: LCCOMB_X21_Y13_N10
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~92_combout\ = (\my_calculator|sum\(2) & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(2),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~92_combout\);

-- Location: LCCOMB_X18_Y13_N18
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[40]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[40]~88_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \my_calculator|sum\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \my_calculator|sum\(1),
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[40]~88_combout\);

-- Location: LCCOMB_X21_Y13_N0
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[40]~89_combout\) # 
-- (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[40]~88_combout\)))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[40]~89_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[40]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[40]~89_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[40]~88_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X21_Y13_N2
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & 
-- (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~93_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~92_combout\)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & 
-- (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~93_combout\ & (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~92_combout\)))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~93_combout\ & (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~92_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~93_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~92_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X21_Y13_N6
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[43]~90_combout\ & 
-- (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[43]~97_combout\ & !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[43]~90_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[43]~97_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y13_N8
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y12_N20
\my_gettempnumber|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux0~1_combout\ = (\my_counter|wordselector\(1) & (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~103_combout\) # 
-- (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~103_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~91_combout\,
	datac => \my_counter|wordselector\(1),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mux0~1_combout\);

-- Location: LCCOMB_X13_Y12_N8
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \my_calculator|sum\(7) $ (VCC)
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\my_calculator|sum\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(7),
	datad => VCC,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X13_Y12_N14
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X17_Y12_N4
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[18]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\ = (\my_calculator|sum\(9) & \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(9),
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\);

-- Location: LCCOMB_X13_Y12_N18
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\ = (\my_calculator|sum\(8) & \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(8),
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\);

-- Location: LCCOMB_X13_Y12_N4
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\);

-- Location: LCCOMB_X14_Y12_N26
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ = (\my_calculator|sum\(6) & !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(6),
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\);

-- Location: LCCOMB_X13_Y12_N24
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\)))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\ & (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\)))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\ & (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X13_Y12_N26
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\)))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\)))))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\) 
-- # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X13_Y12_N28
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[18]~57_combout\ & 
-- (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\ & !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[18]~57_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X13_Y12_N30
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X14_Y12_N28
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[23]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ = (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X14_Y12_N14
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X14_Y12_N8
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \my_calculator|sum\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \my_calculator|sum\(6),
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\);

-- Location: LCCOMB_X14_Y12_N0
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \my_calculator|sum\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \my_calculator|sum\(5),
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\);

-- Location: LCCOMB_X14_Y12_N16
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\) # 
-- (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\)))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X14_Y12_N18
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\)))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\ & (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\)))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\ & (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X14_Y12_N20
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\)))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\)))))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\) 
-- # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X14_Y12_N22
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[23]~98_combout\ & 
-- (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ & !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[23]~98_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X14_Y12_N24
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X19_Y12_N10
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (GND)
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X19_Y12_N14
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & VCC)) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND)))
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X19_Y12_N16
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY(!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X19_Y12_N18
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X18_Y12_N28
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[32]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[32]~38_combout\ = (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[32]~38_combout\);

-- Location: LCCOMB_X18_Y12_N24
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[31]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[31]~41_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & 
-- !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[31]~41_combout\);

-- Location: LCCOMB_X14_Y12_N10
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[28]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\);

-- Location: LCCOMB_X16_Y12_N4
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\);

-- Location: LCCOMB_X16_Y12_N0
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[26]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\ = (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\);

-- Location: LCCOMB_X16_Y12_N24
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[25]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\ = (\my_calculator|sum\(4) & !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(4),
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\);

-- Location: LCCOMB_X16_Y12_N16
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[28]~94_combout\ & 
-- (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\ & !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[28]~94_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X16_Y12_N18
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X18_Y12_N0
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~42_combout\ = (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~42_combout\);

-- Location: LCCOMB_X18_Y12_N10
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~43_combout\) # 
-- (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~42_combout\)))
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~43_combout\) # (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~43_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~42_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X18_Y12_N14
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- (((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\) # (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[32]~38_combout\)))) # (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- ((((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\) # (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[32]~38_combout\)))))
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\) 
-- # (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[32]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[32]~38_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X18_Y12_N8
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[38]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[38]~44_combout\ = (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[38]~44_combout\);

-- Location: LCCOMB_X18_Y12_N2
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[33]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[33]~37_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[33]~37_combout\);

-- Location: LCCOMB_X18_Y12_N16
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[33]~36_combout\ & 
-- (!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[33]~37_combout\ & !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[33]~36_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[33]~37_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X18_Y12_N18
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X19_Y12_N26
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~57_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # 
-- (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~57_combout\);

-- Location: LCCOMB_X22_Y12_N14
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~46_combout\ = (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~46_combout\);

-- Location: LCCOMB_X16_Y12_N28
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[33]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[33]~95_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\) 
-- # ((!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[33]~95_combout\);

-- Location: LCCOMB_X17_Y12_N2
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\my_calculator|sum\(5))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(5),
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\);

-- Location: LCCOMB_X17_Y12_N28
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\ = (\my_calculator|sum\(4) & \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(4),
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\);

-- Location: LCCOMB_X17_Y12_N24
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\ = (\my_calculator|sum\(3) & \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(3),
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\);

-- Location: LCCOMB_X17_Y12_N8
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & 
-- (((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\)))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & 
-- (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\ & (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\)))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\ & (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X17_Y12_N10
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- (((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\)))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ 
-- & ((((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\)))))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\) 
-- # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X17_Y12_N12
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[33]~76_combout\ & 
-- (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[33]~95_combout\ & !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[33]~76_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[33]~95_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X17_Y12_N14
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y12_N16
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[35]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[35]~47_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[35]~47_combout\);

-- Location: LCCOMB_X22_Y12_N0
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[35]~48_combout\) # 
-- (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[35]~47_combout\)))
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[35]~48_combout\) # (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[35]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[35]~48_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[35]~47_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X22_Y12_N2
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & 
-- (((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\) # (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~46_combout\)))) # (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & 
-- (!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\ & (!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~46_combout\)))
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\ & (!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~46_combout\ & 
-- !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~46_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X22_Y12_N4
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & 
-- (((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~45_combout\) # (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~57_combout\)))) # (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & 
-- ((((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~45_combout\) # (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~57_combout\)))))
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~45_combout\) 
-- # (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~45_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~57_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X22_Y12_N6
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[38]~56_combout\ & 
-- (!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[38]~44_combout\ & !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[38]~56_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[38]~44_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y12_N8
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y12_N18
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~50_combout\ = (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~50_combout\);

-- Location: LCCOMB_X22_Y12_N10
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\ = !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\);

-- Location: LCCOMB_X22_Y12_N30
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~59_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # 
-- (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~59_combout\);

-- Location: LCCOMB_X17_Y13_N24
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[38]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[38]~82_combout\ = (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[38]~82_combout\);

-- Location: LCCOMB_X17_Y13_N16
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\ = (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\);

-- Location: LCCOMB_X17_Y13_N20
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[36]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\);

-- Location: LCCOMB_X17_Y13_N28
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[35]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\ = (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \my_calculator|sum\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \my_calculator|sum\(2),
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\);

-- Location: LCCOMB_X17_Y13_N2
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\) # 
-- (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\)))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X17_Y13_N6
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & 
-- (((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\)))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ 
-- & ((((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\)))))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & 
-- ((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X17_Y13_N8
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[38]~96_combout\ & 
-- (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[38]~82_combout\ & !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[38]~96_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[38]~82_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X17_Y13_N10
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X18_Y13_N30
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~52_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~52_combout\);

-- Location: LCCOMB_X21_Y12_N0
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\ = (((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\) # 
-- (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~52_combout\)))
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ = CARRY((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\) # (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~52_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\,
	cout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~3\);

-- Location: LCCOMB_X21_Y12_N4
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ & 
-- (((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~55_combout\) # (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~50_combout\)))) # (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ & 
-- ((((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~55_combout\) # (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~50_combout\)))))
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~7\ = CARRY((!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ & ((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~55_combout\) 
-- # (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~55_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~50_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~5\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\,
	cout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~7\);

-- Location: LCCOMB_X22_Y12_N24
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[43]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[43]~49_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & 
-- !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[43]~49_combout\);

-- Location: LCCOMB_X21_Y12_N6
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\ = CARRY((!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[43]~54_combout\ & 
-- (!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[43]~49_combout\ & !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[43]~54_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[43]~49_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~7\,
	cout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\);

-- Location: LCCOMB_X21_Y12_N8
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ = \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\);

-- Location: LCCOMB_X21_Y12_N14
\my_gettempnumber|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux0~2_combout\ = (\my_counter|wordselector\(0) & ((\my_counter|wordselector\(1)) # ((\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\ & 
-- !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_counter|wordselector\(0),
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\,
	datac => \my_counter|wordselector\(1),
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	combout => \my_gettempnumber|Mux0~2_combout\);

-- Location: LCCOMB_X22_Y12_N28
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~55_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\) 
-- # ((!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~55_combout\);

-- Location: LCCOMB_X21_Y12_N10
\my_gettempnumber|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux0~0_combout\ = (\my_counter|wordselector\(0) & (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & ((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~55_combout\) # 
-- (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_counter|wordselector\(0),
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~55_combout\,
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~50_combout\,
	combout => \my_gettempnumber|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y12_N18
\my_gettempnumber|Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux0~5_combout\ = (\my_gettempnumber|Mux0~4_combout\) # ((\my_gettempnumber|Mux0~1_combout\) # ((\my_gettempnumber|Mux0~2_combout\) # (\my_gettempnumber|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mux0~4_combout\,
	datab => \my_gettempnumber|Mux0~1_combout\,
	datac => \my_gettempnumber|Mux0~2_combout\,
	datad => \my_gettempnumber|Mux0~0_combout\,
	combout => \my_gettempnumber|Mux0~5_combout\);

-- Location: LCCOMB_X10_Y12_N14
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\my_calculator|sum\(6) & (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\my_calculator|sum\(6) & 
-- (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\my_calculator|sum\(6) & !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(6),
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X10_Y12_N16
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\my_calculator|sum\(7) & ((GND) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\my_calculator|sum\(7) & 
-- (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\my_calculator|sum\(7)) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(7),
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X10_Y12_N18
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\my_calculator|sum\(8) & (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\my_calculator|sum\(8) & 
-- ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\my_calculator|sum\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(8),
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X10_Y12_N22
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X19_Y11_N20
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\ = (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\);

-- Location: LCCOMB_X16_Y11_N0
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[52]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\ = (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\);

-- Location: LCCOMB_X10_Y12_N26
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & 
-- !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\);

-- Location: LCCOMB_X19_Y11_N24
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \my_calculator|sum\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \my_calculator|sum\(5),
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\);

-- Location: LCCOMB_X19_Y11_N28
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[49]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\ = (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \my_calculator|sum\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \my_calculator|sum\(4),
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\);

-- Location: LCCOMB_X19_Y11_N8
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & 
-- (((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\)))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & 
-- ((((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\)))))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\) 
-- # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X19_Y11_N18
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[54]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \my_calculator|sum\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \my_calculator|sum\(9),
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\);

-- Location: LCCOMB_X19_Y11_N10
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[54]~55_combout\ & 
-- (!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\ & !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[54]~55_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X19_Y11_N12
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X19_Y11_N26
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[62]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[62]~66_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & 
-- !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[62]~66_combout\);

-- Location: LCCOMB_X10_Y12_N8
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\my_calculator|sum\(7))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \my_calculator|sum\(7),
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\);

-- Location: LCCOMB_X10_Y12_N10
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\my_calculator|sum\(6))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \my_calculator|sum\(6),
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\);

-- Location: LCCOMB_X10_Y12_N24
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\my_calculator|sum\(5)))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datab => \my_calculator|sum\(5),
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\);

-- Location: LCCOMB_X13_Y14_N6
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ & 
-- !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\);

-- Location: LCCOMB_X14_Y11_N0
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[48]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[48]~74_combout\ = (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \my_calculator|sum\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \my_calculator|sum\(3),
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[48]~74_combout\);

-- Location: LCCOMB_X14_Y11_N10
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[48]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[48]~73_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \my_calculator|sum\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \my_calculator|sum\(3),
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[48]~73_combout\);

-- Location: LCCOMB_X14_Y11_N20
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[48]~74_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[48]~73_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[48]~74_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[48]~73_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X14_Y14_N24
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~75_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ & 
-- !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~75_combout\);

-- Location: LCCOMB_X14_Y14_N2
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & 
-- (((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\)))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & 
-- (!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\ & (!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\)))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ = CARRY((!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\ & (!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\ & 
-- !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\);

-- Location: LCCOMB_X14_Y14_N6
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\ & 
-- (((!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\ & ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\ 
-- & (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\ & ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\) 
-- # (GND)))))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ = CARRY(((!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\ & !\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\)) 
-- # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\);

-- Location: LCCOMB_X14_Y14_N10
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\ = CARRY((!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[62]~88_combout\ & 
-- (!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[62]~66_combout\ & !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[62]~88_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[62]~66_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\);

-- Location: LCCOMB_X14_Y14_N12
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ = \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\);

-- Location: LCCOMB_X19_Y17_N16
\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\ = \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ $ (GND)
-- \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ = CARRY(!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\,
	cout => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\);

-- Location: LCCOMB_X19_Y17_N18
\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (!\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\)) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ & VCC))
-- \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ = CARRY((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- !\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\,
	combout => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\,
	cout => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\);

-- Location: LCCOMB_X19_Y17_N0
\my_gettempnumber|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux2~1_combout\ = (!\my_counter|wordselector\(0) & !\my_counter|wordselector\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_counter|wordselector\(0),
	datad => \my_counter|wordselector\(1),
	combout => \my_gettempnumber|Mux2~1_combout\);

-- Location: LCCOMB_X19_Y17_N22
\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\ = CARRY(!\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\,
	cout => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\);

-- Location: LCCOMB_X19_Y17_N24
\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ = \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\,
	combout => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\);

-- Location: LCCOMB_X19_Y17_N28
\my_gettempnumber|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux1~0_combout\ = (\my_gettempnumber|Mux2~1_combout\ & ((\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & 
-- (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)) # (!\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & 
-- ((\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\,
	datac => \my_gettempnumber|Mux2~1_combout\,
	datad => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	combout => \my_gettempnumber|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y13_N2
\my_gettempnumber|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux1~2_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (\my_calculator|sum\(2))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \my_calculator|sum\(2),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	combout => \my_gettempnumber|Mux1~2_combout\);

-- Location: LCCOMB_X22_Y13_N24
\my_gettempnumber|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux1~3_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\my_gettempnumber|Mux1~2_combout\)) # 
-- (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \my_gettempnumber|Mux1~2_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \my_gettempnumber|Mux1~3_combout\);

-- Location: LCCOMB_X19_Y17_N26
\my_gettempnumber|Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux1~4_combout\ = (\my_counter|wordselector\(0)) # ((\my_counter|wordselector\(1) & \my_gettempnumber|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_counter|wordselector\(1),
	datac => \my_counter|wordselector\(0),
	datad => \my_gettempnumber|Mux1~3_combout\,
	combout => \my_gettempnumber|Mux1~4_combout\);

-- Location: LCCOMB_X22_Y12_N20
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~51_combout\ = (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~51_combout\);

-- Location: LCCOMB_X21_Y12_N16
\my_gettempnumber|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux1~1_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & (((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~51_combout\) # 
-- (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~59_combout\)))) # (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & 
-- (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~51_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~59_combout\,
	combout => \my_gettempnumber|Mux1~1_combout\);

-- Location: LCCOMB_X19_Y17_N4
\my_gettempnumber|Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux1~5_combout\ = (\my_gettempnumber|Mux1~0_combout\) # ((\my_gettempnumber|Mux1~4_combout\ & ((\my_counter|wordselector\(1)) # (\my_gettempnumber|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_counter|wordselector\(1),
	datab => \my_gettempnumber|Mux1~0_combout\,
	datac => \my_gettempnumber|Mux1~4_combout\,
	datad => \my_gettempnumber|Mux1~1_combout\,
	combout => \my_gettempnumber|Mux1~5_combout\);

-- Location: LCCOMB_X14_Y14_N16
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[70]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\) 
-- # ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\);

-- Location: LCCOMB_X13_Y14_N2
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[69]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[69]~77_combout\ = (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[69]~77_combout\);

-- Location: LCCOMB_X13_Y14_N4
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[68]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[68]~78_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ & 
-- !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[68]~78_combout\);

-- Location: LCCOMB_X13_Y14_N14
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[67]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\ = (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\);

-- Location: LCCOMB_X14_Y14_N18
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[66]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[66]~93_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\my_calculator|sum\(3)))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datac => \my_calculator|sum\(3),
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[66]~93_combout\);

-- Location: LCCOMB_X13_Y14_N0
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[65]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\ = (\my_calculator|sum\(2) & \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(2),
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\);

-- Location: LCCOMB_X13_Y14_N16
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\ = CARRY((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[65]~84_combout\) # 
-- (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[65]~84_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\,
	datad => VCC,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\);

-- Location: LCCOMB_X13_Y14_N18
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\ = CARRY((!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\ & 
-- (!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[66]~93_combout\ & !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[66]~93_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\);

-- Location: LCCOMB_X13_Y14_N20
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\ = CARRY((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[67]~92_combout\) # 
-- ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[67]~92_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\);

-- Location: LCCOMB_X13_Y14_N22
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\ = CARRY(((!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[68]~87_combout\ & 
-- !\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[68]~78_combout\)) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[68]~87_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[68]~78_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\);

-- Location: LCCOMB_X13_Y14_N24
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\ = CARRY((!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\ & 
-- ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[69]~86_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[69]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[69]~86_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[69]~77_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\);

-- Location: LCCOMB_X13_Y14_N26
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\ = CARRY((!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[70]~76_combout\ & 
-- (!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\ & !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[70]~76_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\);

-- Location: LCCOMB_X13_Y14_N28
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ = \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\);

-- Location: LCCOMB_X12_Y17_N20
\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\ = !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\);

-- Location: LCCOMB_X12_Y17_N28
\my_gettempnumber|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux3~0_combout\ = (\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & ((!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\))) # 
-- (!\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & (\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\,
	datac => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y17_N8
\my_gettempnumber|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux3~2_combout\ = (\my_counter|wordselector\(0) & ((!\my_counter|wordselector\(1)))) # (!\my_counter|wordselector\(0) & (\my_calculator|sum\(0) & \my_counter|wordselector\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(0),
	datac => \my_counter|wordselector\(0),
	datad => \my_counter|wordselector\(1),
	combout => \my_gettempnumber|Mux3~2_combout\);

-- Location: LCCOMB_X18_Y13_N28
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[43]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[43]~88_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[43]~88_combout\);

-- Location: LCCOMB_X17_Y13_N30
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[42]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[42]~103_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\my_calculator|sum\(3)))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \my_calculator|sum\(3),
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[42]~103_combout\);

-- Location: LCCOMB_X17_Y13_N18
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[41]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[41]~91_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[41]~91_combout\);

-- Location: LCCOMB_X18_Y13_N20
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[40]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[40]~93_combout\ = (\my_calculator|sum\(1) & !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(1),
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[40]~93_combout\);

-- Location: LCCOMB_X18_Y13_N2
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ = CARRY((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\) # 
-- (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[40]~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[40]~93_combout\,
	datad => VCC,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\);

-- Location: LCCOMB_X18_Y13_N4
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[41]~90_combout\ & 
-- (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[41]~91_combout\ & !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[41]~90_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[41]~91_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\);

-- Location: LCCOMB_X18_Y13_N6
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ & 
-- ((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[42]~89_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[42]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[42]~89_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[42]~103_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\);

-- Location: LCCOMB_X18_Y13_N8
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[43]~97_combout\ & 
-- (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[43]~88_combout\ & !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[43]~97_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[43]~88_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X18_Y13_N10
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X12_Y17_N22
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\ = !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\);

-- Location: LCCOMB_X12_Y17_N18
\my_gettempnumber|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux3~1_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)) # 
-- (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & ((\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	combout => \my_gettempnumber|Mux3~1_combout\);

-- Location: LCCOMB_X12_Y17_N14
\my_gettempnumber|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux3~3_combout\ = (\my_counter|wordselector\(1) & (((\my_gettempnumber|Mux3~2_combout\)))) # (!\my_counter|wordselector\(1) & ((\my_gettempnumber|Mux3~2_combout\ & ((\my_gettempnumber|Mux3~1_combout\))) # 
-- (!\my_gettempnumber|Mux3~2_combout\ & (\my_gettempnumber|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_counter|wordselector\(1),
	datab => \my_gettempnumber|Mux3~0_combout\,
	datac => \my_gettempnumber|Mux3~2_combout\,
	datad => \my_gettempnumber|Mux3~1_combout\,
	combout => \my_gettempnumber|Mux3~3_combout\);

-- Location: LCCOMB_X21_Y12_N24
\my_gettempnumber|Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux2~4_combout\ = (\my_counter|wordselector\(0)) # ((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\my_calculator|sum\(1)))) # 
-- (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_counter|wordselector\(0),
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datac => \my_calculator|sum\(1),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mux2~4_combout\);

-- Location: LCCOMB_X19_Y17_N30
\my_gettempnumber|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux2~2_combout\ = (\my_gettempnumber|Mux2~1_combout\ & ((\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & 
-- ((!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\))) # (!\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & 
-- (\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mux2~1_combout\,
	datab => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\,
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	combout => \my_gettempnumber|Mux2~2_combout\);

-- Location: LCCOMB_X21_Y12_N28
\my_gettempnumber|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux2~3_combout\ = (\my_gettempnumber|Mux2~2_combout\) # ((\my_counter|wordselector\(0) & (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & 
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_counter|wordselector\(0),
	datab => \my_gettempnumber|Mux2~2_combout\,
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\,
	combout => \my_gettempnumber|Mux2~3_combout\);

-- Location: LCCOMB_X21_Y12_N30
\my_gettempnumber|Mux2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux2~5_combout\ = (\my_gettempnumber|Mux2~0_combout\) # ((\my_gettempnumber|Mux2~3_combout\) # ((\my_gettempnumber|Mux2~4_combout\ & \my_counter|wordselector\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mux2~0_combout\,
	datab => \my_gettempnumber|Mux2~4_combout\,
	datac => \my_counter|wordselector\(1),
	datad => \my_gettempnumber|Mux2~3_combout\,
	combout => \my_gettempnumber|Mux2~5_combout\);

-- Location: LCCOMB_X12_Y17_N24
\my_numbertranslator|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_numbertranslator|WideOr6~0_combout\ = (\my_gettempnumber|Mux2~5_combout\ & (\my_gettempnumber|Mux0~5_combout\)) # (!\my_gettempnumber|Mux2~5_combout\ & (\my_gettempnumber|Mux1~5_combout\ $ (((!\my_gettempnumber|Mux0~5_combout\ & 
-- \my_gettempnumber|Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mux0~5_combout\,
	datab => \my_gettempnumber|Mux1~5_combout\,
	datac => \my_gettempnumber|Mux3~3_combout\,
	datad => \my_gettempnumber|Mux2~5_combout\,
	combout => \my_numbertranslator|WideOr6~0_combout\);

-- Location: LCCOMB_X12_Y17_N6
\my_numbertranslator|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_numbertranslator|WideOr5~0_combout\ = (\my_gettempnumber|Mux0~5_combout\ & ((\my_gettempnumber|Mux1~5_combout\) # ((\my_gettempnumber|Mux2~5_combout\)))) # (!\my_gettempnumber|Mux0~5_combout\ & (\my_gettempnumber|Mux1~5_combout\ & 
-- (\my_gettempnumber|Mux3~3_combout\ $ (\my_gettempnumber|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mux0~5_combout\,
	datab => \my_gettempnumber|Mux1~5_combout\,
	datac => \my_gettempnumber|Mux3~3_combout\,
	datad => \my_gettempnumber|Mux2~5_combout\,
	combout => \my_numbertranslator|WideOr5~0_combout\);

-- Location: LCCOMB_X12_Y17_N0
\my_numbertranslator|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_numbertranslator|WideOr4~0_combout\ = (\my_gettempnumber|Mux1~5_combout\ & (\my_gettempnumber|Mux0~5_combout\)) # (!\my_gettempnumber|Mux1~5_combout\ & (\my_gettempnumber|Mux2~5_combout\ & ((\my_gettempnumber|Mux0~5_combout\) # 
-- (!\my_gettempnumber|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mux0~5_combout\,
	datab => \my_gettempnumber|Mux1~5_combout\,
	datac => \my_gettempnumber|Mux3~3_combout\,
	datad => \my_gettempnumber|Mux2~5_combout\,
	combout => \my_numbertranslator|WideOr4~0_combout\);

-- Location: LCCOMB_X12_Y17_N2
\my_numbertranslator|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_numbertranslator|WideOr3~0_combout\ = (\my_gettempnumber|Mux2~5_combout\ & ((\my_gettempnumber|Mux0~5_combout\) # ((\my_gettempnumber|Mux1~5_combout\ & \my_gettempnumber|Mux3~3_combout\)))) # (!\my_gettempnumber|Mux2~5_combout\ & 
-- (\my_gettempnumber|Mux1~5_combout\ $ (((!\my_gettempnumber|Mux0~5_combout\ & \my_gettempnumber|Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mux0~5_combout\,
	datab => \my_gettempnumber|Mux1~5_combout\,
	datac => \my_gettempnumber|Mux3~3_combout\,
	datad => \my_gettempnumber|Mux2~5_combout\,
	combout => \my_numbertranslator|WideOr3~0_combout\);

-- Location: LCCOMB_X12_Y17_N4
\my_numbertranslator|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_numbertranslator|WideOr2~0_combout\ = (\my_gettempnumber|Mux3~3_combout\) # ((\my_gettempnumber|Mux2~5_combout\ & (\my_gettempnumber|Mux0~5_combout\)) # (!\my_gettempnumber|Mux2~5_combout\ & ((\my_gettempnumber|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mux0~5_combout\,
	datab => \my_gettempnumber|Mux1~5_combout\,
	datac => \my_gettempnumber|Mux3~3_combout\,
	datad => \my_gettempnumber|Mux2~5_combout\,
	combout => \my_numbertranslator|WideOr2~0_combout\);

-- Location: LCCOMB_X12_Y17_N30
\my_numbertranslator|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_numbertranslator|WideOr1~0_combout\ = (\my_gettempnumber|Mux1~5_combout\ & ((\my_gettempnumber|Mux0~5_combout\) # ((\my_gettempnumber|Mux3~3_combout\ & \my_gettempnumber|Mux2~5_combout\)))) # (!\my_gettempnumber|Mux1~5_combout\ & 
-- ((\my_gettempnumber|Mux2~5_combout\) # ((!\my_gettempnumber|Mux0~5_combout\ & \my_gettempnumber|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mux0~5_combout\,
	datab => \my_gettempnumber|Mux1~5_combout\,
	datac => \my_gettempnumber|Mux3~3_combout\,
	datad => \my_gettempnumber|Mux2~5_combout\,
	combout => \my_numbertranslator|WideOr1~0_combout\);

-- Location: LCCOMB_X12_Y17_N16
\my_numbertranslator|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_numbertranslator|WideOr0~0_combout\ = (\my_gettempnumber|Mux1~5_combout\ & (!\my_gettempnumber|Mux0~5_combout\ & ((!\my_gettempnumber|Mux2~5_combout\) # (!\my_gettempnumber|Mux3~3_combout\)))) # (!\my_gettempnumber|Mux1~5_combout\ & 
-- (\my_gettempnumber|Mux0~5_combout\ $ (((\my_gettempnumber|Mux2~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mux0~5_combout\,
	datab => \my_gettempnumber|Mux1~5_combout\,
	datac => \my_gettempnumber|Mux3~3_combout\,
	datad => \my_gettempnumber|Mux2~5_combout\,
	combout => \my_numbertranslator|WideOr0~0_combout\);

-- Location: LCCOMB_X12_Y17_N26
\my_segtranslator|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_segtranslator|Decoder0~0_combout\ = (\my_counter|wordselector\(0) & !\my_counter|wordselector\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_counter|wordselector\(0),
	datad => \my_counter|wordselector\(1),
	combout => \my_segtranslator|Decoder0~0_combout\);

-- Location: LCCOMB_X19_Y17_N12
\my_segtranslator|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_segtranslator|Decoder0~1_combout\ = (!\my_counter|wordselector\(0) & \my_counter|wordselector\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_counter|wordselector\(0),
	datad => \my_counter|wordselector\(1),
	combout => \my_segtranslator|Decoder0~1_combout\);

ww_error <= \error~output_o\;

ww_success <= \success~output_o\;

ww_wordout(0) <= \wordout[0]~output_o\;

ww_wordout(1) <= \wordout[1]~output_o\;

ww_wordout(2) <= \wordout[2]~output_o\;

ww_wordout(3) <= \wordout[3]~output_o\;

ww_wordout(4) <= \wordout[4]~output_o\;

ww_wordout(5) <= \wordout[5]~output_o\;

ww_wordout(6) <= \wordout[6]~output_o\;

ww_segout(0) <= \segout[0]~output_o\;

ww_segout(1) <= \segout[1]~output_o\;

ww_segout(2) <= \segout[2]~output_o\;

ww_segout(3) <= \segout[3]~output_o\;

ww_segout(4) <= \segout[4]~output_o\;

ww_segout(5) <= \segout[5]~output_o\;
END structure;


