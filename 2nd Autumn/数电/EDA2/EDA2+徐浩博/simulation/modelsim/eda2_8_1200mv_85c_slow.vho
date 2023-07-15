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

-- DATE "12/13/2021 16:59:25"

-- 
-- Device: Altera EP3C16Q240C8 Package PQFP240
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
	in1 : IN std_logic;
	in2 : IN std_logic;
	in3 : IN std_logic;
	OUT_15c : IN std_logic;
	OUT_25c : IN std_logic;
	error : OUT std_logic;
	success : OUT std_logic;
	wordout : OUT std_logic_vector(6 DOWNTO 0);
	segout : OUT std_logic_vector(5 DOWNTO 0);
	sum : OUT std_logic_vector(9 DOWNTO 0)
	);
END eda2;

-- Design Ports Information
-- error	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- success	=>  Location: PIN_171,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wordout[0]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wordout[1]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wordout[2]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wordout[3]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wordout[4]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wordout[5]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wordout[6]	=>  Location: PIN_63,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[0]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[1]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[2]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[3]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[4]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[5]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[0]	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[1]	=>  Location: PIN_19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[2]	=>  Location: PIN_221,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[3]	=>  Location: PIN_218,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[4]	=>  Location: PIN_220,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[5]	=>  Location: PIN_222,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[6]	=>  Location: PIN_217,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[7]	=>  Location: PIN_216,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[8]	=>  Location: PIN_219,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[9]	=>  Location: PIN_214,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_176,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_152,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_25c	=>  Location: PIN_161,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_15c	=>  Location: PIN_160,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_in1 : std_logic;
SIGNAL ww_in2 : std_logic;
SIGNAL ww_in3 : std_logic;
SIGNAL ww_OUT_15c : std_logic;
SIGNAL ww_OUT_25c : std_logic;
SIGNAL ww_error : std_logic;
SIGNAL ww_success : std_logic;
SIGNAL ww_wordout : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segout : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_sum : std_logic_vector(9 DOWNTO 0);
SIGNAL \my_calculator|Mux2~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \my_FSM|Mux2~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \my_clock|count[15]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_calculator|Add4~0_combout\ : std_logic;
SIGNAL \my_calculator|Add4~10_combout\ : std_logic;
SIGNAL \my_calculator|Add4~12_combout\ : std_logic;
SIGNAL \my_calculator|Add3~0_combout\ : std_logic;
SIGNAL \my_calculator|Add3~4_combout\ : std_logic;
SIGNAL \my_calculator|Add3~6_combout\ : std_logic;
SIGNAL \my_calculator|Add3~8_combout\ : std_logic;
SIGNAL \my_calculator|Add3~10_combout\ : std_logic;
SIGNAL \my_calculator|Add3~12_combout\ : std_logic;
SIGNAL \my_calculator|Add3~17\ : std_logic;
SIGNAL \my_calculator|Add3~18_combout\ : std_logic;
SIGNAL \my_calculator|Add0~0_combout\ : std_logic;
SIGNAL \my_calculator|Add0~2_combout\ : std_logic;
SIGNAL \my_calculator|Add0~6_combout\ : std_logic;
SIGNAL \my_calculator|Add0~8_combout\ : std_logic;
SIGNAL \my_calculator|Add0~10_combout\ : std_logic;
SIGNAL \my_calculator|Add0~12_combout\ : std_logic;
SIGNAL \my_calculator|Add2~0_combout\ : std_logic;
SIGNAL \my_calculator|Add2~8_combout\ : std_logic;
SIGNAL \my_calculator|Add2~12_combout\ : std_logic;
SIGNAL \my_calculator|Add1~2_combout\ : std_logic;
SIGNAL \my_calculator|Add1~8_combout\ : std_logic;
SIGNAL \my_calculator|Add1~12_combout\ : std_logic;
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
SIGNAL \in_50c|Add0~0_combout\ : std_logic;
SIGNAL \in_50c|Add0~10_combout\ : std_logic;
SIGNAL \in_50c|Add0~16_combout\ : std_logic;
SIGNAL \in_50c|Add0~30_combout\ : std_logic;
SIGNAL \in_50c|Add0~34_combout\ : std_logic;
SIGNAL \in_10c|Add0~0_combout\ : std_logic;
SIGNAL \in_10c|Add0~1\ : std_logic;
SIGNAL \in_10c|Add0~2_combout\ : std_logic;
SIGNAL \in_10c|Add0~3\ : std_logic;
SIGNAL \in_10c|Add0~4_combout\ : std_logic;
SIGNAL \in_10c|Add0~5\ : std_logic;
SIGNAL \in_10c|Add0~6_combout\ : std_logic;
SIGNAL \in_10c|Add0~7\ : std_logic;
SIGNAL \in_10c|Add0~8_combout\ : std_logic;
SIGNAL \in_10c|Add0~9\ : std_logic;
SIGNAL \in_10c|Add0~10_combout\ : std_logic;
SIGNAL \in_10c|Add0~11\ : std_logic;
SIGNAL \in_10c|Add0~12_combout\ : std_logic;
SIGNAL \in_10c|Add0~13\ : std_logic;
SIGNAL \in_10c|Add0~14_combout\ : std_logic;
SIGNAL \in_10c|Add0~15\ : std_logic;
SIGNAL \in_10c|Add0~16_combout\ : std_logic;
SIGNAL \in_10c|Add0~17\ : std_logic;
SIGNAL \in_10c|Add0~18_combout\ : std_logic;
SIGNAL \in_10c|Add0~19\ : std_logic;
SIGNAL \in_10c|Add0~20_combout\ : std_logic;
SIGNAL \in_10c|Add0~21\ : std_logic;
SIGNAL \in_10c|Add0~22_combout\ : std_logic;
SIGNAL \in_10c|Add0~23\ : std_logic;
SIGNAL \in_10c|Add0~24_combout\ : std_logic;
SIGNAL \in_10c|Add0~25\ : std_logic;
SIGNAL \in_10c|Add0~26_combout\ : std_logic;
SIGNAL \in_10c|Add0~27\ : std_logic;
SIGNAL \in_10c|Add0~28_combout\ : std_logic;
SIGNAL \in_10c|Add0~29\ : std_logic;
SIGNAL \in_10c|Add0~30_combout\ : std_logic;
SIGNAL \in_10c|Add0~31\ : std_logic;
SIGNAL \in_10c|Add0~32_combout\ : std_logic;
SIGNAL \in_10c|Add0~33\ : std_logic;
SIGNAL \in_10c|Add0~34_combout\ : std_logic;
SIGNAL \in_10c|Add0~35\ : std_logic;
SIGNAL \in_10c|Add0~36_combout\ : std_logic;
SIGNAL \in_10c|Add0~37\ : std_logic;
SIGNAL \in_10c|Add0~38_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[18]~57_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[33]~36_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~42_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[38]~44_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[33]~76_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[35]~48_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[43]~49_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~50_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~52_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[43]~88_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[42]~89_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[41]~91_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[40]~93_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[54]~55_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[48]~73_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[48]~74_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~75_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[70]~76_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[69]~77_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[68]~78_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[56]~82_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[56]~83_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[65]~84_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux3~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux3~5_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux2~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[18]~57_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~59_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[16]~60_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~69_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~73_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~74_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[33]~76_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~77_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~78_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[30]~80_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[38]~82_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~83_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[36]~85_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[40]~89_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[43]~90_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~92_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux1~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux1~1_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux1~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux0~1_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux0~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux0~3_combout\ : std_logic;
SIGNAL \my_calculator|Mux7~0_combout\ : std_logic;
SIGNAL \my_calculator|Mux8~0_combout\ : std_logic;
SIGNAL \my_calculator|Mux8~1_combout\ : std_logic;
SIGNAL \my_calculator|Mux8~2_combout\ : std_logic;
SIGNAL \my_calculator|Mux9~0_combout\ : std_logic;
SIGNAL \my_calculator|Mux13~0_combout\ : std_logic;
SIGNAL \my_calculator|Mux13~1_combout\ : std_logic;
SIGNAL \in_10c|out~q\ : std_logic;
SIGNAL \in_50c|Equal0~5_combout\ : std_logic;
SIGNAL \in_10c|last~q\ : std_logic;
SIGNAL \in_10c|Equal0~0_combout\ : std_logic;
SIGNAL \in_10c|Equal0~1_combout\ : std_logic;
SIGNAL \in_10c|Equal0~2_combout\ : std_logic;
SIGNAL \in_10c|Equal0~3_combout\ : std_logic;
SIGNAL \in_10c|Equal0~4_combout\ : std_logic;
SIGNAL \in_10c|Equal0~5_combout\ : std_logic;
SIGNAL \in_10c|Equal0~6_combout\ : std_logic;
SIGNAL \in_10c|out~0_combout\ : std_logic;
SIGNAL \in_10c|out~1_combout\ : std_logic;
SIGNAL \in_50c|count[8]~30_combout\ : std_logic;
SIGNAL \in_10c|always0~0_combout\ : std_logic;
SIGNAL \in_10c|count[18]~28_combout\ : std_logic;
SIGNAL \in_10c|count[19]~29_combout\ : std_logic;
SIGNAL \in_10c|count[8]~30_combout\ : std_logic;
SIGNAL \in_10c|count[10]~31_combout\ : std_logic;
SIGNAL \in_10c|count[12]~32_combout\ : std_logic;
SIGNAL \in_10c|count[13]~33_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[28]~94_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[38]~96_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[69]~86_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[68]~87_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[28]~94_combout\ : std_logic;
SIGNAL \in_50c|count[17]~35_combout\ : std_logic;
SIGNAL \in_50c|count[15]~47_combout\ : std_logic;
SIGNAL \in_10c|count[16]~34_combout\ : std_logic;
SIGNAL \in_10c|count[17]~35_combout\ : std_logic;
SIGNAL \in_10c|count[0]~36_combout\ : std_logic;
SIGNAL \in_10c|count[1]~37_combout\ : std_logic;
SIGNAL \in_10c|count[2]~38_combout\ : std_logic;
SIGNAL \in_10c|count[3]~39_combout\ : std_logic;
SIGNAL \in_10c|count[4]~40_combout\ : std_logic;
SIGNAL \in_10c|count[5]~41_combout\ : std_logic;
SIGNAL \in_10c|count[6]~42_combout\ : std_logic;
SIGNAL \in_10c|count[7]~43_combout\ : std_logic;
SIGNAL \in_10c|count[9]~44_combout\ : std_logic;
SIGNAL \in_10c|count[11]~45_combout\ : std_logic;
SIGNAL \in_10c|count[14]~46_combout\ : std_logic;
SIGNAL \in_10c|count[15]~47_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[23]~98_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~57_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~59_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[62]~88_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[67]~92_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[66]~93_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[23]~98_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~99_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~100_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~103_combout\ : std_logic;
SIGNAL \my_clock|count[0]~45_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \in2~input_o\ : std_logic;
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
SIGNAL \sum[0]~output_o\ : std_logic;
SIGNAL \sum[1]~output_o\ : std_logic;
SIGNAL \sum[2]~output_o\ : std_logic;
SIGNAL \sum[3]~output_o\ : std_logic;
SIGNAL \sum[4]~output_o\ : std_logic;
SIGNAL \sum[5]~output_o\ : std_logic;
SIGNAL \sum[6]~output_o\ : std_logic;
SIGNAL \sum[7]~output_o\ : std_logic;
SIGNAL \sum[8]~output_o\ : std_logic;
SIGNAL \sum[9]~output_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \in3~input_o\ : std_logic;
SIGNAL \in_50c|last~q\ : std_logic;
SIGNAL \in_50c|always0~0_combout\ : std_logic;
SIGNAL \in_50c|count[5]~41_combout\ : std_logic;
SIGNAL \in_50c|count[0]~36_combout\ : std_logic;
SIGNAL \in_50c|Add0~1\ : std_logic;
SIGNAL \in_50c|Add0~3\ : std_logic;
SIGNAL \in_50c|Add0~4_combout\ : std_logic;
SIGNAL \in_50c|count[2]~38_combout\ : std_logic;
SIGNAL \in_50c|Add0~5\ : std_logic;
SIGNAL \in_50c|Add0~7\ : std_logic;
SIGNAL \in_50c|Add0~8_combout\ : std_logic;
SIGNAL \in_50c|count[4]~40_combout\ : std_logic;
SIGNAL \in_50c|Add0~9\ : std_logic;
SIGNAL \in_50c|Add0~11\ : std_logic;
SIGNAL \in_50c|Add0~13\ : std_logic;
SIGNAL \in_50c|Add0~14_combout\ : std_logic;
SIGNAL \in_50c|count[7]~43_combout\ : std_logic;
SIGNAL \in_50c|Add0~15\ : std_logic;
SIGNAL \in_50c|Add0~17\ : std_logic;
SIGNAL \in_50c|Add0~18_combout\ : std_logic;
SIGNAL \in_50c|count[9]~44_combout\ : std_logic;
SIGNAL \in_50c|Add0~19\ : std_logic;
SIGNAL \in_50c|Add0~20_combout\ : std_logic;
SIGNAL \in_50c|count[10]~31_combout\ : std_logic;
SIGNAL \in_50c|Add0~21\ : std_logic;
SIGNAL \in_50c|Add0~22_combout\ : std_logic;
SIGNAL \in_50c|count[11]~45_combout\ : std_logic;
SIGNAL \in_50c|Equal0~4_combout\ : std_logic;
SIGNAL \in_50c|Add0~23\ : std_logic;
SIGNAL \in_50c|Add0~24_combout\ : std_logic;
SIGNAL \in_50c|count[12]~32_combout\ : std_logic;
SIGNAL \in_50c|Add0~25\ : std_logic;
SIGNAL \in_50c|Add0~26_combout\ : std_logic;
SIGNAL \in_50c|count[13]~33_combout\ : std_logic;
SIGNAL \in_50c|Add0~27\ : std_logic;
SIGNAL \in_50c|Add0~28_combout\ : std_logic;
SIGNAL \in_50c|count[14]~46_combout\ : std_logic;
SIGNAL \in_50c|Add0~29\ : std_logic;
SIGNAL \in_50c|Add0~31\ : std_logic;
SIGNAL \in_50c|Add0~32_combout\ : std_logic;
SIGNAL \in_50c|count[16]~34_combout\ : std_logic;
SIGNAL \in_50c|Add0~33\ : std_logic;
SIGNAL \in_50c|Add0~35\ : std_logic;
SIGNAL \in_50c|Add0~37\ : std_logic;
SIGNAL \in_50c|Add0~38_combout\ : std_logic;
SIGNAL \in_50c|count[19]~29_combout\ : std_logic;
SIGNAL \in_50c|Add0~36_combout\ : std_logic;
SIGNAL \in_50c|count[18]~28_combout\ : std_logic;
SIGNAL \in_50c|Equal0~0_combout\ : std_logic;
SIGNAL \in_50c|Add0~12_combout\ : std_logic;
SIGNAL \in_50c|count[6]~42_combout\ : std_logic;
SIGNAL \in_50c|Add0~6_combout\ : std_logic;
SIGNAL \in_50c|count[3]~39_combout\ : std_logic;
SIGNAL \in_50c|Add0~2_combout\ : std_logic;
SIGNAL \in_50c|count[1]~37_combout\ : std_logic;
SIGNAL \in_50c|Equal0~1_combout\ : std_logic;
SIGNAL \in_50c|Equal0~2_combout\ : std_logic;
SIGNAL \in_50c|Equal0~3_combout\ : std_logic;
SIGNAL \in_50c|Equal0~6_combout\ : std_logic;
SIGNAL \in_50c|out~0_combout\ : std_logic;
SIGNAL \in_50c|out~1_combout\ : std_logic;
SIGNAL \in_50c|out~q\ : std_logic;
SIGNAL \my_FSM|Mux1~0_combout\ : std_logic;
SIGNAL \my_FSM|Mux1~1_combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \my_FSM|Mux3~0_combout\ : std_logic;
SIGNAL \OUT_25c~input_o\ : std_logic;
SIGNAL \OUT_15c~input_o\ : std_logic;
SIGNAL \my_FSM|Mux3~1_combout\ : std_logic;
SIGNAL \my_FSM|Mux3~2_combout\ : std_logic;
SIGNAL \my_FSM|Mux2~0_combout\ : std_logic;
SIGNAL \my_FSM|Mux2~1_combout\ : std_logic;
SIGNAL \my_FSM|Mux2~1clkctrl_outclk\ : std_logic;
SIGNAL \in1~input_o\ : std_logic;
SIGNAL \my_FSM|Mux0~0_combout\ : std_logic;
SIGNAL \my_FSM|Mux0~1_combout\ : std_logic;
SIGNAL \my_FSM|Mux0~2_combout\ : std_logic;
SIGNAL \my_calculator|Mux1~2_combout\ : std_logic;
SIGNAL \my_calculator|Add4~1\ : std_logic;
SIGNAL \my_calculator|Add4~3\ : std_logic;
SIGNAL \my_calculator|Add4~5\ : std_logic;
SIGNAL \my_calculator|Add4~7\ : std_logic;
SIGNAL \my_calculator|Add4~8_combout\ : std_logic;
SIGNAL \my_calculator|Mux4~0_combout\ : std_logic;
SIGNAL \my_calculator|Add4~6_combout\ : std_logic;
SIGNAL \my_calculator|Add4~4_combout\ : std_logic;
SIGNAL \my_calculator|Add3~1\ : std_logic;
SIGNAL \my_calculator|Add3~2_combout\ : std_logic;
SIGNAL \my_calculator|Mux4~1_combout\ : std_logic;
SIGNAL \my_calculator|Add1~0_combout\ : std_logic;
SIGNAL \my_calculator|Mux12~0_combout\ : std_logic;
SIGNAL \my_calculator|Mux12~1_combout\ : std_logic;
SIGNAL \my_calculator|Mux12~2_combout\ : std_logic;
SIGNAL \my_calculator|Add4~2_combout\ : std_logic;
SIGNAL \my_calculator|Mux12~3_combout\ : std_logic;
SIGNAL \my_calculator|Add2~1\ : std_logic;
SIGNAL \my_calculator|Add2~2_combout\ : std_logic;
SIGNAL \my_calculator|Add0~1\ : std_logic;
SIGNAL \my_calculator|Add0~3\ : std_logic;
SIGNAL \my_calculator|Add0~4_combout\ : std_logic;
SIGNAL \my_calculator|Mux11~0_combout\ : std_logic;
SIGNAL \my_calculator|Mux11~1_combout\ : std_logic;
SIGNAL \my_calculator|Mux11~2_combout\ : std_logic;
SIGNAL \my_calculator|Add2~3\ : std_logic;
SIGNAL \my_calculator|Add2~4_combout\ : std_logic;
SIGNAL \my_calculator|Add1~1\ : std_logic;
SIGNAL \my_calculator|Add1~3\ : std_logic;
SIGNAL \my_calculator|Add1~4_combout\ : std_logic;
SIGNAL \my_calculator|Mux10~0_combout\ : std_logic;
SIGNAL \my_calculator|Mux10~1_combout\ : std_logic;
SIGNAL \my_calculator|Mux10~2_combout\ : std_logic;
SIGNAL \my_calculator|Mux10~3_combout\ : std_logic;
SIGNAL \my_calculator|Add1~5\ : std_logic;
SIGNAL \my_calculator|Add1~6_combout\ : std_logic;
SIGNAL \my_calculator|Add2~5\ : std_logic;
SIGNAL \my_calculator|Add2~6_combout\ : std_logic;
SIGNAL \my_calculator|Mux9~1_combout\ : std_logic;
SIGNAL \my_calculator|Mux9~2_combout\ : std_logic;
SIGNAL \my_calculator|LessThan1~0_combout\ : std_logic;
SIGNAL \my_calculator|LessThan1~1_combout\ : std_logic;
SIGNAL \my_calculator|Add2~7\ : std_logic;
SIGNAL \my_calculator|Add2~9\ : std_logic;
SIGNAL \my_calculator|Add2~10_combout\ : std_logic;
SIGNAL \my_calculator|Add1~7\ : std_logic;
SIGNAL \my_calculator|Add1~9\ : std_logic;
SIGNAL \my_calculator|Add1~10_combout\ : std_logic;
SIGNAL \my_calculator|Mux7~1_combout\ : std_logic;
SIGNAL \my_calculator|Mux7~2_combout\ : std_logic;
SIGNAL \my_calculator|Mux14~0_combout\ : std_logic;
SIGNAL \my_calculator|LessThan0~0_combout\ : std_logic;
SIGNAL \my_calculator|LessThan0~1_combout\ : std_logic;
SIGNAL \my_calculator|Mux3~0_combout\ : std_logic;
SIGNAL \my_calculator|Mux3~1_combout\ : std_logic;
SIGNAL \my_calculator|Mux0~0_combout\ : std_logic;
SIGNAL \my_calculator|Add4~9\ : std_logic;
SIGNAL \my_calculator|Add4~11\ : std_logic;
SIGNAL \my_calculator|Add4~13\ : std_logic;
SIGNAL \my_calculator|Add4~14_combout\ : std_logic;
SIGNAL \my_calculator|Add0~5\ : std_logic;
SIGNAL \my_calculator|Add0~7\ : std_logic;
SIGNAL \my_calculator|Add0~9\ : std_logic;
SIGNAL \my_calculator|Add0~11\ : std_logic;
SIGNAL \my_calculator|Add0~13\ : std_logic;
SIGNAL \my_calculator|Add0~14_combout\ : std_logic;
SIGNAL \my_calculator|Add3~3\ : std_logic;
SIGNAL \my_calculator|Add3~5\ : std_logic;
SIGNAL \my_calculator|Add3~7\ : std_logic;
SIGNAL \my_calculator|Add3~9\ : std_logic;
SIGNAL \my_calculator|Add3~11\ : std_logic;
SIGNAL \my_calculator|Add3~13\ : std_logic;
SIGNAL \my_calculator|Add3~14_combout\ : std_logic;
SIGNAL \my_calculator|Mux6~0_combout\ : std_logic;
SIGNAL \my_calculator|Mux6~1_combout\ : std_logic;
SIGNAL \my_calculator|Mux6~2_combout\ : std_logic;
SIGNAL \my_calculator|Add4~15\ : std_logic;
SIGNAL \my_calculator|Add4~16_combout\ : std_logic;
SIGNAL \my_calculator|Add1~11\ : std_logic;
SIGNAL \my_calculator|Add1~13\ : std_logic;
SIGNAL \my_calculator|Add1~14_combout\ : std_logic;
SIGNAL \my_calculator|Add0~15\ : std_logic;
SIGNAL \my_calculator|Add0~16_combout\ : std_logic;
SIGNAL \my_calculator|Add3~15\ : std_logic;
SIGNAL \my_calculator|Add3~16_combout\ : std_logic;
SIGNAL \my_calculator|Mux5~0_combout\ : std_logic;
SIGNAL \my_calculator|Add2~11\ : std_logic;
SIGNAL \my_calculator|Add2~13\ : std_logic;
SIGNAL \my_calculator|Add2~14_combout\ : std_logic;
SIGNAL \my_calculator|Mux5~1_combout\ : std_logic;
SIGNAL \my_calculator|Mux5~2_combout\ : std_logic;
SIGNAL \my_calculator|Add4~17\ : std_logic;
SIGNAL \my_calculator|Add4~18_combout\ : std_logic;
SIGNAL \my_calculator|Add0~17\ : std_logic;
SIGNAL \my_calculator|Add0~18_combout\ : std_logic;
SIGNAL \my_calculator|Add2~15\ : std_logic;
SIGNAL \my_calculator|Add2~16_combout\ : std_logic;
SIGNAL \my_calculator|Mux4~2_combout\ : std_logic;
SIGNAL \my_calculator|Mux4~3_combout\ : std_logic;
SIGNAL \my_calculator|Mux4~4_combout\ : std_logic;
SIGNAL \my_calculator|Mux14~1_combout\ : std_logic;
SIGNAL \my_calculator|Mux14~2_combout\ : std_logic;
SIGNAL \my_calculator|Mux14~3_combout\ : std_logic;
SIGNAL \my_calculator|Mux2~0_combout\ : std_logic;
SIGNAL \my_calculator|Mux2~0clkctrl_outclk\ : std_logic;
SIGNAL \my_calculator|error~combout\ : std_logic;
SIGNAL \my_calculator|Mux3~2_combout\ : std_logic;
SIGNAL \my_calculator|success~combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\ : std_logic;
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
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[31]~41_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~43_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[33]~37_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[32]~38_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[38]~56_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~45_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~46_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[33]~95_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\ : std_logic;
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
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[43]~54_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~55_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~51_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[38]~82_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[0]~10_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_counter|wordselector[0]~1_combout\ : std_logic;
SIGNAL \my_segtranslator|Decoder0~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux0~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux3~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux0~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux1~3_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux1~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[43]~97_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[42]~103_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[41]~90_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux3~7_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux3~6_combout\ : std_logic;
SIGNAL \my_counter|wordselector[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[18]~56_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~58_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[16]~61_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~62_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[21]~67_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~68_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[28]~70_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~71_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~72_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~75_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~101_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[33]~95_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~79_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[30]~81_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[38]~96_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~102_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[36]~84_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[35]~86_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[43]~97_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~91_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~93_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[40]~88_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux2~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[62]~66_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\ : std_logic;
SIGNAL \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ : std_logic;
SIGNAL \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ : std_logic;
SIGNAL \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\ : std_logic;
SIGNAL \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\ : std_logic;
SIGNAL \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux2~1_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux2~3_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \my_gettempnumber|Mux2~4_combout\ : std_logic;
SIGNAL \my_numbertranslator|WideOr6~0_combout\ : std_logic;
SIGNAL \my_numbertranslator|WideOr5~0_combout\ : std_logic;
SIGNAL \my_numbertranslator|WideOr4~0_combout\ : std_logic;
SIGNAL \my_numbertranslator|WideOr3~0_combout\ : std_logic;
SIGNAL \my_numbertranslator|WideOr2~0_combout\ : std_logic;
SIGNAL \my_numbertranslator|WideOr1~0_combout\ : std_logic;
SIGNAL \my_numbertranslator|WideOr0~0_combout\ : std_logic;
SIGNAL \my_segtranslator|Decoder0~1_combout\ : std_logic;
SIGNAL \my_segtranslator|Decoder0~2_combout\ : std_logic;
SIGNAL \my_calculator|sum\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \my_FSM|next\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \my_clock|count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \in_10c|count\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \in_50c|count\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \my_counter|wordselector\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \my_FSM|state\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \my_segtranslator|ALT_INV_Decoder0~2_combout\ : std_logic;
SIGNAL \my_numbertranslator|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \my_segtranslator|ALT_INV_Decoder0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_in1 <= in1;
ww_in2 <= in2;
ww_in3 <= in3;
ww_OUT_15c <= OUT_15c;
ww_OUT_25c <= OUT_25c;
error <= ww_error;
success <= ww_success;
wordout <= ww_wordout;
segout <= ww_segout;
sum <= ww_sum;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\my_calculator|Mux2~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \my_calculator|Mux2~0_combout\);

\my_FSM|Mux2~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \my_FSM|Mux2~1_combout\);

\my_clock|count[15]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \my_clock|count\(15));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\my_segtranslator|ALT_INV_Decoder0~2_combout\ <= NOT \my_segtranslator|Decoder0~2_combout\;
\my_numbertranslator|ALT_INV_WideOr0~0_combout\ <= NOT \my_numbertranslator|WideOr0~0_combout\;
\my_segtranslator|ALT_INV_Decoder0~0_combout\ <= NOT \my_segtranslator|Decoder0~0_combout\;

-- Location: LCCOMB_X15_Y25_N10
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

-- Location: LCCOMB_X15_Y25_N12
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

-- Location: LCCOMB_X15_Y25_N14
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\my_calculator|sum\(9) & (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\my_calculator|sum\(9) & 
-- (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\my_calculator|sum\(9) & !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(9),
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X12_Y25_N0
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\) # 
-- (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\)))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X11_Y26_N16
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- (((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\)))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ 
-- & ((((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\)))))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\) 
-- # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X10_Y25_N24
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

-- Location: LCCOMB_X11_Y16_N24
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

-- Location: LCCOMB_X11_Y16_N12
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

-- Location: LCCOMB_X11_Y16_N14
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & 
-- (((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~57_combout\) # (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~45_combout\)))) # (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & 
-- ((((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~57_combout\) # (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~45_combout\)))))
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~57_combout\) 
-- # (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~57_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~45_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X11_Y23_N16
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

-- Location: LCCOMB_X11_Y23_N18
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

-- Location: LCCOMB_X11_Y23_N20
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

-- Location: LCCOMB_X15_Y20_N10
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

-- Location: LCCOMB_X15_Y20_N14
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\my_calculator|sum\(8) & (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\my_calculator|sum\(8) & 
-- ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\my_calculator|sum\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(8),
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X15_Y20_N16
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\my_calculator|sum\(9) & (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\my_calculator|sum\(9) & 
-- (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\my_calculator|sum\(9) & !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(9),
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X12_Y20_N6
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

-- Location: LCCOMB_X12_Y21_N0
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[48]~74_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[48]~73_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[48]~74_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[48]~73_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X14_Y20_N14
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ = (((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~75_combout\) # 
-- (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\)))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ = CARRY((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~75_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~75_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\);

-- Location: LCCOMB_X14_Y20_N16
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & 
-- (((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\)))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & 
-- (!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\ & (!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\)))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ = CARRY((!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\ & (!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\ & 
-- !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\);

-- Location: LCCOMB_X14_Y20_N18
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & 
-- ((((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\))))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ 
-- & ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\) # ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\) # (GND))))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ = CARRY((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\) # ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\) # 
-- (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\);

-- Location: LCCOMB_X14_Y20_N20
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\ & 
-- (((!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\ & ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\ 
-- & (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\ & ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\) 
-- # (GND)))))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ = CARRY(((!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\ & !\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\)) 
-- # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\);

-- Location: LCCOMB_X14_Y20_N22
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & 
-- (((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\)))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & 
-- ((((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\)))))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ = CARRY((!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\) 
-- # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\);

-- Location: LCCOMB_X12_Y21_N10
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[56]~82_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[56]~83_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[56]~82_combout\,
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[56]~83_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\);

-- Location: LCCOMB_X14_Y21_N6
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\ = CARRY((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\) # 
-- (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[65]~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[65]~84_combout\,
	datad => VCC,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\);

-- Location: LCCOMB_X14_Y21_N8
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\ = CARRY((!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[66]~93_combout\ & 
-- (!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\ & !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[66]~93_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\);

-- Location: LCCOMB_X14_Y21_N10
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

-- Location: LCCOMB_X14_Y21_N12
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

-- Location: LCCOMB_X14_Y21_N14
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\ = CARRY((!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\ & 
-- ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[69]~77_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[69]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[69]~77_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[69]~86_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\);

-- Location: LCCOMB_X14_Y21_N16
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\ = CARRY((!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\ & 
-- (!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[70]~76_combout\ & !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[70]~76_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\);

-- Location: LCCOMB_X14_Y21_N18
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

-- Location: LCCOMB_X9_Y10_N0
\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\ = !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\);

-- Location: LCCOMB_X12_Y21_N16
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

-- Location: LCCOMB_X12_Y21_N18
\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (!\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\)) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ & VCC))
-- \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ = CARRY((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- !\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\,
	combout => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\,
	cout => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\);

-- Location: LCCOMB_X12_Y21_N20
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

-- Location: LCCOMB_X15_Y19_N2
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\my_calculator|sum\(8) & (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\my_calculator|sum\(8) & 
-- (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\my_calculator|sum\(8) & !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(8),
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X15_Y19_N4
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

-- Location: LCCOMB_X14_Y19_N22
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~69_combout\) # 
-- (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~68_combout\)))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~69_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~69_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~68_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X10_Y22_N10
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

-- Location: LCCOMB_X11_Y22_N0
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

-- Location: LCCOMB_X11_Y22_N4
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~77_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~101_combout\)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ 
-- & ((((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~77_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~101_combout\)))))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~77_combout\) 
-- # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~77_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~101_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X11_Y19_N2
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

-- Location: LCCOMB_X11_Y19_N4
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

-- Location: LCCOMB_X12_Y19_N12
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

-- Location: LCCOMB_X12_Y19_N14
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & 
-- (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~92_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~93_combout\)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & 
-- (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~92_combout\ & (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~93_combout\)))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~92_combout\ & (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~93_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~92_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~93_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X12_Y19_N16
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

-- Location: LCCOMB_X17_Y21_N0
\my_calculator|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add4~0_combout\ = \my_calculator|sum\(0) $ (VCC)
-- \my_calculator|Add4~1\ = CARRY(\my_calculator|sum\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(0),
	datad => VCC,
	combout => \my_calculator|Add4~0_combout\,
	cout => \my_calculator|Add4~1\);

-- Location: LCCOMB_X17_Y21_N10
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

-- Location: LCCOMB_X17_Y21_N12
\my_calculator|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add4~12_combout\ = (\my_calculator|sum\(6) & ((GND) # (!\my_calculator|Add4~11\))) # (!\my_calculator|sum\(6) & (\my_calculator|Add4~11\ $ (GND)))
-- \my_calculator|Add4~13\ = CARRY((\my_calculator|sum\(6)) # (!\my_calculator|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(6),
	datad => VCC,
	cin => \my_calculator|Add4~11\,
	combout => \my_calculator|Add4~12_combout\,
	cout => \my_calculator|Add4~13\);

-- Location: LCCOMB_X16_Y22_N0
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

-- Location: LCCOMB_X16_Y22_N4
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

-- Location: LCCOMB_X16_Y22_N6
\my_calculator|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add3~6_combout\ = (\my_calculator|sum\(3) & (!\my_calculator|Add3~5\)) # (!\my_calculator|sum\(3) & ((\my_calculator|Add3~5\) # (GND)))
-- \my_calculator|Add3~7\ = CARRY((!\my_calculator|Add3~5\) # (!\my_calculator|sum\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(3),
	datad => VCC,
	cin => \my_calculator|Add3~5\,
	combout => \my_calculator|Add3~6_combout\,
	cout => \my_calculator|Add3~7\);

-- Location: LCCOMB_X16_Y22_N8
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

-- Location: LCCOMB_X16_Y22_N10
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

-- Location: LCCOMB_X16_Y22_N12
\my_calculator|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add3~12_combout\ = (\my_calculator|sum\(6) & ((GND) # (!\my_calculator|Add3~11\))) # (!\my_calculator|sum\(6) & (\my_calculator|Add3~11\ $ (GND)))
-- \my_calculator|Add3~13\ = CARRY((\my_calculator|sum\(6)) # (!\my_calculator|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(6),
	datad => VCC,
	cin => \my_calculator|Add3~11\,
	combout => \my_calculator|Add3~12_combout\,
	cout => \my_calculator|Add3~13\);

-- Location: LCCOMB_X16_Y22_N16
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

-- Location: LCCOMB_X16_Y22_N18
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

-- Location: LCCOMB_X15_Y22_N8
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

-- Location: LCCOMB_X15_Y22_N10
\my_calculator|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add0~2_combout\ = (\my_calculator|sum\(1) & (!\my_calculator|Add0~1\)) # (!\my_calculator|sum\(1) & ((\my_calculator|Add0~1\) # (GND)))
-- \my_calculator|Add0~3\ = CARRY((!\my_calculator|Add0~1\) # (!\my_calculator|sum\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(1),
	datad => VCC,
	cin => \my_calculator|Add0~1\,
	combout => \my_calculator|Add0~2_combout\,
	cout => \my_calculator|Add0~3\);

-- Location: LCCOMB_X15_Y22_N14
\my_calculator|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add0~6_combout\ = (\my_calculator|sum\(3) & (!\my_calculator|Add0~5\)) # (!\my_calculator|sum\(3) & ((\my_calculator|Add0~5\) # (GND)))
-- \my_calculator|Add0~7\ = CARRY((!\my_calculator|Add0~5\) # (!\my_calculator|sum\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(3),
	datad => VCC,
	cin => \my_calculator|Add0~5\,
	combout => \my_calculator|Add0~6_combout\,
	cout => \my_calculator|Add0~7\);

-- Location: LCCOMB_X15_Y22_N16
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

-- Location: LCCOMB_X15_Y22_N18
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

-- Location: LCCOMB_X15_Y22_N20
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

-- Location: LCCOMB_X16_Y20_N6
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

-- Location: LCCOMB_X16_Y20_N14
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

-- Location: LCCOMB_X16_Y20_N18
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

-- Location: LCCOMB_X16_Y21_N12
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

-- Location: LCCOMB_X16_Y21_N18
\my_calculator|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add1~8_combout\ = (\my_calculator|sum\(5) & (\my_calculator|Add1~7\ $ (GND))) # (!\my_calculator|sum\(5) & (!\my_calculator|Add1~7\ & VCC))
-- \my_calculator|Add1~9\ = CARRY((\my_calculator|sum\(5) & !\my_calculator|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(5),
	datad => VCC,
	cin => \my_calculator|Add1~7\,
	combout => \my_calculator|Add1~8_combout\,
	cout => \my_calculator|Add1~9\);

-- Location: LCCOMB_X16_Y21_N22
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

-- Location: LCCOMB_X16_Y21_N24
\my_calculator|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add1~14_combout\ = (\my_calculator|sum\(8) & (!\my_calculator|Add1~13\)) # (!\my_calculator|sum\(8) & ((\my_calculator|Add1~13\) # (GND)))
-- \my_calculator|Add1~15\ = CARRY((!\my_calculator|Add1~13\) # (!\my_calculator|sum\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(8),
	datad => VCC,
	cin => \my_calculator|Add1~13\,
	combout => \my_calculator|Add1~14_combout\,
	cout => \my_calculator|Add1~15\);

-- Location: LCCOMB_X16_Y21_N26
\my_calculator|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add1~16_combout\ = \my_calculator|sum\(9) $ (!\my_calculator|Add1~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(9),
	cin => \my_calculator|Add1~15\,
	combout => \my_calculator|Add1~16_combout\);

-- Location: FF_X20_Y1_N31
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

-- Location: FF_X20_Y1_N29
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

-- Location: FF_X20_Y1_N27
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

-- Location: FF_X20_Y1_N25
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

-- Location: FF_X20_Y1_N23
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

-- Location: FF_X20_Y1_N21
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

-- Location: FF_X20_Y1_N19
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

-- Location: FF_X20_Y1_N17
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

-- Location: FF_X20_Y1_N15
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

-- Location: FF_X20_Y1_N13
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

-- Location: FF_X20_Y1_N11
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

-- Location: FF_X20_Y1_N9
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

-- Location: FF_X20_Y1_N7
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

-- Location: FF_X20_Y1_N5
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

-- Location: FF_X20_Y1_N3
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

-- Location: LCCOMB_X20_Y1_N2
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

-- Location: LCCOMB_X20_Y1_N4
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

-- Location: LCCOMB_X20_Y1_N6
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

-- Location: LCCOMB_X20_Y1_N8
\my_clock|count[4]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_clock|count[4]~21_combout\ = (\my_clock|count\(4) & (!\my_clock|count[3]~20\)) # (!\my_clock|count\(4) & ((\my_clock|count[3]~20\) # (GND)))
-- \my_clock|count[4]~22\ = CARRY((!\my_clock|count[3]~20\) # (!\my_clock|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_clock|count\(4),
	datad => VCC,
	cin => \my_clock|count[3]~20\,
	combout => \my_clock|count[4]~21_combout\,
	cout => \my_clock|count[4]~22\);

-- Location: LCCOMB_X20_Y1_N10
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

-- Location: LCCOMB_X20_Y1_N12
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

-- Location: LCCOMB_X20_Y1_N14
\my_clock|count[7]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_clock|count[7]~27_combout\ = (\my_clock|count\(7) & (\my_clock|count[6]~26\ $ (GND))) # (!\my_clock|count\(7) & (!\my_clock|count[6]~26\ & VCC))
-- \my_clock|count[7]~28\ = CARRY((\my_clock|count\(7) & !\my_clock|count[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_clock|count\(7),
	datad => VCC,
	cin => \my_clock|count[6]~26\,
	combout => \my_clock|count[7]~27_combout\,
	cout => \my_clock|count[7]~28\);

-- Location: LCCOMB_X20_Y1_N16
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

-- Location: LCCOMB_X20_Y1_N18
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

-- Location: LCCOMB_X20_Y1_N20
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

-- Location: LCCOMB_X20_Y1_N22
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

-- Location: LCCOMB_X20_Y1_N24
\my_clock|count[12]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_clock|count[12]~37_combout\ = (\my_clock|count\(12) & (!\my_clock|count[11]~36\)) # (!\my_clock|count\(12) & ((\my_clock|count[11]~36\) # (GND)))
-- \my_clock|count[12]~38\ = CARRY((!\my_clock|count[11]~36\) # (!\my_clock|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_clock|count\(12),
	datad => VCC,
	cin => \my_clock|count[11]~36\,
	combout => \my_clock|count[12]~37_combout\,
	cout => \my_clock|count[12]~38\);

-- Location: LCCOMB_X20_Y1_N26
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

-- Location: LCCOMB_X20_Y1_N28
\my_clock|count[14]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_clock|count[14]~41_combout\ = (\my_clock|count\(14) & (!\my_clock|count[13]~40\)) # (!\my_clock|count\(14) & ((\my_clock|count[13]~40\) # (GND)))
-- \my_clock|count[14]~42\ = CARRY((!\my_clock|count[13]~40\) # (!\my_clock|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_clock|count\(14),
	datad => VCC,
	cin => \my_clock|count[13]~40\,
	combout => \my_clock|count[14]~41_combout\,
	cout => \my_clock|count[14]~42\);

-- Location: LCCOMB_X20_Y1_N30
\my_clock|count[15]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_clock|count[15]~43_combout\ = \my_clock|count[14]~42\ $ (!\my_clock|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \my_clock|count\(15),
	cin => \my_clock|count[14]~42\,
	combout => \my_clock|count[15]~43_combout\);

-- Location: LCCOMB_X10_Y20_N12
\in_50c|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Add0~0_combout\ = \in_50c|count\(0) $ (VCC)
-- \in_50c|Add0~1\ = CARRY(\in_50c|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_50c|count\(0),
	datad => VCC,
	combout => \in_50c|Add0~0_combout\,
	cout => \in_50c|Add0~1\);

-- Location: LCCOMB_X10_Y20_N22
\in_50c|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Add0~10_combout\ = (\in_50c|count\(5) & (!\in_50c|Add0~9\)) # (!\in_50c|count\(5) & ((\in_50c|Add0~9\) # (GND)))
-- \in_50c|Add0~11\ = CARRY((!\in_50c|Add0~9\) # (!\in_50c|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_50c|count\(5),
	datad => VCC,
	cin => \in_50c|Add0~9\,
	combout => \in_50c|Add0~10_combout\,
	cout => \in_50c|Add0~11\);

-- Location: LCCOMB_X10_Y20_N28
\in_50c|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Add0~16_combout\ = (\in_50c|count\(8) & (\in_50c|Add0~15\ $ (GND))) # (!\in_50c|count\(8) & (!\in_50c|Add0~15\ & VCC))
-- \in_50c|Add0~17\ = CARRY((\in_50c|count\(8) & !\in_50c|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_50c|count\(8),
	datad => VCC,
	cin => \in_50c|Add0~15\,
	combout => \in_50c|Add0~16_combout\,
	cout => \in_50c|Add0~17\);

-- Location: LCCOMB_X10_Y19_N10
\in_50c|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Add0~30_combout\ = (\in_50c|count\(15) & (!\in_50c|Add0~29\)) # (!\in_50c|count\(15) & ((\in_50c|Add0~29\) # (GND)))
-- \in_50c|Add0~31\ = CARRY((!\in_50c|Add0~29\) # (!\in_50c|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_50c|count\(15),
	datad => VCC,
	cin => \in_50c|Add0~29\,
	combout => \in_50c|Add0~30_combout\,
	cout => \in_50c|Add0~31\);

-- Location: LCCOMB_X10_Y19_N14
\in_50c|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Add0~34_combout\ = (\in_50c|count\(17) & (!\in_50c|Add0~33\)) # (!\in_50c|count\(17) & ((\in_50c|Add0~33\) # (GND)))
-- \in_50c|Add0~35\ = CARRY((!\in_50c|Add0~33\) # (!\in_50c|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_50c|count\(17),
	datad => VCC,
	cin => \in_50c|Add0~33\,
	combout => \in_50c|Add0~34_combout\,
	cout => \in_50c|Add0~35\);

-- Location: LCCOMB_X10_Y15_N12
\in_10c|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Add0~0_combout\ = \in_10c|count\(0) $ (VCC)
-- \in_10c|Add0~1\ = CARRY(\in_10c|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_10c|count\(0),
	datad => VCC,
	combout => \in_10c|Add0~0_combout\,
	cout => \in_10c|Add0~1\);

-- Location: LCCOMB_X10_Y15_N14
\in_10c|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Add0~2_combout\ = (\in_10c|count\(1) & (!\in_10c|Add0~1\)) # (!\in_10c|count\(1) & ((\in_10c|Add0~1\) # (GND)))
-- \in_10c|Add0~3\ = CARRY((!\in_10c|Add0~1\) # (!\in_10c|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_10c|count\(1),
	datad => VCC,
	cin => \in_10c|Add0~1\,
	combout => \in_10c|Add0~2_combout\,
	cout => \in_10c|Add0~3\);

-- Location: LCCOMB_X10_Y15_N16
\in_10c|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Add0~4_combout\ = (\in_10c|count\(2) & (\in_10c|Add0~3\ $ (GND))) # (!\in_10c|count\(2) & (!\in_10c|Add0~3\ & VCC))
-- \in_10c|Add0~5\ = CARRY((\in_10c|count\(2) & !\in_10c|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_10c|count\(2),
	datad => VCC,
	cin => \in_10c|Add0~3\,
	combout => \in_10c|Add0~4_combout\,
	cout => \in_10c|Add0~5\);

-- Location: LCCOMB_X10_Y15_N18
\in_10c|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Add0~6_combout\ = (\in_10c|count\(3) & (!\in_10c|Add0~5\)) # (!\in_10c|count\(3) & ((\in_10c|Add0~5\) # (GND)))
-- \in_10c|Add0~7\ = CARRY((!\in_10c|Add0~5\) # (!\in_10c|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|count\(3),
	datad => VCC,
	cin => \in_10c|Add0~5\,
	combout => \in_10c|Add0~6_combout\,
	cout => \in_10c|Add0~7\);

-- Location: LCCOMB_X10_Y15_N20
\in_10c|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Add0~8_combout\ = (\in_10c|count\(4) & (\in_10c|Add0~7\ $ (GND))) # (!\in_10c|count\(4) & (!\in_10c|Add0~7\ & VCC))
-- \in_10c|Add0~9\ = CARRY((\in_10c|count\(4) & !\in_10c|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_10c|count\(4),
	datad => VCC,
	cin => \in_10c|Add0~7\,
	combout => \in_10c|Add0~8_combout\,
	cout => \in_10c|Add0~9\);

-- Location: LCCOMB_X10_Y15_N22
\in_10c|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Add0~10_combout\ = (\in_10c|count\(5) & (!\in_10c|Add0~9\)) # (!\in_10c|count\(5) & ((\in_10c|Add0~9\) # (GND)))
-- \in_10c|Add0~11\ = CARRY((!\in_10c|Add0~9\) # (!\in_10c|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_10c|count\(5),
	datad => VCC,
	cin => \in_10c|Add0~9\,
	combout => \in_10c|Add0~10_combout\,
	cout => \in_10c|Add0~11\);

-- Location: LCCOMB_X10_Y15_N24
\in_10c|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Add0~12_combout\ = (\in_10c|count\(6) & (\in_10c|Add0~11\ $ (GND))) # (!\in_10c|count\(6) & (!\in_10c|Add0~11\ & VCC))
-- \in_10c|Add0~13\ = CARRY((\in_10c|count\(6) & !\in_10c|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|count\(6),
	datad => VCC,
	cin => \in_10c|Add0~11\,
	combout => \in_10c|Add0~12_combout\,
	cout => \in_10c|Add0~13\);

-- Location: LCCOMB_X10_Y15_N26
\in_10c|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Add0~14_combout\ = (\in_10c|count\(7) & (!\in_10c|Add0~13\)) # (!\in_10c|count\(7) & ((\in_10c|Add0~13\) # (GND)))
-- \in_10c|Add0~15\ = CARRY((!\in_10c|Add0~13\) # (!\in_10c|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_10c|count\(7),
	datad => VCC,
	cin => \in_10c|Add0~13\,
	combout => \in_10c|Add0~14_combout\,
	cout => \in_10c|Add0~15\);

-- Location: LCCOMB_X10_Y15_N28
\in_10c|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Add0~16_combout\ = (\in_10c|count\(8) & (\in_10c|Add0~15\ $ (GND))) # (!\in_10c|count\(8) & (!\in_10c|Add0~15\ & VCC))
-- \in_10c|Add0~17\ = CARRY((\in_10c|count\(8) & !\in_10c|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_10c|count\(8),
	datad => VCC,
	cin => \in_10c|Add0~15\,
	combout => \in_10c|Add0~16_combout\,
	cout => \in_10c|Add0~17\);

-- Location: LCCOMB_X10_Y15_N30
\in_10c|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Add0~18_combout\ = (\in_10c|count\(9) & (!\in_10c|Add0~17\)) # (!\in_10c|count\(9) & ((\in_10c|Add0~17\) # (GND)))
-- \in_10c|Add0~19\ = CARRY((!\in_10c|Add0~17\) # (!\in_10c|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|count\(9),
	datad => VCC,
	cin => \in_10c|Add0~17\,
	combout => \in_10c|Add0~18_combout\,
	cout => \in_10c|Add0~19\);

-- Location: LCCOMB_X10_Y14_N0
\in_10c|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Add0~20_combout\ = (\in_10c|count\(10) & (\in_10c|Add0~19\ $ (GND))) # (!\in_10c|count\(10) & (!\in_10c|Add0~19\ & VCC))
-- \in_10c|Add0~21\ = CARRY((\in_10c|count\(10) & !\in_10c|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_10c|count\(10),
	datad => VCC,
	cin => \in_10c|Add0~19\,
	combout => \in_10c|Add0~20_combout\,
	cout => \in_10c|Add0~21\);

-- Location: LCCOMB_X10_Y14_N2
\in_10c|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Add0~22_combout\ = (\in_10c|count\(11) & (!\in_10c|Add0~21\)) # (!\in_10c|count\(11) & ((\in_10c|Add0~21\) # (GND)))
-- \in_10c|Add0~23\ = CARRY((!\in_10c|Add0~21\) # (!\in_10c|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_10c|count\(11),
	datad => VCC,
	cin => \in_10c|Add0~21\,
	combout => \in_10c|Add0~22_combout\,
	cout => \in_10c|Add0~23\);

-- Location: LCCOMB_X10_Y14_N4
\in_10c|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Add0~24_combout\ = (\in_10c|count\(12) & (\in_10c|Add0~23\ $ (GND))) # (!\in_10c|count\(12) & (!\in_10c|Add0~23\ & VCC))
-- \in_10c|Add0~25\ = CARRY((\in_10c|count\(12) & !\in_10c|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_10c|count\(12),
	datad => VCC,
	cin => \in_10c|Add0~23\,
	combout => \in_10c|Add0~24_combout\,
	cout => \in_10c|Add0~25\);

-- Location: LCCOMB_X10_Y14_N6
\in_10c|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Add0~26_combout\ = (\in_10c|count\(13) & (!\in_10c|Add0~25\)) # (!\in_10c|count\(13) & ((\in_10c|Add0~25\) # (GND)))
-- \in_10c|Add0~27\ = CARRY((!\in_10c|Add0~25\) # (!\in_10c|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|count\(13),
	datad => VCC,
	cin => \in_10c|Add0~25\,
	combout => \in_10c|Add0~26_combout\,
	cout => \in_10c|Add0~27\);

-- Location: LCCOMB_X10_Y14_N8
\in_10c|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Add0~28_combout\ = (\in_10c|count\(14) & (\in_10c|Add0~27\ $ (GND))) # (!\in_10c|count\(14) & (!\in_10c|Add0~27\ & VCC))
-- \in_10c|Add0~29\ = CARRY((\in_10c|count\(14) & !\in_10c|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_10c|count\(14),
	datad => VCC,
	cin => \in_10c|Add0~27\,
	combout => \in_10c|Add0~28_combout\,
	cout => \in_10c|Add0~29\);

-- Location: LCCOMB_X10_Y14_N10
\in_10c|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Add0~30_combout\ = (\in_10c|count\(15) & (!\in_10c|Add0~29\)) # (!\in_10c|count\(15) & ((\in_10c|Add0~29\) # (GND)))
-- \in_10c|Add0~31\ = CARRY((!\in_10c|Add0~29\) # (!\in_10c|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|count\(15),
	datad => VCC,
	cin => \in_10c|Add0~29\,
	combout => \in_10c|Add0~30_combout\,
	cout => \in_10c|Add0~31\);

-- Location: LCCOMB_X10_Y14_N12
\in_10c|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Add0~32_combout\ = (\in_10c|count\(16) & (\in_10c|Add0~31\ $ (GND))) # (!\in_10c|count\(16) & (!\in_10c|Add0~31\ & VCC))
-- \in_10c|Add0~33\ = CARRY((\in_10c|count\(16) & !\in_10c|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|count\(16),
	datad => VCC,
	cin => \in_10c|Add0~31\,
	combout => \in_10c|Add0~32_combout\,
	cout => \in_10c|Add0~33\);

-- Location: LCCOMB_X10_Y14_N14
\in_10c|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Add0~34_combout\ = (\in_10c|count\(17) & (!\in_10c|Add0~33\)) # (!\in_10c|count\(17) & ((\in_10c|Add0~33\) # (GND)))
-- \in_10c|Add0~35\ = CARRY((!\in_10c|Add0~33\) # (!\in_10c|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_10c|count\(17),
	datad => VCC,
	cin => \in_10c|Add0~33\,
	combout => \in_10c|Add0~34_combout\,
	cout => \in_10c|Add0~35\);

-- Location: LCCOMB_X10_Y14_N16
\in_10c|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Add0~36_combout\ = (\in_10c|count\(18) & (\in_10c|Add0~35\ $ (GND))) # (!\in_10c|count\(18) & (!\in_10c|Add0~35\ & VCC))
-- \in_10c|Add0~37\ = CARRY((\in_10c|count\(18) & !\in_10c|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|count\(18),
	datad => VCC,
	cin => \in_10c|Add0~35\,
	combout => \in_10c|Add0~36_combout\,
	cout => \in_10c|Add0~37\);

-- Location: LCCOMB_X10_Y14_N18
\in_10c|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Add0~38_combout\ = \in_10c|Add0~37\ $ (\in_10c|count\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \in_10c|count\(19),
	cin => \in_10c|Add0~37\,
	combout => \in_10c|Add0~38_combout\);

-- Location: LCCOMB_X15_Y25_N2
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[18]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[18]~57_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[18]~57_combout\);

-- Location: LCCOMB_X15_Y25_N6
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[17]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\);

-- Location: LCCOMB_X15_Y25_N18
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\);

-- Location: LCCOMB_X12_Y25_N18
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ = (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \my_calculator|sum\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \my_calculator|sum\(6),
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\);

-- Location: LCCOMB_X12_Y25_N26
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \my_calculator|sum\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \my_calculator|sum\(6),
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\);

-- Location: LCCOMB_X12_Y25_N10
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\ = (\my_calculator|sum\(5) & \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(5),
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\);

-- Location: LCCOMB_X11_Y25_N4
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[33]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[33]~36_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[33]~36_combout\);

-- Location: LCCOMB_X10_Y25_N10
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[32]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & 
-- !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\);

-- Location: LCCOMB_X11_Y25_N20
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[31]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\);

-- Location: LCCOMB_X11_Y26_N8
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\);

-- Location: LCCOMB_X11_Y26_N30
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[26]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\ = (\my_calculator|sum\(5) & \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(5),
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\);

-- Location: LCCOMB_X11_Y26_N22
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[25]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ = (\my_calculator|sum\(4) & \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(4),
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\);

-- Location: LCCOMB_X10_Y25_N12
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~42_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~42_combout\);

-- Location: LCCOMB_X11_Y16_N22
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[38]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[38]~44_combout\ = (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[38]~44_combout\);

-- Location: LCCOMB_X11_Y26_N26
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[33]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[33]~76_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[33]~76_combout\);

-- Location: LCCOMB_X11_Y24_N10
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \my_calculator|sum\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \my_calculator|sum\(4),
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\);

-- Location: LCCOMB_X11_Y24_N26
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \my_calculator|sum\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \my_calculator|sum\(3),
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\);

-- Location: LCCOMB_X11_Y16_N20
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

-- Location: LCCOMB_X11_Y16_N6
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[43]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[43]~49_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & 
-- !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[43]~49_combout\);

-- Location: LCCOMB_X11_Y10_N30
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~50_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & 
-- !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~50_combout\);

-- Location: LCCOMB_X11_Y23_N10
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[36]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\ = (\my_calculator|sum\(3) & \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(3),
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\);

-- Location: LCCOMB_X11_Y23_N26
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[35]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\ = (\my_calculator|sum\(2) & \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(2),
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\);

-- Location: LCCOMB_X11_Y10_N6
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~52_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~52_combout\);

-- Location: LCCOMB_X10_Y23_N12
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

-- Location: LCCOMB_X10_Y23_N0
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[42]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[42]~89_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[42]~89_combout\);

-- Location: LCCOMB_X11_Y23_N6
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

-- Location: LCCOMB_X10_Y23_N22
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[40]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[40]~93_combout\ = (\my_calculator|sum\(1) & !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(1),
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[40]~93_combout\);

-- Location: LCCOMB_X15_Y20_N26
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[54]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[54]~55_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & 
-- !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[54]~55_combout\);

-- Location: LCCOMB_X12_Y20_N30
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

-- Location: LCCOMB_X12_Y21_N28
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[52]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\ = (\my_calculator|sum\(7) & \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(7),
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\);

-- Location: LCCOMB_X15_Y20_N24
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & 
-- !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\);

-- Location: LCCOMB_X12_Y20_N22
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

-- Location: LCCOMB_X12_Y20_N26
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[49]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\ = (\my_calculator|sum\(4) & \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(4),
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\);

-- Location: LCCOMB_X14_Y20_N6
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

-- Location: LCCOMB_X12_Y21_N12
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[48]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[48]~73_combout\ = (\my_calculator|sum\(3) & \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(3),
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[48]~73_combout\);

-- Location: LCCOMB_X12_Y21_N14
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[48]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[48]~74_combout\ = (\my_calculator|sum\(3) & !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(3),
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[48]~74_combout\);

-- Location: LCCOMB_X10_Y21_N4
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

-- Location: LCCOMB_X14_Y21_N24
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[70]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[70]~76_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ & 
-- !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[70]~76_combout\);

-- Location: LCCOMB_X14_Y21_N22
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[69]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[69]~77_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ & 
-- !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[69]~77_combout\);

-- Location: LCCOMB_X14_Y20_N0
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[68]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[68]~78_combout\ = (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[68]~78_combout\);

-- Location: LCCOMB_X14_Y21_N20
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[67]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ & 
-- !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\);

-- Location: LCCOMB_X14_Y21_N28
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[66]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ & 
-- !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\);

-- Location: LCCOMB_X14_Y21_N30
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[65]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\ = (\my_calculator|sum\(2) & \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(2),
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\);

-- Location: LCCOMB_X12_Y21_N4
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[56]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[56]~82_combout\ = (\my_calculator|sum\(2) & \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(2),
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[56]~82_combout\);

-- Location: LCCOMB_X12_Y21_N26
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[56]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[56]~83_combout\ = (\my_calculator|sum\(2) & !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(2),
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[56]~83_combout\);

-- Location: LCCOMB_X14_Y21_N4
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[65]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[65]~84_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\ & 
-- !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[65]~84_combout\);

-- Location: LCCOMB_X9_Y10_N18
\my_gettempnumber|Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux3~4_combout\ = (!\my_counter|wordselector\(1) & ((\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & 
-- ((!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\))) # (!\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & 
-- (\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_counter|wordselector\(1),
	datab => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\,
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	combout => \my_gettempnumber|Mux3~4_combout\);

-- Location: LCCOMB_X9_Y10_N12
\my_gettempnumber|Mux3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux3~5_combout\ = (!\my_counter|wordselector\(0) & ((\my_gettempnumber|Mux3~4_combout\) # ((\my_calculator|sum\(0) & \my_counter|wordselector\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_counter|wordselector\(0),
	datab => \my_calculator|sum\(0),
	datac => \my_counter|wordselector\(1),
	datad => \my_gettempnumber|Mux3~4_combout\,
	combout => \my_gettempnumber|Mux3~5_combout\);

-- Location: LCCOMB_X11_Y10_N10
\my_gettempnumber|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux2~0_combout\ = (\my_segtranslator|Decoder0~0_combout\ & (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~52_combout\) # 
-- (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~52_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\,
	datac => \my_segtranslator|Decoder0~0_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mux2~0_combout\);

-- Location: LCCOMB_X15_Y19_N14
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[18]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[18]~57_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[18]~57_combout\);

-- Location: LCCOMB_X15_Y19_N10
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~59_combout\ = (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~59_combout\);

-- Location: LCCOMB_X15_Y19_N12
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[16]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[16]~60_combout\ = (\my_calculator|sum\(7) & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(7),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[16]~60_combout\);

-- Location: LCCOMB_X15_Y19_N20
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~63_combout\ = (\my_calculator|sum\(6) & !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(6),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~63_combout\);

-- Location: LCCOMB_X14_Y19_N6
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[21]~66_combout\ = (\my_calculator|sum\(6) & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(6),
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[21]~66_combout\);

-- Location: LCCOMB_X14_Y19_N0
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~69_combout\ = (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \my_calculator|sum\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \my_calculator|sum\(5),
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~69_combout\);

-- Location: LCCOMB_X10_Y22_N20
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~73_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~73_combout\);

-- Location: LCCOMB_X10_Y22_N30
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~74_combout\ = (\my_calculator|sum\(4) & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(4),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~74_combout\);

-- Location: LCCOMB_X11_Y22_N22
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[33]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[33]~76_combout\ = (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[33]~76_combout\);

-- Location: LCCOMB_X11_Y22_N12
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~77_combout\ = (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~77_combout\);

-- Location: LCCOMB_X11_Y22_N10
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~78_combout\ = (\my_calculator|sum\(4) & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(4),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~78_combout\);

-- Location: LCCOMB_X11_Y22_N30
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

-- Location: LCCOMB_X11_Y22_N18
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[38]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[38]~82_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[38]~82_combout\);

-- Location: LCCOMB_X11_Y19_N22
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~83_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~83_combout\);

-- Location: LCCOMB_X11_Y19_N10
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

-- Location: LCCOMB_X11_Y19_N30
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

-- Location: LCCOMB_X12_Y19_N22
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[40]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[40]~89_combout\ = (\my_calculator|sum\(1) & !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(1),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[40]~89_combout\);

-- Location: LCCOMB_X11_Y19_N16
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[43]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[43]~90_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[43]~90_combout\);

-- Location: LCCOMB_X11_Y19_N14
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~92_combout\ = (\my_calculator|sum\(2) & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(2),
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~92_combout\);

-- Location: LCCOMB_X12_Y21_N8
\my_gettempnumber|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux1~0_combout\ = (\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & ((!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))) # 
-- (!\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & (\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\,
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	combout => \my_gettempnumber|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y19_N6
\my_gettempnumber|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux1~1_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~92_combout\) # 
-- ((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~93_combout\)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- (((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~92_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~93_combout\,
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mux1~1_combout\);

-- Location: LCCOMB_X12_Y19_N4
\my_gettempnumber|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux1~2_combout\ = (!\my_counter|wordselector\(0) & ((\my_counter|wordselector\(1) & ((\my_gettempnumber|Mux1~1_combout\))) # (!\my_counter|wordselector\(1) & (\my_gettempnumber|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_counter|wordselector\(0),
	datab => \my_counter|wordselector\(1),
	datac => \my_gettempnumber|Mux1~0_combout\,
	datad => \my_gettempnumber|Mux1~1_combout\,
	combout => \my_gettempnumber|Mux1~2_combout\);

-- Location: LCCOMB_X12_Y21_N6
\my_gettempnumber|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux0~1_combout\ = (\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)) # 
-- (!\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & ((\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\,
	datad => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	combout => \my_gettempnumber|Mux0~1_combout\);

-- Location: LCCOMB_X12_Y19_N10
\my_gettempnumber|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux0~2_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~91_combout\) # 
-- (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~103_combout\)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~91_combout\,
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~103_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mux0~2_combout\);

-- Location: LCCOMB_X12_Y19_N0
\my_gettempnumber|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux0~3_combout\ = (!\my_counter|wordselector\(0) & ((\my_counter|wordselector\(1) & (\my_gettempnumber|Mux0~2_combout\)) # (!\my_counter|wordselector\(1) & ((\my_gettempnumber|Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mux0~2_combout\,
	datab => \my_counter|wordselector\(1),
	datac => \my_counter|wordselector\(0),
	datad => \my_gettempnumber|Mux0~1_combout\,
	combout => \my_gettempnumber|Mux0~3_combout\);

-- Location: LCCOMB_X16_Y18_N12
\my_calculator|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux7~0_combout\ = (\my_calculator|Mux4~0_combout\ & (\my_calculator|Mux4~1_combout\)) # (!\my_calculator|Mux4~0_combout\ & ((\my_calculator|Mux4~1_combout\ & (\my_calculator|Add3~12_combout\)) # (!\my_calculator|Mux4~1_combout\ & 
-- ((\my_calculator|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Mux4~0_combout\,
	datab => \my_calculator|Mux4~1_combout\,
	datac => \my_calculator|Add3~12_combout\,
	datad => \my_calculator|Add0~12_combout\,
	combout => \my_calculator|Mux7~0_combout\);

-- Location: LCCOMB_X16_Y18_N30
\my_calculator|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux8~0_combout\ = (\my_calculator|Mux4~1_combout\ & (\my_calculator|Mux4~0_combout\)) # (!\my_calculator|Mux4~1_combout\ & ((\my_calculator|Mux4~0_combout\ & ((\my_calculator|Add1~8_combout\))) # (!\my_calculator|Mux4~0_combout\ & 
-- (\my_calculator|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Mux4~1_combout\,
	datab => \my_calculator|Mux4~0_combout\,
	datac => \my_calculator|Add0~10_combout\,
	datad => \my_calculator|Add1~8_combout\,
	combout => \my_calculator|Mux8~0_combout\);

-- Location: LCCOMB_X16_Y18_N4
\my_calculator|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux8~1_combout\ = (\my_calculator|Mux4~1_combout\ & ((\my_calculator|Mux8~0_combout\ & (\my_calculator|Add2~8_combout\)) # (!\my_calculator|Mux8~0_combout\ & ((\my_calculator|Add3~10_combout\))))) # (!\my_calculator|Mux4~1_combout\ & 
-- (((\my_calculator|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Add2~8_combout\,
	datab => \my_calculator|Mux4~1_combout\,
	datac => \my_calculator|Mux8~0_combout\,
	datad => \my_calculator|Add3~10_combout\,
	combout => \my_calculator|Mux8~1_combout\);

-- Location: LCCOMB_X16_Y18_N10
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

-- Location: LCCOMB_X16_Y18_N26
\my_calculator|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux9~0_combout\ = (\my_calculator|Mux4~0_combout\ & (\my_calculator|Mux4~1_combout\)) # (!\my_calculator|Mux4~0_combout\ & ((\my_calculator|Mux4~1_combout\ & (\my_calculator|Add3~8_combout\)) # (!\my_calculator|Mux4~1_combout\ & 
-- ((\my_calculator|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Mux4~0_combout\,
	datab => \my_calculator|Mux4~1_combout\,
	datac => \my_calculator|Add3~8_combout\,
	datad => \my_calculator|Add0~8_combout\,
	combout => \my_calculator|Mux9~0_combout\);

-- Location: LCCOMB_X15_Y21_N26
\my_calculator|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux13~0_combout\ = (\my_FSM|state\(0) & ((\my_FSM|state\(2) & (\my_calculator|Add4~0_combout\)) # (!\my_FSM|state\(2) & ((\my_calculator|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(0),
	datab => \my_calculator|Add4~0_combout\,
	datac => \my_FSM|state\(2),
	datad => \my_calculator|Add0~0_combout\,
	combout => \my_calculator|Mux13~0_combout\);

-- Location: LCCOMB_X15_Y22_N28
\my_calculator|Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux13~1_combout\ = (\my_calculator|Mux13~0_combout\) # ((!\my_FSM|state\(0) & \my_calculator|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(0),
	datac => \my_calculator|Add3~0_combout\,
	datad => \my_calculator|Mux13~0_combout\,
	combout => \my_calculator|Mux13~1_combout\);

-- Location: FF_X20_Y1_N1
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

-- Location: FF_X15_Y18_N29
\in_10c|out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_10c|out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_10c|out~q\);

-- Location: FF_X11_Y20_N11
\in_50c|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_50c|count[17]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_50c|count\(17));

-- Location: FF_X11_Y20_N7
\in_50c|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_50c|count[8]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_50c|count\(8));

-- Location: FF_X10_Y19_N31
\in_50c|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_50c|count[15]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_50c|count\(15));

-- Location: LCCOMB_X11_Y20_N26
\in_50c|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Equal0~5_combout\ = (\in_50c|count\(12) & (\in_50c|count\(13) & (!\in_50c|count\(14) & !\in_50c|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_50c|count\(12),
	datab => \in_50c|count\(13),
	datac => \in_50c|count\(14),
	datad => \in_50c|count\(15),
	combout => \in_50c|Equal0~5_combout\);

-- Location: FF_X11_Y14_N21
\in_10c|last\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in2~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_10c|last~q\);

-- Location: FF_X10_Y14_N21
\in_10c|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_10c|count[18]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_10c|count\(18));

-- Location: FF_X10_Y14_N23
\in_10c|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_10c|count[19]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_10c|count\(19));

-- Location: FF_X11_Y14_N7
\in_10c|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_10c|count[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_10c|count\(16));

-- Location: FF_X11_Y14_N25
\in_10c|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_10c|count[17]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_10c|count\(17));

-- Location: LCCOMB_X11_Y14_N26
\in_10c|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Equal0~0_combout\ = (!\in_10c|count\(16) & (!\in_10c|count\(17) & (\in_10c|count\(18) & \in_10c|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|count\(16),
	datab => \in_10c|count\(17),
	datac => \in_10c|count\(18),
	datad => \in_10c|count\(19),
	combout => \in_10c|Equal0~0_combout\);

-- Location: FF_X10_Y15_N29
\in_10c|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_10c|count[0]~36_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_10c|count\(0));

-- Location: FF_X11_Y15_N17
\in_10c|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_10c|count[1]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_10c|count\(1));

-- Location: FF_X10_Y15_N5
\in_10c|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_10c|count[2]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_10c|count\(2));

-- Location: FF_X11_Y15_N31
\in_10c|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_10c|count[3]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_10c|count\(3));

-- Location: LCCOMB_X11_Y14_N4
\in_10c|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Equal0~1_combout\ = (!\in_10c|count\(0) & (!\in_10c|count\(3) & (!\in_10c|count\(1) & !\in_10c|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|count\(0),
	datab => \in_10c|count\(3),
	datac => \in_10c|count\(1),
	datad => \in_10c|count\(2),
	combout => \in_10c|Equal0~1_combout\);

-- Location: FF_X10_Y15_N3
\in_10c|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_10c|count[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_10c|count\(4));

-- Location: FF_X10_Y15_N9
\in_10c|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_10c|count[5]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_10c|count\(5));

-- Location: FF_X10_Y15_N7
\in_10c|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_10c|count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_10c|count\(6));

-- Location: FF_X10_Y15_N1
\in_10c|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_10c|count[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_10c|count\(7));

-- Location: LCCOMB_X11_Y14_N14
\in_10c|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Equal0~2_combout\ = (!\in_10c|count\(6) & (!\in_10c|count\(4) & (!\in_10c|count\(5) & !\in_10c|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|count\(6),
	datab => \in_10c|count\(4),
	datac => \in_10c|count\(5),
	datad => \in_10c|count\(7),
	combout => \in_10c|Equal0~2_combout\);

-- Location: FF_X11_Y14_N1
\in_10c|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_10c|count[8]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_10c|count\(8));

-- Location: FF_X11_Y14_N23
\in_10c|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_10c|count[10]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_10c|count\(10));

-- Location: FF_X10_Y15_N11
\in_10c|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_10c|count[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_10c|count\(9));

-- Location: FF_X11_Y14_N13
\in_10c|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_10c|count[11]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_10c|count\(11));

-- Location: LCCOMB_X11_Y14_N10
\in_10c|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Equal0~3_combout\ = (!\in_10c|count\(11) & (\in_10c|count\(8) & (\in_10c|count\(10) & !\in_10c|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|count\(11),
	datab => \in_10c|count\(8),
	datac => \in_10c|count\(10),
	datad => \in_10c|count\(9),
	combout => \in_10c|Equal0~3_combout\);

-- Location: FF_X10_Y14_N25
\in_10c|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_10c|count[12]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_10c|count\(12));

-- Location: FF_X10_Y14_N27
\in_10c|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_10c|count[13]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_10c|count\(13));

-- Location: FF_X10_Y14_N29
\in_10c|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_10c|count[14]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_10c|count\(14));

-- Location: FF_X10_Y14_N31
\in_10c|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_10c|count[15]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_10c|count\(15));

-- Location: LCCOMB_X11_Y14_N8
\in_10c|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Equal0~4_combout\ = (!\in_10c|count\(14) & (\in_10c|count\(12) & (\in_10c|count\(13) & !\in_10c|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|count\(14),
	datab => \in_10c|count\(12),
	datac => \in_10c|count\(13),
	datad => \in_10c|count\(15),
	combout => \in_10c|Equal0~4_combout\);

-- Location: LCCOMB_X11_Y14_N2
\in_10c|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Equal0~5_combout\ = (\in_10c|Equal0~4_combout\ & \in_10c|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_10c|Equal0~4_combout\,
	datad => \in_10c|Equal0~3_combout\,
	combout => \in_10c|Equal0~5_combout\);

-- Location: LCCOMB_X11_Y14_N16
\in_10c|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|Equal0~6_combout\ = (\in_10c|Equal0~0_combout\ & (\in_10c|Equal0~1_combout\ & (\in_10c|Equal0~2_combout\ & \in_10c|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|Equal0~0_combout\,
	datab => \in_10c|Equal0~1_combout\,
	datac => \in_10c|Equal0~2_combout\,
	datad => \in_10c|Equal0~5_combout\,
	combout => \in_10c|Equal0~6_combout\);

-- Location: LCCOMB_X11_Y14_N20
\in_10c|out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|out~0_combout\ = (!\reset~input_o\ & ((\in2~input_o\ $ (\in_10c|last~q\)) # (!\in_10c|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \in2~input_o\,
	datac => \in_10c|last~q\,
	datad => \in_10c|Equal0~6_combout\,
	combout => \in_10c|out~0_combout\);

-- Location: LCCOMB_X15_Y18_N28
\in_10c|out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|out~1_combout\ = (\in_10c|out~0_combout\ & ((\in_10c|out~q\))) # (!\in_10c|out~0_combout\ & (\in2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2~input_o\,
	datac => \in_10c|out~q\,
	datad => \in_10c|out~0_combout\,
	combout => \in_10c|out~1_combout\);

-- Location: LCCOMB_X11_Y20_N6
\in_50c|count[8]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|count[8]~30_combout\ = (!\in_50c|always0~0_combout\ & ((\in_50c|Equal0~6_combout\ & (!\reset~input_o\)) # (!\in_50c|Equal0~6_combout\ & ((\in_50c|Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_50c|Equal0~6_combout\,
	datab => \in_50c|always0~0_combout\,
	datac => \reset~input_o\,
	datad => \in_50c|Add0~16_combout\,
	combout => \in_50c|count[8]~30_combout\);

-- Location: LCCOMB_X11_Y14_N30
\in_10c|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|always0~0_combout\ = \in2~input_o\ $ (\in_10c|last~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in2~input_o\,
	datad => \in_10c|last~q\,
	combout => \in_10c|always0~0_combout\);

-- Location: LCCOMB_X10_Y14_N20
\in_10c|count[18]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|count[18]~28_combout\ = (!\in_10c|always0~0_combout\ & ((\in_10c|Equal0~6_combout\ & (!\reset~input_o\)) # (!\in_10c|Equal0~6_combout\ & ((\in_10c|Add0~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|always0~0_combout\,
	datab => \in_10c|Equal0~6_combout\,
	datac => \reset~input_o\,
	datad => \in_10c|Add0~36_combout\,
	combout => \in_10c|count[18]~28_combout\);

-- Location: LCCOMB_X10_Y14_N22
\in_10c|count[19]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|count[19]~29_combout\ = (!\in_10c|always0~0_combout\ & ((\in_10c|Equal0~6_combout\ & (!\reset~input_o\)) # (!\in_10c|Equal0~6_combout\ & ((\in_10c|Add0~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|always0~0_combout\,
	datab => \in_10c|Equal0~6_combout\,
	datac => \reset~input_o\,
	datad => \in_10c|Add0~38_combout\,
	combout => \in_10c|count[19]~29_combout\);

-- Location: LCCOMB_X11_Y14_N0
\in_10c|count[8]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|count[8]~30_combout\ = (!\in_10c|always0~0_combout\ & ((\in_10c|Equal0~6_combout\ & (!\reset~input_o\)) # (!\in_10c|Equal0~6_combout\ & ((\in_10c|Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|always0~0_combout\,
	datab => \reset~input_o\,
	datac => \in_10c|Equal0~6_combout\,
	datad => \in_10c|Add0~16_combout\,
	combout => \in_10c|count[8]~30_combout\);

-- Location: LCCOMB_X11_Y14_N22
\in_10c|count[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|count[10]~31_combout\ = (!\in_10c|always0~0_combout\ & ((\in_10c|Equal0~6_combout\ & (!\reset~input_o\)) # (!\in_10c|Equal0~6_combout\ & ((\in_10c|Add0~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|always0~0_combout\,
	datab => \reset~input_o\,
	datac => \in_10c|Add0~20_combout\,
	datad => \in_10c|Equal0~6_combout\,
	combout => \in_10c|count[10]~31_combout\);

-- Location: LCCOMB_X10_Y14_N24
\in_10c|count[12]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|count[12]~32_combout\ = (!\in_10c|always0~0_combout\ & ((\in_10c|Equal0~6_combout\ & (!\reset~input_o\)) # (!\in_10c|Equal0~6_combout\ & ((\in_10c|Add0~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \in_10c|Add0~24_combout\,
	datac => \in_10c|always0~0_combout\,
	datad => \in_10c|Equal0~6_combout\,
	combout => \in_10c|count[12]~32_combout\);

-- Location: LCCOMB_X10_Y14_N26
\in_10c|count[13]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|count[13]~33_combout\ = (!\in_10c|always0~0_combout\ & ((\in_10c|Equal0~6_combout\ & (!\reset~input_o\)) # (!\in_10c|Equal0~6_combout\ & ((\in_10c|Add0~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|always0~0_combout\,
	datab => \in_10c|Equal0~6_combout\,
	datac => \reset~input_o\,
	datad => \in_10c|Add0~26_combout\,
	combout => \in_10c|count[13]~33_combout\);

-- Location: LCCOMB_X12_Y25_N30
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[28]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[28]~94_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\) 
-- # ((!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[28]~94_combout\);

-- Location: LCCOMB_X11_Y24_N0
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[38]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[38]~96_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\) 
-- # ((!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[38]~96_combout\);

-- Location: LCCOMB_X14_Y20_N8
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[70]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\) 
-- # ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\);

-- Location: LCCOMB_X15_Y20_N0
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[69]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[69]~86_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\) 
-- # ((!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[69]~86_combout\);

-- Location: LCCOMB_X14_Y21_N26
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[68]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[68]~87_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\) 
-- # ((!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[68]~87_combout\);

-- Location: LCCOMB_X14_Y19_N14
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[28]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[28]~94_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~99_combout\) 
-- # ((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~99_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[28]~94_combout\);

-- Location: LCCOMB_X11_Y20_N10
\in_50c|count[17]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|count[17]~35_combout\ = (\in_50c|Add0~34_combout\ & (\in_50c|last~q\ $ (!\in3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_50c|last~q\,
	datab => \in3~input_o\,
	datad => \in_50c|Add0~34_combout\,
	combout => \in_50c|count[17]~35_combout\);

-- Location: LCCOMB_X10_Y19_N30
\in_50c|count[15]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|count[15]~47_combout\ = (\in_50c|Add0~30_combout\ & (\in_50c|last~q\ $ (!\in3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_50c|last~q\,
	datac => \in3~input_o\,
	datad => \in_50c|Add0~30_combout\,
	combout => \in_50c|count[15]~47_combout\);

-- Location: LCCOMB_X11_Y14_N6
\in_10c|count[16]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|count[16]~34_combout\ = (\in_10c|Add0~32_combout\ & (\in_10c|last~q\ $ (!\in2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_10c|last~q\,
	datac => \in2~input_o\,
	datad => \in_10c|Add0~32_combout\,
	combout => \in_10c|count[16]~34_combout\);

-- Location: LCCOMB_X11_Y14_N24
\in_10c|count[17]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|count[17]~35_combout\ = (\in_10c|Add0~34_combout\ & (\in_10c|last~q\ $ (!\in2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_10c|last~q\,
	datac => \in2~input_o\,
	datad => \in_10c|Add0~34_combout\,
	combout => \in_10c|count[17]~35_combout\);

-- Location: LCCOMB_X11_Y14_N28
\in_10c|count[0]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|count[0]~36_combout\ = (\in_10c|Add0~0_combout\ & (!\in_10c|Equal0~6_combout\ & (\in_10c|last~q\ $ (!\in2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|Add0~0_combout\,
	datab => \in_10c|last~q\,
	datac => \in2~input_o\,
	datad => \in_10c|Equal0~6_combout\,
	combout => \in_10c|count[0]~36_combout\);

-- Location: LCCOMB_X11_Y15_N16
\in_10c|count[1]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|count[1]~37_combout\ = (\in_10c|Add0~2_combout\ & (\in_10c|last~q\ $ (!\in2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|last~q\,
	datac => \in2~input_o\,
	datad => \in_10c|Add0~2_combout\,
	combout => \in_10c|count[1]~37_combout\);

-- Location: LCCOMB_X10_Y15_N4
\in_10c|count[2]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|count[2]~38_combout\ = (\in_10c|Add0~4_combout\ & (\in2~input_o\ $ (!\in_10c|last~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2~input_o\,
	datab => \in_10c|Add0~4_combout\,
	datad => \in_10c|last~q\,
	combout => \in_10c|count[2]~38_combout\);

-- Location: LCCOMB_X11_Y15_N30
\in_10c|count[3]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|count[3]~39_combout\ = (\in_10c|Add0~6_combout\ & (\in_10c|last~q\ $ (!\in2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|last~q\,
	datac => \in2~input_o\,
	datad => \in_10c|Add0~6_combout\,
	combout => \in_10c|count[3]~39_combout\);

-- Location: LCCOMB_X10_Y15_N2
\in_10c|count[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|count[4]~40_combout\ = (\in_10c|Add0~8_combout\ & (\in2~input_o\ $ (!\in_10c|last~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2~input_o\,
	datab => \in_10c|Add0~8_combout\,
	datad => \in_10c|last~q\,
	combout => \in_10c|count[4]~40_combout\);

-- Location: LCCOMB_X10_Y15_N8
\in_10c|count[5]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|count[5]~41_combout\ = (\in_10c|Add0~10_combout\ & (\in_10c|last~q\ $ (!\in2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|last~q\,
	datac => \in_10c|Add0~10_combout\,
	datad => \in2~input_o\,
	combout => \in_10c|count[5]~41_combout\);

-- Location: LCCOMB_X10_Y15_N6
\in_10c|count[6]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|count[6]~42_combout\ = (\in_10c|Add0~12_combout\ & (\in2~input_o\ $ (!\in_10c|last~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2~input_o\,
	datab => \in_10c|Add0~12_combout\,
	datad => \in_10c|last~q\,
	combout => \in_10c|count[6]~42_combout\);

-- Location: LCCOMB_X10_Y15_N0
\in_10c|count[7]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|count[7]~43_combout\ = (\in_10c|Add0~14_combout\ & (\in_10c|last~q\ $ (!\in2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|last~q\,
	datac => \in_10c|Add0~14_combout\,
	datad => \in2~input_o\,
	combout => \in_10c|count[7]~43_combout\);

-- Location: LCCOMB_X10_Y15_N10
\in_10c|count[9]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|count[9]~44_combout\ = (\in_10c|Add0~18_combout\ & (\in_10c|last~q\ $ (!\in2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|last~q\,
	datac => \in_10c|Add0~18_combout\,
	datad => \in2~input_o\,
	combout => \in_10c|count[9]~44_combout\);

-- Location: LCCOMB_X11_Y14_N12
\in_10c|count[11]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|count[11]~45_combout\ = (\in_10c|Add0~22_combout\ & (\in_10c|last~q\ $ (!\in2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_10c|last~q\,
	datac => \in2~input_o\,
	datad => \in_10c|Add0~22_combout\,
	combout => \in_10c|count[11]~45_combout\);

-- Location: LCCOMB_X10_Y14_N28
\in_10c|count[14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|count[14]~46_combout\ = (\in_10c|Add0~28_combout\ & (\in_10c|last~q\ $ (!\in2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|last~q\,
	datab => \in2~input_o\,
	datac => \in_10c|Add0~28_combout\,
	combout => \in_10c|count[14]~46_combout\);

-- Location: LCCOMB_X10_Y14_N30
\in_10c|count[15]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_10c|count[15]~47_combout\ = (\in_10c|Add0~30_combout\ & (\in2~input_o\ $ (!\in_10c|last~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in2~input_o\,
	datac => \in_10c|last~q\,
	datad => \in_10c|Add0~30_combout\,
	combout => \in_10c|count[15]~47_combout\);

-- Location: LCCOMB_X12_Y25_N24
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

-- Location: LCCOMB_X12_Y25_N22
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

-- Location: LCCOMB_X11_Y25_N16
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~57_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # 
-- (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~57_combout\);

-- Location: LCCOMB_X10_Y25_N4
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # 
-- (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\);

-- Location: LCCOMB_X11_Y26_N28
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\my_calculator|sum\(5)))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \my_calculator|sum\(5),
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\);

-- Location: LCCOMB_X11_Y16_N0
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~59_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))) # 
-- (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\,
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~59_combout\);

-- Location: LCCOMB_X11_Y24_N30
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\my_calculator|sum\(4))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(4),
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\);

-- Location: LCCOMB_X15_Y20_N30
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[62]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[62]~88_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\my_calculator|sum\(8)))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \my_calculator|sum\(8),
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[62]~88_combout\);

-- Location: LCCOMB_X15_Y20_N4
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\my_calculator|sum\(7))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \my_calculator|sum\(7),
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\);

-- Location: LCCOMB_X15_Y20_N6
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\my_calculator|sum\(6)))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datab => \my_calculator|sum\(6),
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\);

-- Location: LCCOMB_X15_Y20_N20
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\my_calculator|sum\(5)))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datab => \my_calculator|sum\(5),
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\);

-- Location: LCCOMB_X14_Y20_N10
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[67]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[67]~92_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\my_calculator|sum\(4))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(4),
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[67]~92_combout\);

-- Location: LCCOMB_X12_Y22_N28
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[66]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[66]~93_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\my_calculator|sum\(3))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \my_calculator|sum\(3),
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[66]~93_combout\);

-- Location: LCCOMB_X14_Y19_N12
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[23]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[23]~98_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\my_calculator|sum\(8))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \my_calculator|sum\(8),
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[23]~98_combout\);

-- Location: LCCOMB_X14_Y19_N10
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~99_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\my_calculator|sum\(7)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \my_calculator|sum\(7),
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~99_combout\);

-- Location: LCCOMB_X14_Y19_N16
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~100_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\my_calculator|sum\(6))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \my_calculator|sum\(6),
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~100_combout\);

-- Location: LCCOMB_X11_Y19_N26
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~103_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\my_calculator|sum\(3)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datab => \my_calculator|sum\(3),
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~103_combout\);

-- Location: LCCOMB_X20_Y1_N0
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

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X41_Y3_N15
\in2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2,
	o => \in2~input_o\);

-- Location: CLKCTRL_G17
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

-- Location: CLKCTRL_G9
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

-- Location: IOOBUF_X41_Y13_N23
\error~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_calculator|error~combout\,
	devoe => ww_devoe,
	o => \error~output_o\);

-- Location: IOOBUF_X41_Y24_N9
\success~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_calculator|success~combout\,
	devoe => ww_devoe,
	o => \success~output_o\);

-- Location: IOOBUF_X0_Y3_N2
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

-- Location: IOOBUF_X5_Y0_N9
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

-- Location: IOOBUF_X5_Y0_N23
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

-- Location: IOOBUF_X0_Y4_N23
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

-- Location: IOOBUF_X7_Y0_N30
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

-- Location: IOOBUF_X0_Y4_N2
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

-- Location: IOOBUF_X3_Y0_N9
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

-- Location: IOOBUF_X5_Y0_N2
\segout[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_segtranslator|Decoder0~1_combout\,
	devoe => ww_devoe,
	o => \segout[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N30
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

-- Location: IOOBUF_X0_Y3_N9
\segout[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_segtranslator|ALT_INV_Decoder0~2_combout\,
	devoe => ww_devoe,
	o => \segout[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
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

-- Location: IOOBUF_X0_Y5_N16
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

-- Location: IOOBUF_X0_Y5_N9
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

-- Location: IOOBUF_X0_Y22_N23
\sum[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_calculator|sum\(0),
	devoe => ww_devoe,
	o => \sum[0]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\sum[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_calculator|sum\(1),
	devoe => ww_devoe,
	o => \sum[1]~output_o\);

-- Location: IOOBUF_X11_Y29_N9
\sum[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_calculator|sum\(2),
	devoe => ww_devoe,
	o => \sum[2]~output_o\);

-- Location: IOOBUF_X14_Y29_N23
\sum[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_calculator|sum\(3),
	devoe => ww_devoe,
	o => \sum[3]~output_o\);

-- Location: IOOBUF_X11_Y29_N2
\sum[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_calculator|sum\(4),
	devoe => ww_devoe,
	o => \sum[4]~output_o\);

-- Location: IOOBUF_X11_Y29_N16
\sum[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_calculator|sum\(5),
	devoe => ww_devoe,
	o => \sum[5]~output_o\);

-- Location: IOOBUF_X14_Y29_N16
\sum[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_calculator|sum\(6),
	devoe => ww_devoe,
	o => \sum[6]~output_o\);

-- Location: IOOBUF_X14_Y29_N9
\sum[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_calculator|sum\(7),
	devoe => ww_devoe,
	o => \sum[7]~output_o\);

-- Location: IOOBUF_X14_Y29_N30
\sum[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_calculator|sum\(8),
	devoe => ww_devoe,
	o => \sum[8]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\sum[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_calculator|sum\(9),
	devoe => ww_devoe,
	o => \sum[9]~output_o\);

-- Location: IOIBUF_X41_Y27_N22
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X41_Y3_N22
\in3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3,
	o => \in3~input_o\);

-- Location: FF_X11_Y20_N25
\in_50c|last\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in3~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_50c|last~q\);

-- Location: LCCOMB_X11_Y21_N4
\in_50c|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|always0~0_combout\ = \in3~input_o\ $ (\in_50c|last~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in3~input_o\,
	datad => \in_50c|last~q\,
	combout => \in_50c|always0~0_combout\);

-- Location: LCCOMB_X10_Y20_N2
\in_50c|count[5]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|count[5]~41_combout\ = (\in_50c|Add0~10_combout\ & (\in3~input_o\ $ (!\in_50c|last~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_50c|Add0~10_combout\,
	datac => \in3~input_o\,
	datad => \in_50c|last~q\,
	combout => \in_50c|count[5]~41_combout\);

-- Location: FF_X10_Y20_N3
\in_50c|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_50c|count[5]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_50c|count\(5));

-- Location: LCCOMB_X10_Y20_N8
\in_50c|count[0]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|count[0]~36_combout\ = (\in_50c|Add0~0_combout\ & (!\in_50c|Equal0~6_combout\ & (\in3~input_o\ $ (!\in_50c|last~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_50c|Add0~0_combout\,
	datab => \in3~input_o\,
	datac => \in_50c|Equal0~6_combout\,
	datad => \in_50c|last~q\,
	combout => \in_50c|count[0]~36_combout\);

-- Location: FF_X10_Y20_N9
\in_50c|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_50c|count[0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_50c|count\(0));

-- Location: LCCOMB_X10_Y20_N14
\in_50c|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Add0~2_combout\ = (\in_50c|count\(1) & (!\in_50c|Add0~1\)) # (!\in_50c|count\(1) & ((\in_50c|Add0~1\) # (GND)))
-- \in_50c|Add0~3\ = CARRY((!\in_50c|Add0~1\) # (!\in_50c|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_50c|count\(1),
	datad => VCC,
	cin => \in_50c|Add0~1\,
	combout => \in_50c|Add0~2_combout\,
	cout => \in_50c|Add0~3\);

-- Location: LCCOMB_X10_Y20_N16
\in_50c|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Add0~4_combout\ = (\in_50c|count\(2) & (\in_50c|Add0~3\ $ (GND))) # (!\in_50c|count\(2) & (!\in_50c|Add0~3\ & VCC))
-- \in_50c|Add0~5\ = CARRY((\in_50c|count\(2) & !\in_50c|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_50c|count\(2),
	datad => VCC,
	cin => \in_50c|Add0~3\,
	combout => \in_50c|Add0~4_combout\,
	cout => \in_50c|Add0~5\);

-- Location: LCCOMB_X10_Y20_N0
\in_50c|count[2]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|count[2]~38_combout\ = (\in_50c|Add0~4_combout\ & (\in_50c|last~q\ $ (!\in3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_50c|last~q\,
	datac => \in3~input_o\,
	datad => \in_50c|Add0~4_combout\,
	combout => \in_50c|count[2]~38_combout\);

-- Location: FF_X10_Y20_N1
\in_50c|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_50c|count[2]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_50c|count\(2));

-- Location: LCCOMB_X10_Y20_N18
\in_50c|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Add0~6_combout\ = (\in_50c|count\(3) & (!\in_50c|Add0~5\)) # (!\in_50c|count\(3) & ((\in_50c|Add0~5\) # (GND)))
-- \in_50c|Add0~7\ = CARRY((!\in_50c|Add0~5\) # (!\in_50c|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_50c|count\(3),
	datad => VCC,
	cin => \in_50c|Add0~5\,
	combout => \in_50c|Add0~6_combout\,
	cout => \in_50c|Add0~7\);

-- Location: LCCOMB_X10_Y20_N20
\in_50c|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Add0~8_combout\ = (\in_50c|count\(4) & (\in_50c|Add0~7\ $ (GND))) # (!\in_50c|count\(4) & (!\in_50c|Add0~7\ & VCC))
-- \in_50c|Add0~9\ = CARRY((\in_50c|count\(4) & !\in_50c|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_50c|count\(4),
	datad => VCC,
	cin => \in_50c|Add0~7\,
	combout => \in_50c|Add0~8_combout\,
	cout => \in_50c|Add0~9\);

-- Location: LCCOMB_X10_Y20_N4
\in_50c|count[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|count[4]~40_combout\ = (\in_50c|Add0~8_combout\ & (\in_50c|last~q\ $ (!\in3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_50c|last~q\,
	datac => \in3~input_o\,
	datad => \in_50c|Add0~8_combout\,
	combout => \in_50c|count[4]~40_combout\);

-- Location: FF_X10_Y20_N5
\in_50c|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_50c|count[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_50c|count\(4));

-- Location: LCCOMB_X10_Y20_N24
\in_50c|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Add0~12_combout\ = (\in_50c|count\(6) & (\in_50c|Add0~11\ $ (GND))) # (!\in_50c|count\(6) & (!\in_50c|Add0~11\ & VCC))
-- \in_50c|Add0~13\ = CARRY((\in_50c|count\(6) & !\in_50c|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_50c|count\(6),
	datad => VCC,
	cin => \in_50c|Add0~11\,
	combout => \in_50c|Add0~12_combout\,
	cout => \in_50c|Add0~13\);

-- Location: LCCOMB_X10_Y20_N26
\in_50c|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Add0~14_combout\ = (\in_50c|count\(7) & (!\in_50c|Add0~13\)) # (!\in_50c|count\(7) & ((\in_50c|Add0~13\) # (GND)))
-- \in_50c|Add0~15\ = CARRY((!\in_50c|Add0~13\) # (!\in_50c|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_50c|count\(7),
	datad => VCC,
	cin => \in_50c|Add0~13\,
	combout => \in_50c|Add0~14_combout\,
	cout => \in_50c|Add0~15\);

-- Location: LCCOMB_X11_Y20_N18
\in_50c|count[7]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|count[7]~43_combout\ = (\in_50c|Add0~14_combout\ & (\in_50c|last~q\ $ (!\in3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_50c|last~q\,
	datac => \in_50c|Add0~14_combout\,
	datad => \in3~input_o\,
	combout => \in_50c|count[7]~43_combout\);

-- Location: FF_X11_Y20_N19
\in_50c|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_50c|count[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_50c|count\(7));

-- Location: LCCOMB_X10_Y20_N30
\in_50c|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Add0~18_combout\ = (\in_50c|count\(9) & (!\in_50c|Add0~17\)) # (!\in_50c|count\(9) & ((\in_50c|Add0~17\) # (GND)))
-- \in_50c|Add0~19\ = CARRY((!\in_50c|Add0~17\) # (!\in_50c|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_50c|count\(9),
	datad => VCC,
	cin => \in_50c|Add0~17\,
	combout => \in_50c|Add0~18_combout\,
	cout => \in_50c|Add0~19\);

-- Location: LCCOMB_X11_Y20_N14
\in_50c|count[9]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|count[9]~44_combout\ = (\in_50c|Add0~18_combout\ & (\in_50c|last~q\ $ (!\in3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_50c|last~q\,
	datab => \in3~input_o\,
	datad => \in_50c|Add0~18_combout\,
	combout => \in_50c|count[9]~44_combout\);

-- Location: FF_X11_Y20_N15
\in_50c|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_50c|count[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_50c|count\(9));

-- Location: LCCOMB_X10_Y19_N0
\in_50c|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Add0~20_combout\ = (\in_50c|count\(10) & (\in_50c|Add0~19\ $ (GND))) # (!\in_50c|count\(10) & (!\in_50c|Add0~19\ & VCC))
-- \in_50c|Add0~21\ = CARRY((\in_50c|count\(10) & !\in_50c|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_50c|count\(10),
	datad => VCC,
	cin => \in_50c|Add0~19\,
	combout => \in_50c|Add0~20_combout\,
	cout => \in_50c|Add0~21\);

-- Location: LCCOMB_X11_Y20_N20
\in_50c|count[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|count[10]~31_combout\ = (!\in_50c|always0~0_combout\ & ((\in_50c|Equal0~6_combout\ & (!\reset~input_o\)) # (!\in_50c|Equal0~6_combout\ & ((\in_50c|Add0~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \in_50c|always0~0_combout\,
	datac => \in_50c|Add0~20_combout\,
	datad => \in_50c|Equal0~6_combout\,
	combout => \in_50c|count[10]~31_combout\);

-- Location: FF_X11_Y20_N21
\in_50c|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_50c|count[10]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_50c|count\(10));

-- Location: LCCOMB_X10_Y19_N2
\in_50c|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Add0~22_combout\ = (\in_50c|count\(11) & (!\in_50c|Add0~21\)) # (!\in_50c|count\(11) & ((\in_50c|Add0~21\) # (GND)))
-- \in_50c|Add0~23\ = CARRY((!\in_50c|Add0~21\) # (!\in_50c|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_50c|count\(11),
	datad => VCC,
	cin => \in_50c|Add0~21\,
	combout => \in_50c|Add0~22_combout\,
	cout => \in_50c|Add0~23\);

-- Location: LCCOMB_X10_Y19_N26
\in_50c|count[11]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|count[11]~45_combout\ = (\in_50c|Add0~22_combout\ & (\in_50c|last~q\ $ (!\in3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_50c|last~q\,
	datac => \in3~input_o\,
	datad => \in_50c|Add0~22_combout\,
	combout => \in_50c|count[11]~45_combout\);

-- Location: FF_X10_Y19_N27
\in_50c|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_50c|count[11]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_50c|count\(11));

-- Location: LCCOMB_X11_Y20_N16
\in_50c|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Equal0~4_combout\ = (\in_50c|count\(8) & (\in_50c|count\(10) & (!\in_50c|count\(9) & !\in_50c|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_50c|count\(8),
	datab => \in_50c|count\(10),
	datac => \in_50c|count\(9),
	datad => \in_50c|count\(11),
	combout => \in_50c|Equal0~4_combout\);

-- Location: LCCOMB_X10_Y19_N4
\in_50c|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Add0~24_combout\ = (\in_50c|count\(12) & (\in_50c|Add0~23\ $ (GND))) # (!\in_50c|count\(12) & (!\in_50c|Add0~23\ & VCC))
-- \in_50c|Add0~25\ = CARRY((\in_50c|count\(12) & !\in_50c|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_50c|count\(12),
	datad => VCC,
	cin => \in_50c|Add0~23\,
	combout => \in_50c|Add0~24_combout\,
	cout => \in_50c|Add0~25\);

-- Location: LCCOMB_X11_Y20_N30
\in_50c|count[12]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|count[12]~32_combout\ = (!\in_50c|always0~0_combout\ & ((\in_50c|Equal0~6_combout\ & (!\reset~input_o\)) # (!\in_50c|Equal0~6_combout\ & ((\in_50c|Add0~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \in_50c|always0~0_combout\,
	datac => \in_50c|Add0~24_combout\,
	datad => \in_50c|Equal0~6_combout\,
	combout => \in_50c|count[12]~32_combout\);

-- Location: FF_X11_Y20_N31
\in_50c|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_50c|count[12]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_50c|count\(12));

-- Location: LCCOMB_X10_Y19_N6
\in_50c|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Add0~26_combout\ = (\in_50c|count\(13) & (!\in_50c|Add0~25\)) # (!\in_50c|count\(13) & ((\in_50c|Add0~25\) # (GND)))
-- \in_50c|Add0~27\ = CARRY((!\in_50c|Add0~25\) # (!\in_50c|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_50c|count\(13),
	datad => VCC,
	cin => \in_50c|Add0~25\,
	combout => \in_50c|Add0~26_combout\,
	cout => \in_50c|Add0~27\);

-- Location: LCCOMB_X11_Y20_N28
\in_50c|count[13]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|count[13]~33_combout\ = (!\in_50c|always0~0_combout\ & ((\in_50c|Equal0~6_combout\ & (!\reset~input_o\)) # (!\in_50c|Equal0~6_combout\ & ((\in_50c|Add0~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_50c|Equal0~6_combout\,
	datab => \in_50c|always0~0_combout\,
	datac => \reset~input_o\,
	datad => \in_50c|Add0~26_combout\,
	combout => \in_50c|count[13]~33_combout\);

-- Location: FF_X11_Y20_N29
\in_50c|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_50c|count[13]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_50c|count\(13));

-- Location: LCCOMB_X10_Y19_N8
\in_50c|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Add0~28_combout\ = (\in_50c|count\(14) & (\in_50c|Add0~27\ $ (GND))) # (!\in_50c|count\(14) & (!\in_50c|Add0~27\ & VCC))
-- \in_50c|Add0~29\ = CARRY((\in_50c|count\(14) & !\in_50c|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_50c|count\(14),
	datad => VCC,
	cin => \in_50c|Add0~27\,
	combout => \in_50c|Add0~28_combout\,
	cout => \in_50c|Add0~29\);

-- Location: LCCOMB_X10_Y19_N20
\in_50c|count[14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|count[14]~46_combout\ = (\in_50c|Add0~28_combout\ & (\in3~input_o\ $ (!\in_50c|last~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3~input_o\,
	datac => \in_50c|Add0~28_combout\,
	datad => \in_50c|last~q\,
	combout => \in_50c|count[14]~46_combout\);

-- Location: FF_X10_Y19_N21
\in_50c|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_50c|count[14]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_50c|count\(14));

-- Location: LCCOMB_X10_Y19_N12
\in_50c|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Add0~32_combout\ = (\in_50c|count\(16) & (\in_50c|Add0~31\ $ (GND))) # (!\in_50c|count\(16) & (!\in_50c|Add0~31\ & VCC))
-- \in_50c|Add0~33\ = CARRY((\in_50c|count\(16) & !\in_50c|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_50c|count\(16),
	datad => VCC,
	cin => \in_50c|Add0~31\,
	combout => \in_50c|Add0~32_combout\,
	cout => \in_50c|Add0~33\);

-- Location: LCCOMB_X10_Y19_N24
\in_50c|count[16]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|count[16]~34_combout\ = (\in_50c|Add0~32_combout\ & (\in_50c|last~q\ $ (!\in3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_50c|last~q\,
	datac => \in3~input_o\,
	datad => \in_50c|Add0~32_combout\,
	combout => \in_50c|count[16]~34_combout\);

-- Location: FF_X10_Y19_N25
\in_50c|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_50c|count[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_50c|count\(16));

-- Location: LCCOMB_X10_Y19_N16
\in_50c|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Add0~36_combout\ = (\in_50c|count\(18) & (\in_50c|Add0~35\ $ (GND))) # (!\in_50c|count\(18) & (!\in_50c|Add0~35\ & VCC))
-- \in_50c|Add0~37\ = CARRY((\in_50c|count\(18) & !\in_50c|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_50c|count\(18),
	datad => VCC,
	cin => \in_50c|Add0~35\,
	combout => \in_50c|Add0~36_combout\,
	cout => \in_50c|Add0~37\);

-- Location: LCCOMB_X10_Y19_N18
\in_50c|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Add0~38_combout\ = \in_50c|count\(19) $ (\in_50c|Add0~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_50c|count\(19),
	cin => \in_50c|Add0~37\,
	combout => \in_50c|Add0~38_combout\);

-- Location: LCCOMB_X10_Y19_N22
\in_50c|count[19]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|count[19]~29_combout\ = (!\in_50c|always0~0_combout\ & ((\in_50c|Equal0~6_combout\ & (!\reset~input_o\)) # (!\in_50c|Equal0~6_combout\ & ((\in_50c|Add0~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \in_50c|always0~0_combout\,
	datac => \in_50c|Equal0~6_combout\,
	datad => \in_50c|Add0~38_combout\,
	combout => \in_50c|count[19]~29_combout\);

-- Location: FF_X10_Y19_N23
\in_50c|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_50c|count[19]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_50c|count\(19));

-- Location: LCCOMB_X10_Y19_N28
\in_50c|count[18]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|count[18]~28_combout\ = (!\in_50c|always0~0_combout\ & ((\in_50c|Equal0~6_combout\ & (!\reset~input_o\)) # (!\in_50c|Equal0~6_combout\ & ((\in_50c|Add0~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \in_50c|always0~0_combout\,
	datac => \in_50c|Equal0~6_combout\,
	datad => \in_50c|Add0~36_combout\,
	combout => \in_50c|count[18]~28_combout\);

-- Location: FF_X10_Y19_N29
\in_50c|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_50c|count[18]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_50c|count\(18));

-- Location: LCCOMB_X11_Y20_N8
\in_50c|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Equal0~0_combout\ = (!\in_50c|count\(17) & (\in_50c|count\(19) & (\in_50c|count\(18) & !\in_50c|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_50c|count\(17),
	datab => \in_50c|count\(19),
	datac => \in_50c|count\(18),
	datad => \in_50c|count\(16),
	combout => \in_50c|Equal0~0_combout\);

-- Location: LCCOMB_X11_Y20_N4
\in_50c|count[6]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|count[6]~42_combout\ = (\in_50c|Add0~12_combout\ & (\in_50c|last~q\ $ (!\in3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_50c|last~q\,
	datab => \in3~input_o\,
	datad => \in_50c|Add0~12_combout\,
	combout => \in_50c|count[6]~42_combout\);

-- Location: FF_X11_Y20_N5
\in_50c|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_50c|count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_50c|count\(6));

-- Location: LCCOMB_X10_Y20_N6
\in_50c|count[3]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|count[3]~39_combout\ = (\in_50c|Add0~6_combout\ & (\in_50c|last~q\ $ (!\in3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_50c|last~q\,
	datac => \in3~input_o\,
	datad => \in_50c|Add0~6_combout\,
	combout => \in_50c|count[3]~39_combout\);

-- Location: FF_X10_Y20_N7
\in_50c|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_50c|count[3]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_50c|count\(3));

-- Location: LCCOMB_X10_Y20_N10
\in_50c|count[1]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|count[1]~37_combout\ = (\in_50c|Add0~2_combout\ & (\in_50c|last~q\ $ (!\in3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_50c|last~q\,
	datac => \in3~input_o\,
	datad => \in_50c|Add0~2_combout\,
	combout => \in_50c|count[1]~37_combout\);

-- Location: FF_X10_Y20_N11
\in_50c|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_50c|count[1]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_50c|count\(1));

-- Location: LCCOMB_X11_Y20_N22
\in_50c|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Equal0~1_combout\ = (!\in_50c|count\(0) & (!\in_50c|count\(3) & (!\in_50c|count\(2) & !\in_50c|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_50c|count\(0),
	datab => \in_50c|count\(3),
	datac => \in_50c|count\(2),
	datad => \in_50c|count\(1),
	combout => \in_50c|Equal0~1_combout\);

-- Location: LCCOMB_X11_Y20_N24
\in_50c|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Equal0~2_combout\ = (!\in_50c|count\(4) & !\in_50c|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_50c|count\(4),
	datad => \in_50c|count\(5),
	combout => \in_50c|Equal0~2_combout\);

-- Location: LCCOMB_X11_Y20_N0
\in_50c|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Equal0~3_combout\ = (!\in_50c|count\(7) & (!\in_50c|count\(6) & (\in_50c|Equal0~1_combout\ & \in_50c|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_50c|count\(7),
	datab => \in_50c|count\(6),
	datac => \in_50c|Equal0~1_combout\,
	datad => \in_50c|Equal0~2_combout\,
	combout => \in_50c|Equal0~3_combout\);

-- Location: LCCOMB_X11_Y20_N12
\in_50c|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|Equal0~6_combout\ = (\in_50c|Equal0~5_combout\ & (\in_50c|Equal0~4_combout\ & (\in_50c|Equal0~0_combout\ & \in_50c|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_50c|Equal0~5_combout\,
	datab => \in_50c|Equal0~4_combout\,
	datac => \in_50c|Equal0~0_combout\,
	datad => \in_50c|Equal0~3_combout\,
	combout => \in_50c|Equal0~6_combout\);

-- Location: LCCOMB_X11_Y20_N2
\in_50c|out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|out~0_combout\ = (!\reset~input_o\ & ((\in3~input_o\ $ (\in_50c|last~q\)) # (!\in_50c|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \in3~input_o\,
	datac => \in_50c|last~q\,
	datad => \in_50c|Equal0~6_combout\,
	combout => \in_50c|out~0_combout\);

-- Location: LCCOMB_X15_Y18_N8
\in_50c|out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in_50c|out~1_combout\ = (\in_50c|out~0_combout\ & ((\in_50c|out~q\))) # (!\in_50c|out~0_combout\ & (\in3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in3~input_o\,
	datac => \in_50c|out~q\,
	datad => \in_50c|out~0_combout\,
	combout => \in_50c|out~1_combout\);

-- Location: FF_X15_Y18_N9
\in_50c|out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_50c|out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_50c|out~q\);

-- Location: LCCOMB_X15_Y18_N22
\my_FSM|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_FSM|Mux1~0_combout\ = (\my_FSM|state\(0) & (((\in_50c|out~q\) # (!\my_FSM|state\(1))))) # (!\my_FSM|state\(0) & (\in_10c|out~q\ & ((\my_FSM|state\(1)) # (\in_50c|out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|out~q\,
	datab => \my_FSM|state\(1),
	datac => \in_50c|out~q\,
	datad => \my_FSM|state\(0),
	combout => \my_FSM|Mux1~0_combout\);

-- Location: LCCOMB_X15_Y18_N18
\my_FSM|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_FSM|Mux1~1_combout\ = (!\my_FSM|Mux1~0_combout\ & (!\my_FSM|state\(2) & ((\in1~input_o\) # (\my_FSM|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1~input_o\,
	datab => \my_FSM|Mux1~0_combout\,
	datac => \my_FSM|state\(1),
	datad => \my_FSM|state\(2),
	combout => \my_FSM|Mux1~1_combout\);

-- Location: LCCOMB_X16_Y18_N28
\my_FSM|next[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_FSM|next\(1) = (GLOBAL(\my_FSM|Mux2~1clkctrl_outclk\) & (\my_FSM|Mux1~1_combout\)) # (!GLOBAL(\my_FSM|Mux2~1clkctrl_outclk\) & ((\my_FSM|next\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_FSM|Mux1~1_combout\,
	datac => \my_FSM|next\(1),
	datad => \my_FSM|Mux2~1clkctrl_outclk\,
	combout => \my_FSM|next\(1));

-- Location: CLKCTRL_G7
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

-- Location: FF_X16_Y18_N29
\my_FSM|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \my_FSM|next\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_FSM|state\(1));

-- Location: LCCOMB_X15_Y18_N14
\my_FSM|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_FSM|Mux3~0_combout\ = (\in1~input_o\ & (!\my_FSM|state\(1) & (!\my_FSM|state\(2) & !\my_FSM|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1~input_o\,
	datab => \my_FSM|state\(1),
	datac => \my_FSM|state\(2),
	datad => \my_FSM|state\(0),
	combout => \my_FSM|Mux3~0_combout\);

-- Location: IOIBUF_X41_Y18_N1
\OUT_25c~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OUT_25c,
	o => \OUT_25c~input_o\);

-- Location: IOIBUF_X41_Y18_N15
\OUT_15c~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OUT_15c,
	o => \OUT_15c~input_o\);

-- Location: LCCOMB_X15_Y18_N30
\my_FSM|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_FSM|Mux3~1_combout\ = (\in_10c|out~q\ & (\in_50c|out~q\ & ((\OUT_25c~input_o\) # (\OUT_15c~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|out~q\,
	datab => \OUT_25c~input_o\,
	datac => \OUT_15c~input_o\,
	datad => \in_50c|out~q\,
	combout => \my_FSM|Mux3~1_combout\);

-- Location: LCCOMB_X15_Y18_N4
\my_FSM|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_FSM|Mux3~2_combout\ = (\my_FSM|Mux3~0_combout\ & \my_FSM|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_FSM|Mux3~0_combout\,
	datac => \my_FSM|Mux3~1_combout\,
	combout => \my_FSM|Mux3~2_combout\);

-- Location: LCCOMB_X16_Y18_N14
\my_FSM|next[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_FSM|next\(2) = (GLOBAL(\my_FSM|Mux2~1clkctrl_outclk\) & ((\my_FSM|Mux3~2_combout\))) # (!GLOBAL(\my_FSM|Mux2~1clkctrl_outclk\) & (\my_FSM|next\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_FSM|next\(2),
	datac => \my_FSM|Mux3~2_combout\,
	datad => \my_FSM|Mux2~1clkctrl_outclk\,
	combout => \my_FSM|next\(2));

-- Location: FF_X16_Y18_N15
\my_FSM|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \my_FSM|next\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_FSM|state\(2));

-- Location: LCCOMB_X15_Y18_N10
\my_FSM|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_FSM|Mux2~0_combout\ = (\my_FSM|state\(1)) # ((\my_FSM|state\(0) & ((\OUT_25c~input_o\))) # (!\my_FSM|state\(0) & (\OUT_15c~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_15c~input_o\,
	datab => \OUT_25c~input_o\,
	datac => \my_FSM|state\(0),
	datad => \my_FSM|state\(1),
	combout => \my_FSM|Mux2~0_combout\);

-- Location: LCCOMB_X15_Y18_N0
\my_FSM|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_FSM|Mux2~1_combout\ = (!\my_FSM|Mux2~0_combout\) # (!\my_FSM|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_FSM|state\(2),
	datad => \my_FSM|Mux2~0_combout\,
	combout => \my_FSM|Mux2~1_combout\);

-- Location: CLKCTRL_G10
\my_FSM|Mux2~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \my_FSM|Mux2~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \my_FSM|Mux2~1clkctrl_outclk\);

-- Location: IOIBUF_X41_Y5_N8
\in1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1,
	o => \in1~input_o\);

-- Location: LCCOMB_X15_Y18_N6
\my_FSM|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_FSM|Mux0~0_combout\ = (\in_10c|out~q\ & (((\OUT_25c~input_o\ & !\OUT_15c~input_o\)) # (!\in_50c|out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_10c|out~q\,
	datab => \OUT_25c~input_o\,
	datac => \OUT_15c~input_o\,
	datad => \in_50c|out~q\,
	combout => \my_FSM|Mux0~0_combout\);

-- Location: LCCOMB_X15_Y18_N16
\my_FSM|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_FSM|Mux0~1_combout\ = (\my_FSM|state\(1) & (((\my_FSM|state\(0))))) # (!\my_FSM|state\(1) & (\in1~input_o\ & ((\my_FSM|state\(0)) # (!\my_FSM|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(1),
	datab => \in1~input_o\,
	datac => \my_FSM|state\(0),
	datad => \my_FSM|Mux0~0_combout\,
	combout => \my_FSM|Mux0~1_combout\);

-- Location: LCCOMB_X15_Y18_N24
\my_FSM|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_FSM|Mux0~2_combout\ = (!\my_FSM|state\(2) & ((\my_FSM|state\(1) & (!\in_50c|out~q\ & \my_FSM|Mux0~1_combout\)) # (!\my_FSM|state\(1) & ((!\my_FSM|Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(2),
	datab => \my_FSM|state\(1),
	datac => \in_50c|out~q\,
	datad => \my_FSM|Mux0~1_combout\,
	combout => \my_FSM|Mux0~2_combout\);

-- Location: LCCOMB_X15_Y18_N26
\my_FSM|next[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_FSM|next\(0) = (GLOBAL(\my_FSM|Mux2~1clkctrl_outclk\) & ((\my_FSM|Mux0~2_combout\))) # (!GLOBAL(\my_FSM|Mux2~1clkctrl_outclk\) & (\my_FSM|next\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_FSM|next\(0),
	datac => \my_FSM|Mux2~1clkctrl_outclk\,
	datad => \my_FSM|Mux0~2_combout\,
	combout => \my_FSM|next\(0));

-- Location: FF_X15_Y18_N27
\my_FSM|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_FSM|next\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_FSM|state\(0));

-- Location: LCCOMB_X15_Y21_N24
\my_calculator|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux1~2_combout\ = (!\my_FSM|state\(1) & ((\my_calculator|Mux3~1_combout\) # ((\my_FSM|state\(0) & !\my_FSM|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(0),
	datab => \my_FSM|state\(2),
	datac => \my_FSM|state\(1),
	datad => \my_calculator|Mux3~1_combout\,
	combout => \my_calculator|Mux1~2_combout\);

-- Location: LCCOMB_X15_Y22_N6
\my_calculator|sum[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|sum\(0) = (!\reset~input_o\ & ((\my_calculator|Mux1~2_combout\ & (\my_calculator|Mux13~1_combout\)) # (!\my_calculator|Mux1~2_combout\ & ((\my_calculator|sum\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Mux13~1_combout\,
	datab => \my_calculator|sum\(0),
	datac => \reset~input_o\,
	datad => \my_calculator|Mux1~2_combout\,
	combout => \my_calculator|sum\(0));

-- Location: LCCOMB_X17_Y21_N2
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

-- Location: LCCOMB_X17_Y21_N4
\my_calculator|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add4~4_combout\ = (\my_calculator|sum\(2) & ((GND) # (!\my_calculator|Add4~3\))) # (!\my_calculator|sum\(2) & (\my_calculator|Add4~3\ $ (GND)))
-- \my_calculator|Add4~5\ = CARRY((\my_calculator|sum\(2)) # (!\my_calculator|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(2),
	datad => VCC,
	cin => \my_calculator|Add4~3\,
	combout => \my_calculator|Add4~4_combout\,
	cout => \my_calculator|Add4~5\);

-- Location: LCCOMB_X17_Y21_N6
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

-- Location: LCCOMB_X17_Y21_N8
\my_calculator|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add4~8_combout\ = (\my_calculator|sum\(4) & (\my_calculator|Add4~7\ $ (GND))) # (!\my_calculator|sum\(4) & (!\my_calculator|Add4~7\ & VCC))
-- \my_calculator|Add4~9\ = CARRY((\my_calculator|sum\(4) & !\my_calculator|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(4),
	datad => VCC,
	cin => \my_calculator|Add4~7\,
	combout => \my_calculator|Add4~8_combout\,
	cout => \my_calculator|Add4~9\);

-- Location: LCCOMB_X16_Y18_N6
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

-- Location: LCCOMB_X16_Y22_N2
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

-- Location: LCCOMB_X16_Y18_N24
\my_calculator|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux4~1_combout\ = (\my_FSM|state\(2)) # ((\my_FSM|state\(0) & \my_FSM|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(0),
	datac => \my_FSM|state\(2),
	datad => \my_FSM|state\(1),
	combout => \my_calculator|Mux4~1_combout\);

-- Location: LCCOMB_X16_Y21_N10
\my_calculator|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add1~0_combout\ = \my_calculator|sum\(1) $ (VCC)
-- \my_calculator|Add1~1\ = CARRY(\my_calculator|sum\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(1),
	datad => VCC,
	combout => \my_calculator|Add1~0_combout\,
	cout => \my_calculator|Add1~1\);

-- Location: LCCOMB_X15_Y22_N4
\my_calculator|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux12~0_combout\ = (\my_FSM|state\(0)) # (\my_calculator|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_FSM|state\(0),
	datad => \my_calculator|Add1~0_combout\,
	combout => \my_calculator|Mux12~0_combout\);

-- Location: LCCOMB_X15_Y22_N0
\my_calculator|Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux12~1_combout\ = (!\my_FSM|state\(2) & ((\my_FSM|state\(1) & ((\my_calculator|Mux12~0_combout\))) # (!\my_FSM|state\(1) & (\my_calculator|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Add0~2_combout\,
	datab => \my_calculator|Mux12~0_combout\,
	datac => \my_FSM|state\(2),
	datad => \my_FSM|state\(1),
	combout => \my_calculator|Mux12~1_combout\);

-- Location: LCCOMB_X16_Y22_N22
\my_calculator|Mux12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux12~2_combout\ = (\my_calculator|Mux4~1_combout\ & ((\my_calculator|Mux12~1_combout\ & (\my_calculator|Add2~0_combout\)) # (!\my_calculator|Mux12~1_combout\ & ((\my_calculator|Add3~2_combout\))))) # (!\my_calculator|Mux4~1_combout\ & 
-- (((\my_calculator|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Add2~0_combout\,
	datab => \my_calculator|Add3~2_combout\,
	datac => \my_calculator|Mux4~1_combout\,
	datad => \my_calculator|Mux12~1_combout\,
	combout => \my_calculator|Mux12~2_combout\);

-- Location: LCCOMB_X16_Y22_N26
\my_calculator|Mux12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux12~3_combout\ = (\my_FSM|state\(0) & ((\my_FSM|state\(2) & ((\my_calculator|Add4~2_combout\))) # (!\my_FSM|state\(2) & (\my_calculator|Mux12~2_combout\)))) # (!\my_FSM|state\(0) & (((\my_calculator|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(0),
	datab => \my_FSM|state\(2),
	datac => \my_calculator|Mux12~2_combout\,
	datad => \my_calculator|Add4~2_combout\,
	combout => \my_calculator|Mux12~3_combout\);

-- Location: LCCOMB_X16_Y22_N30
\my_calculator|sum[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|sum\(1) = (!\reset~input_o\ & ((\my_calculator|Mux0~0_combout\ & ((\my_calculator|Mux12~3_combout\))) # (!\my_calculator|Mux0~0_combout\ & (\my_calculator|sum\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \my_calculator|sum\(1),
	datac => \my_calculator|Mux12~3_combout\,
	datad => \my_calculator|Mux0~0_combout\,
	combout => \my_calculator|sum\(1));

-- Location: LCCOMB_X16_Y20_N8
\my_calculator|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add2~2_combout\ = (\my_calculator|sum\(2) & (!\my_calculator|Add2~1\)) # (!\my_calculator|sum\(2) & ((\my_calculator|Add2~1\) # (GND)))
-- \my_calculator|Add2~3\ = CARRY((!\my_calculator|Add2~1\) # (!\my_calculator|sum\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(2),
	datad => VCC,
	cin => \my_calculator|Add2~1\,
	combout => \my_calculator|Add2~2_combout\,
	cout => \my_calculator|Add2~3\);

-- Location: LCCOMB_X15_Y22_N12
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

-- Location: LCCOMB_X15_Y20_N22
\my_calculator|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux11~0_combout\ = (\my_calculator|Mux4~1_combout\ & ((\my_calculator|Add3~4_combout\) # ((\my_calculator|Mux4~0_combout\)))) # (!\my_calculator|Mux4~1_combout\ & (((\my_calculator|Add0~4_combout\ & !\my_calculator|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Add3~4_combout\,
	datab => \my_calculator|Add0~4_combout\,
	datac => \my_calculator|Mux4~1_combout\,
	datad => \my_calculator|Mux4~0_combout\,
	combout => \my_calculator|Mux11~0_combout\);

-- Location: LCCOMB_X16_Y20_N28
\my_calculator|Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux11~1_combout\ = (\my_calculator|Mux4~0_combout\ & ((\my_calculator|Mux11~0_combout\ & ((\my_calculator|Add2~2_combout\))) # (!\my_calculator|Mux11~0_combout\ & (\my_calculator|Add1~2_combout\)))) # (!\my_calculator|Mux4~0_combout\ & 
-- (((\my_calculator|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Add1~2_combout\,
	datab => \my_calculator|Mux4~0_combout\,
	datac => \my_calculator|Add2~2_combout\,
	datad => \my_calculator|Mux11~0_combout\,
	combout => \my_calculator|Mux11~1_combout\);

-- Location: LCCOMB_X16_Y20_N26
\my_calculator|Mux11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux11~2_combout\ = (\my_FSM|state\(0) & ((\my_FSM|state\(2) & (\my_calculator|Add4~4_combout\)) # (!\my_FSM|state\(2) & ((\my_calculator|Mux11~1_combout\))))) # (!\my_FSM|state\(0) & (((\my_calculator|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(0),
	datab => \my_FSM|state\(2),
	datac => \my_calculator|Add4~4_combout\,
	datad => \my_calculator|Mux11~1_combout\,
	combout => \my_calculator|Mux11~2_combout\);

-- Location: LCCOMB_X16_Y20_N0
\my_calculator|sum[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|sum\(2) = (!\reset~input_o\ & ((\my_calculator|Mux0~0_combout\ & ((\my_calculator|Mux11~2_combout\))) # (!\my_calculator|Mux0~0_combout\ & (\my_calculator|sum\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \my_calculator|sum\(2),
	datac => \my_calculator|Mux11~2_combout\,
	datad => \my_calculator|Mux0~0_combout\,
	combout => \my_calculator|sum\(2));

-- Location: LCCOMB_X16_Y20_N10
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

-- Location: LCCOMB_X16_Y21_N14
\my_calculator|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add1~4_combout\ = (\my_calculator|sum\(3) & ((GND) # (!\my_calculator|Add1~3\))) # (!\my_calculator|sum\(3) & (\my_calculator|Add1~3\ $ (GND)))
-- \my_calculator|Add1~5\ = CARRY((\my_calculator|sum\(3)) # (!\my_calculator|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(3),
	datad => VCC,
	cin => \my_calculator|Add1~3\,
	combout => \my_calculator|Add1~4_combout\,
	cout => \my_calculator|Add1~5\);

-- Location: LCCOMB_X15_Y21_N0
\my_calculator|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux10~0_combout\ = (\my_FSM|state\(0)) # (\my_calculator|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(0),
	datac => \my_calculator|Add1~4_combout\,
	combout => \my_calculator|Mux10~0_combout\);

-- Location: LCCOMB_X15_Y22_N2
\my_calculator|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux10~1_combout\ = (!\my_FSM|state\(2) & ((\my_FSM|state\(1) & ((\my_calculator|Mux10~0_combout\))) # (!\my_FSM|state\(1) & (\my_calculator|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Add0~6_combout\,
	datab => \my_FSM|state\(1),
	datac => \my_FSM|state\(2),
	datad => \my_calculator|Mux10~0_combout\,
	combout => \my_calculator|Mux10~1_combout\);

-- Location: LCCOMB_X16_Y22_N20
\my_calculator|Mux10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux10~2_combout\ = (\my_calculator|Mux4~1_combout\ & ((\my_calculator|Mux10~1_combout\ & ((\my_calculator|Add2~4_combout\))) # (!\my_calculator|Mux10~1_combout\ & (\my_calculator|Add3~6_combout\)))) # (!\my_calculator|Mux4~1_combout\ & 
-- (((\my_calculator|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Add3~6_combout\,
	datab => \my_calculator|Add2~4_combout\,
	datac => \my_calculator|Mux4~1_combout\,
	datad => \my_calculator|Mux10~1_combout\,
	combout => \my_calculator|Mux10~2_combout\);

-- Location: LCCOMB_X16_Y22_N24
\my_calculator|Mux10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux10~3_combout\ = (\my_FSM|state\(0) & ((\my_FSM|state\(2) & (\my_calculator|Add4~6_combout\)) # (!\my_FSM|state\(2) & ((\my_calculator|Mux10~2_combout\))))) # (!\my_FSM|state\(0) & (((\my_calculator|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(0),
	datab => \my_FSM|state\(2),
	datac => \my_calculator|Add4~6_combout\,
	datad => \my_calculator|Mux10~2_combout\,
	combout => \my_calculator|Mux10~3_combout\);

-- Location: LCCOMB_X16_Y22_N28
\my_calculator|sum[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|sum\(3) = (!\reset~input_o\ & ((\my_calculator|Mux0~0_combout\ & ((\my_calculator|Mux10~3_combout\))) # (!\my_calculator|Mux0~0_combout\ & (\my_calculator|sum\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \my_calculator|sum\(3),
	datac => \my_calculator|Mux10~3_combout\,
	datad => \my_calculator|Mux0~0_combout\,
	combout => \my_calculator|sum\(3));

-- Location: LCCOMB_X16_Y21_N16
\my_calculator|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add1~6_combout\ = (\my_calculator|sum\(4) & (!\my_calculator|Add1~5\)) # (!\my_calculator|sum\(4) & ((\my_calculator|Add1~5\) # (GND)))
-- \my_calculator|Add1~7\ = CARRY((!\my_calculator|Add1~5\) # (!\my_calculator|sum\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(4),
	datad => VCC,
	cin => \my_calculator|Add1~5\,
	combout => \my_calculator|Add1~6_combout\,
	cout => \my_calculator|Add1~7\);

-- Location: LCCOMB_X16_Y20_N12
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

-- Location: LCCOMB_X16_Y18_N8
\my_calculator|Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux9~1_combout\ = (\my_calculator|Mux9~0_combout\ & (((\my_calculator|Add2~6_combout\)) # (!\my_calculator|Mux4~0_combout\))) # (!\my_calculator|Mux9~0_combout\ & (\my_calculator|Mux4~0_combout\ & (\my_calculator|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Mux9~0_combout\,
	datab => \my_calculator|Mux4~0_combout\,
	datac => \my_calculator|Add1~6_combout\,
	datad => \my_calculator|Add2~6_combout\,
	combout => \my_calculator|Mux9~1_combout\);

-- Location: LCCOMB_X16_Y18_N0
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

-- Location: LCCOMB_X16_Y18_N16
\my_calculator|sum[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|sum\(4) = (!\reset~input_o\ & ((\my_calculator|Mux0~0_combout\ & (\my_calculator|Mux9~2_combout\)) # (!\my_calculator|Mux0~0_combout\ & ((\my_calculator|sum\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \my_calculator|Mux9~2_combout\,
	datac => \my_calculator|Mux0~0_combout\,
	datad => \my_calculator|sum\(4),
	combout => \my_calculator|sum\(4));

-- Location: LCCOMB_X15_Y22_N30
\my_calculator|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|LessThan1~0_combout\ = ((!\my_calculator|sum\(0) & (!\my_calculator|sum\(1) & !\my_calculator|sum\(2)))) # (!\my_calculator|sum\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(0),
	datab => \my_calculator|sum\(4),
	datac => \my_calculator|sum\(1),
	datad => \my_calculator|sum\(2),
	combout => \my_calculator|LessThan1~0_combout\);

-- Location: LCCOMB_X15_Y21_N4
\my_calculator|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|LessThan1~1_combout\ = (\my_calculator|LessThan1~0_combout\) # (!\my_calculator|sum\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|LessThan1~0_combout\,
	datad => \my_calculator|sum\(3),
	combout => \my_calculator|LessThan1~1_combout\);

-- Location: LCCOMB_X16_Y18_N2
\my_calculator|sum[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|sum\(5) = (!\reset~input_o\ & ((\my_calculator|Mux0~0_combout\ & (\my_calculator|Mux8~2_combout\)) # (!\my_calculator|Mux0~0_combout\ & ((\my_calculator|sum\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Mux8~2_combout\,
	datab => \my_calculator|sum\(5),
	datac => \my_calculator|Mux0~0_combout\,
	datad => \reset~input_o\,
	combout => \my_calculator|sum\(5));

-- Location: LCCOMB_X16_Y20_N16
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

-- Location: LCCOMB_X16_Y21_N20
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

-- Location: LCCOMB_X16_Y18_N22
\my_calculator|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux7~1_combout\ = (\my_calculator|Mux7~0_combout\ & (((\my_calculator|Add2~10_combout\)) # (!\my_calculator|Mux4~0_combout\))) # (!\my_calculator|Mux7~0_combout\ & (\my_calculator|Mux4~0_combout\ & ((\my_calculator|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Mux7~0_combout\,
	datab => \my_calculator|Mux4~0_combout\,
	datac => \my_calculator|Add2~10_combout\,
	datad => \my_calculator|Add1~10_combout\,
	combout => \my_calculator|Mux7~1_combout\);

-- Location: LCCOMB_X16_Y18_N18
\my_calculator|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux7~2_combout\ = (\my_FSM|state\(0) & ((\my_FSM|state\(2) & (\my_calculator|Add4~12_combout\)) # (!\my_FSM|state\(2) & ((\my_calculator|Mux7~1_combout\))))) # (!\my_FSM|state\(0) & (((\my_calculator|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Add4~12_combout\,
	datab => \my_FSM|state\(0),
	datac => \my_FSM|state\(2),
	datad => \my_calculator|Mux7~1_combout\,
	combout => \my_calculator|Mux7~2_combout\);

-- Location: LCCOMB_X16_Y18_N20
\my_calculator|sum[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|sum\(6) = (!\reset~input_o\ & ((\my_calculator|Mux0~0_combout\ & (\my_calculator|Mux7~2_combout\)) # (!\my_calculator|Mux0~0_combout\ & ((\my_calculator|sum\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \my_calculator|Mux7~2_combout\,
	datac => \my_calculator|Mux0~0_combout\,
	datad => \my_calculator|sum\(6),
	combout => \my_calculator|sum\(6));

-- Location: LCCOMB_X15_Y21_N8
\my_calculator|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux14~0_combout\ = (!\my_calculator|sum\(7) & (!\my_calculator|sum\(5) & (!\my_calculator|sum\(8) & !\my_calculator|sum\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(7),
	datab => \my_calculator|sum\(5),
	datac => \my_calculator|sum\(8),
	datad => \my_calculator|sum\(6),
	combout => \my_calculator|Mux14~0_combout\);

-- Location: LCCOMB_X14_Y22_N30
\my_calculator|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|LessThan0~0_combout\ = (((!\my_calculator|sum\(0)) # (!\my_calculator|sum\(1))) # (!\my_calculator|sum\(3))) # (!\my_calculator|sum\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(2),
	datab => \my_calculator|sum\(3),
	datac => \my_calculator|sum\(1),
	datad => \my_calculator|sum\(0),
	combout => \my_calculator|LessThan0~0_combout\);

-- Location: LCCOMB_X15_Y21_N20
\my_calculator|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|LessThan0~1_combout\ = (!\my_calculator|sum\(4) & \my_calculator|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(4),
	datad => \my_calculator|LessThan0~0_combout\,
	combout => \my_calculator|LessThan0~1_combout\);

-- Location: LCCOMB_X15_Y21_N28
\my_calculator|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux3~0_combout\ = ((\my_calculator|sum\(9)) # ((!\my_FSM|state\(0) & !\my_calculator|LessThan0~1_combout\))) # (!\my_calculator|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(0),
	datab => \my_calculator|Mux14~0_combout\,
	datac => \my_calculator|sum\(9),
	datad => \my_calculator|LessThan0~1_combout\,
	combout => \my_calculator|Mux3~0_combout\);

-- Location: LCCOMB_X15_Y21_N2
\my_calculator|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux3~1_combout\ = (\my_FSM|state\(2) & ((\my_calculator|Mux3~0_combout\) # ((\my_FSM|state\(0) & !\my_calculator|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(0),
	datab => \my_calculator|LessThan1~1_combout\,
	datac => \my_FSM|state\(2),
	datad => \my_calculator|Mux3~0_combout\,
	combout => \my_calculator|Mux3~1_combout\);

-- Location: LCCOMB_X15_Y21_N6
\my_calculator|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux0~0_combout\ = (\my_FSM|state\(1) & (((!\my_FSM|state\(2))))) # (!\my_FSM|state\(1) & ((\my_calculator|Mux3~1_combout\) # ((\my_FSM|state\(0) & !\my_FSM|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(0),
	datab => \my_FSM|state\(2),
	datac => \my_FSM|state\(1),
	datad => \my_calculator|Mux3~1_combout\,
	combout => \my_calculator|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y21_N14
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

-- Location: LCCOMB_X15_Y22_N22
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

-- Location: LCCOMB_X16_Y22_N14
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

-- Location: LCCOMB_X15_Y21_N10
\my_calculator|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux6~0_combout\ = (\my_calculator|Mux4~0_combout\ & ((\my_calculator|Add2~12_combout\) # ((!\my_calculator|Mux4~1_combout\)))) # (!\my_calculator|Mux4~0_combout\ & (((\my_calculator|Add3~14_combout\ & \my_calculator|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Add2~12_combout\,
	datab => \my_calculator|Add3~14_combout\,
	datac => \my_calculator|Mux4~0_combout\,
	datad => \my_calculator|Mux4~1_combout\,
	combout => \my_calculator|Mux6~0_combout\);

-- Location: LCCOMB_X16_Y21_N28
\my_calculator|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux6~1_combout\ = (\my_calculator|Mux4~1_combout\ & (((\my_calculator|Mux6~0_combout\)))) # (!\my_calculator|Mux4~1_combout\ & ((\my_calculator|Mux6~0_combout\ & (\my_calculator|Add1~12_combout\)) # (!\my_calculator|Mux6~0_combout\ & 
-- ((\my_calculator|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Add1~12_combout\,
	datab => \my_calculator|Mux4~1_combout\,
	datac => \my_calculator|Add0~14_combout\,
	datad => \my_calculator|Mux6~0_combout\,
	combout => \my_calculator|Mux6~1_combout\);

-- Location: LCCOMB_X16_Y21_N0
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

-- Location: LCCOMB_X16_Y21_N4
\my_calculator|sum[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|sum\(7) = (!\reset~input_o\ & ((\my_calculator|Mux0~0_combout\ & ((\my_calculator|Mux6~2_combout\))) # (!\my_calculator|Mux0~0_combout\ & (\my_calculator|sum\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \my_calculator|sum\(7),
	datac => \my_calculator|Mux0~0_combout\,
	datad => \my_calculator|Mux6~2_combout\,
	combout => \my_calculator|sum\(7));

-- Location: LCCOMB_X17_Y21_N16
\my_calculator|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add4~16_combout\ = (\my_calculator|sum\(8) & ((GND) # (!\my_calculator|Add4~15\))) # (!\my_calculator|sum\(8) & (\my_calculator|Add4~15\ $ (GND)))
-- \my_calculator|Add4~17\ = CARRY((\my_calculator|sum\(8)) # (!\my_calculator|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(8),
	datad => VCC,
	cin => \my_calculator|Add4~15\,
	combout => \my_calculator|Add4~16_combout\,
	cout => \my_calculator|Add4~17\);

-- Location: LCCOMB_X15_Y22_N24
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

-- Location: LCCOMB_X16_Y20_N4
\my_calculator|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux5~0_combout\ = (\my_calculator|Mux4~1_combout\ & ((\my_calculator|Mux4~0_combout\) # ((\my_calculator|Add3~16_combout\)))) # (!\my_calculator|Mux4~1_combout\ & (!\my_calculator|Mux4~0_combout\ & (\my_calculator|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Mux4~1_combout\,
	datab => \my_calculator|Mux4~0_combout\,
	datac => \my_calculator|Add0~16_combout\,
	datad => \my_calculator|Add3~16_combout\,
	combout => \my_calculator|Mux5~0_combout\);

-- Location: LCCOMB_X16_Y20_N20
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

-- Location: LCCOMB_X16_Y20_N24
\my_calculator|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux5~1_combout\ = (\my_calculator|Mux4~0_combout\ & ((\my_calculator|Mux5~0_combout\ & ((\my_calculator|Add2~14_combout\))) # (!\my_calculator|Mux5~0_combout\ & (\my_calculator|Add1~14_combout\)))) # (!\my_calculator|Mux4~0_combout\ & 
-- (((\my_calculator|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Mux4~0_combout\,
	datab => \my_calculator|Add1~14_combout\,
	datac => \my_calculator|Mux5~0_combout\,
	datad => \my_calculator|Add2~14_combout\,
	combout => \my_calculator|Mux5~1_combout\);

-- Location: LCCOMB_X16_Y20_N30
\my_calculator|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux5~2_combout\ = (\my_FSM|state\(0) & ((\my_FSM|state\(2) & (\my_calculator|Add4~16_combout\)) # (!\my_FSM|state\(2) & ((\my_calculator|Mux5~1_combout\))))) # (!\my_FSM|state\(0) & (((\my_calculator|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(0),
	datab => \my_calculator|Add4~16_combout\,
	datac => \my_FSM|state\(2),
	datad => \my_calculator|Mux5~1_combout\,
	combout => \my_calculator|Mux5~2_combout\);

-- Location: LCCOMB_X16_Y20_N2
\my_calculator|sum[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|sum\(8) = (!\reset~input_o\ & ((\my_calculator|Mux0~0_combout\ & ((\my_calculator|Mux5~2_combout\))) # (!\my_calculator|Mux0~0_combout\ & (\my_calculator|sum\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \my_calculator|sum\(8),
	datac => \my_calculator|Mux5~2_combout\,
	datad => \my_calculator|Mux0~0_combout\,
	combout => \my_calculator|sum\(8));

-- Location: LCCOMB_X17_Y21_N18
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

-- Location: LCCOMB_X15_Y22_N26
\my_calculator|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add0~18_combout\ = \my_calculator|Add0~17\ $ (\my_calculator|sum\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \my_calculator|sum\(9),
	cin => \my_calculator|Add0~17\,
	combout => \my_calculator|Add0~18_combout\);

-- Location: LCCOMB_X16_Y20_N22
\my_calculator|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Add2~16_combout\ = \my_calculator|sum\(9) $ (!\my_calculator|Add2~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(9),
	cin => \my_calculator|Add2~15\,
	combout => \my_calculator|Add2~16_combout\);

-- Location: LCCOMB_X16_Y21_N2
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

-- Location: LCCOMB_X16_Y21_N6
\my_calculator|Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux4~3_combout\ = (\my_calculator|Mux4~0_combout\ & (((\my_calculator|Mux4~2_combout\)))) # (!\my_calculator|Mux4~0_combout\ & ((\my_calculator|Mux4~2_combout\ & (\my_calculator|Add3~18_combout\)) # (!\my_calculator|Mux4~2_combout\ & 
-- ((\my_calculator|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Add3~18_combout\,
	datab => \my_calculator|Mux4~0_combout\,
	datac => \my_calculator|Add0~18_combout\,
	datad => \my_calculator|Mux4~2_combout\,
	combout => \my_calculator|Mux4~3_combout\);

-- Location: LCCOMB_X16_Y21_N8
\my_calculator|Mux4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux4~4_combout\ = (\my_FSM|state\(2) & ((\my_FSM|state\(0) & (\my_calculator|Add4~18_combout\)) # (!\my_FSM|state\(0) & ((\my_calculator|Mux4~3_combout\))))) # (!\my_FSM|state\(2) & (((\my_calculator|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(2),
	datab => \my_FSM|state\(0),
	datac => \my_calculator|Add4~18_combout\,
	datad => \my_calculator|Mux4~3_combout\,
	combout => \my_calculator|Mux4~4_combout\);

-- Location: LCCOMB_X16_Y21_N30
\my_calculator|sum[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|sum\(9) = (!\reset~input_o\ & ((\my_calculator|Mux0~0_combout\ & ((\my_calculator|Mux4~4_combout\))) # (!\my_calculator|Mux0~0_combout\ & (\my_calculator|sum\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(9),
	datab => \reset~input_o\,
	datac => \my_calculator|Mux4~4_combout\,
	datad => \my_calculator|Mux0~0_combout\,
	combout => \my_calculator|sum\(9));

-- Location: LCCOMB_X15_Y21_N18
\my_calculator|Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux14~1_combout\ = (\my_calculator|Mux14~0_combout\ & !\my_calculator|sum\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|Mux14~0_combout\,
	datad => \my_calculator|sum\(9),
	combout => \my_calculator|Mux14~1_combout\);

-- Location: LCCOMB_X15_Y21_N30
\my_calculator|Mux14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux14~2_combout\ = (\my_FSM|state\(0) & (((\my_calculator|LessThan1~1_combout\)) # (!\my_FSM|state\(2)))) # (!\my_FSM|state\(0) & (\my_FSM|state\(2) & ((\my_calculator|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(0),
	datab => \my_FSM|state\(2),
	datac => \my_calculator|LessThan1~1_combout\,
	datad => \my_calculator|LessThan0~1_combout\,
	combout => \my_calculator|Mux14~2_combout\);

-- Location: LCCOMB_X15_Y21_N14
\my_calculator|Mux14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux14~3_combout\ = (\my_calculator|Mux14~2_combout\ & (!\my_FSM|state\(1) & ((\my_calculator|Mux14~1_combout\) # (!\my_FSM|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_FSM|state\(2),
	datab => \my_calculator|Mux14~1_combout\,
	datac => \my_calculator|Mux14~2_combout\,
	datad => \my_FSM|state\(1),
	combout => \my_calculator|Mux14~3_combout\);

-- Location: LCCOMB_X15_Y18_N12
\my_calculator|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux2~0_combout\ = (\my_FSM|state\(2) & ((\my_FSM|state\(1)))) # (!\my_FSM|state\(2) & (!\my_FSM|state\(0) & !\my_FSM|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_FSM|state\(2),
	datac => \my_FSM|state\(0),
	datad => \my_FSM|state\(1),
	combout => \my_calculator|Mux2~0_combout\);

-- Location: CLKCTRL_G13
\my_calculator|Mux2~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \my_calculator|Mux2~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \my_calculator|Mux2~0clkctrl_outclk\);

-- Location: LCCOMB_X15_Y21_N16
\my_calculator|error\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|error~combout\ = (!\reset~input_o\ & ((GLOBAL(\my_calculator|Mux2~0clkctrl_outclk\) & (\my_calculator|error~combout\)) # (!GLOBAL(\my_calculator|Mux2~0clkctrl_outclk\) & ((\my_calculator|Mux14~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \my_calculator|error~combout\,
	datac => \my_calculator|Mux14~3_combout\,
	datad => \my_calculator|Mux2~0clkctrl_outclk\,
	combout => \my_calculator|error~combout\);

-- Location: LCCOMB_X15_Y21_N22
\my_calculator|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|Mux3~2_combout\ = (!\my_FSM|state\(1) & \my_calculator|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_FSM|state\(1),
	datad => \my_calculator|Mux3~1_combout\,
	combout => \my_calculator|Mux3~2_combout\);

-- Location: LCCOMB_X15_Y21_N12
\my_calculator|success\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_calculator|success~combout\ = (!\reset~input_o\ & ((GLOBAL(\my_calculator|Mux2~0clkctrl_outclk\) & (\my_calculator|success~combout\)) # (!GLOBAL(\my_calculator|Mux2~0clkctrl_outclk\) & ((\my_calculator|Mux3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|success~combout\,
	datab => \reset~input_o\,
	datac => \my_calculator|Mux3~2_combout\,
	datad => \my_calculator|Mux2~0clkctrl_outclk\,
	combout => \my_calculator|success~combout\);

-- Location: LCCOMB_X15_Y25_N16
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

-- Location: LCCOMB_X15_Y25_N8
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[18]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\ = (\my_calculator|sum\(9) & \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(9),
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\);

-- Location: LCCOMB_X15_Y25_N20
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\ = (\my_calculator|sum\(8) & \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(8),
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\);

-- Location: LCCOMB_X15_Y25_N4
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\ = (\my_calculator|sum\(7) & \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(7),
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\);

-- Location: LCCOMB_X15_Y25_N0
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

-- Location: LCCOMB_X15_Y25_N22
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\) # 
-- (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\)))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X15_Y25_N24
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\)))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\ & (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\)))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\ & (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X15_Y25_N26
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

-- Location: LCCOMB_X15_Y25_N28
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

-- Location: LCCOMB_X15_Y25_N30
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

-- Location: LCCOMB_X14_Y25_N8
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[23]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ = (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X12_Y25_N20
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ = (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X12_Y25_N28
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\ = (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\);

-- Location: LCCOMB_X12_Y25_N16
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\ = (\my_calculator|sum\(5) & !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(5),
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\);

-- Location: LCCOMB_X12_Y25_N2
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\)))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\)))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X12_Y25_N4
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

-- Location: LCCOMB_X12_Y25_N6
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

-- Location: LCCOMB_X12_Y25_N8
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

-- Location: LCCOMB_X11_Y25_N6
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

-- Location: LCCOMB_X11_Y25_N8
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

-- Location: LCCOMB_X11_Y25_N10
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

-- Location: LCCOMB_X11_Y25_N12
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

-- Location: LCCOMB_X11_Y25_N14
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

-- Location: LCCOMB_X11_Y25_N22
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[31]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[31]~41_combout\ = (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[31]~41_combout\);

-- Location: LCCOMB_X11_Y25_N0
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[28]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\ = (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\);

-- Location: LCCOMB_X12_Y25_N12
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\my_calculator|sum\(6))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \my_calculator|sum\(6),
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\);

-- Location: LCCOMB_X11_Y26_N4
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[26]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\);

-- Location: LCCOMB_X11_Y26_N24
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[25]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\ = (\my_calculator|sum\(4) & !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(4),
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\);

-- Location: LCCOMB_X11_Y26_N12
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

-- Location: LCCOMB_X11_Y26_N14
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

-- Location: LCCOMB_X11_Y26_N18
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

-- Location: LCCOMB_X11_Y26_N20
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

-- Location: LCCOMB_X10_Y25_N0
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ = !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\);

-- Location: LCCOMB_X10_Y25_N14
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~43_combout\ = (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~43_combout\);

-- Location: LCCOMB_X10_Y25_N20
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~42_combout\) # 
-- (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~43_combout\)))
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~42_combout\) # (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~42_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[30]~43_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X10_Y25_N22
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

-- Location: LCCOMB_X11_Y25_N26
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[33]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[33]~37_combout\ = (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[33]~37_combout\);

-- Location: LCCOMB_X11_Y25_N28
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[32]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[32]~38_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[32]~38_combout\);

-- Location: LCCOMB_X10_Y25_N26
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

-- Location: LCCOMB_X10_Y25_N28
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

-- Location: LCCOMB_X11_Y25_N30
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[38]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[38]~56_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # 
-- (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[38]~56_combout\);

-- Location: LCCOMB_X11_Y16_N4
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~45_combout\ = (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~45_combout\);

-- Location: LCCOMB_X11_Y16_N2
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

-- Location: LCCOMB_X11_Y26_N10
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[33]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[33]~95_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\) 
-- # ((!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[33]~95_combout\);

-- Location: LCCOMB_X11_Y24_N8
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\ = (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\);

-- Location: LCCOMB_X11_Y24_N4
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\ = (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\);

-- Location: LCCOMB_X11_Y24_N28
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\ = (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \my_calculator|sum\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \my_calculator|sum\(3),
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\);

-- Location: LCCOMB_X11_Y24_N16
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\) # 
-- (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\)))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X11_Y24_N18
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & 
-- (((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\)))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & 
-- (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\ & (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\)))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\ & (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X11_Y24_N20
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- (((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\)))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ 
-- & ((((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\)))))
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- ((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\) # (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X11_Y24_N22
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

-- Location: LCCOMB_X11_Y24_N24
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

-- Location: LCCOMB_X11_Y16_N8
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

-- Location: LCCOMB_X11_Y16_N10
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

-- Location: LCCOMB_X11_Y16_N16
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[38]~44_combout\ & 
-- (!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[38]~56_combout\ & !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[38]~44_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[38]~56_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X11_Y16_N18
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

-- Location: LCCOMB_X11_Y16_N28
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[43]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[43]~54_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~57_combout\) 
-- # ((\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[37]~57_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[43]~54_combout\);

-- Location: LCCOMB_X11_Y16_N26
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~55_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\) 
-- # ((\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~55_combout\);

-- Location: LCCOMB_X11_Y10_N0
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~51_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & 
-- !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~51_combout\);

-- Location: LCCOMB_X11_Y24_N14
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[38]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[38]~82_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[38]~82_combout\);

-- Location: LCCOMB_X11_Y23_N28
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\ = (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\);

-- Location: LCCOMB_X11_Y23_N0
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[36]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & 
-- !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\);

-- Location: LCCOMB_X11_Y23_N4
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[35]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\ = (\my_calculator|sum\(2) & !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(2),
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\);

-- Location: LCCOMB_X11_Y23_N22
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

-- Location: LCCOMB_X11_Y23_N24
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

-- Location: LCCOMB_X11_Y10_N4
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

-- Location: LCCOMB_X11_Y10_N24
\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[0]~10_combout\ & 
-- !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[0]~10_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\);

-- Location: LCCOMB_X11_Y10_N12
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~52_combout\) # 
-- (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\)))
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~52_combout\) # (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~52_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X11_Y10_N14
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & 
-- (((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~59_combout\) # (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~51_combout\)))) # (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & 
-- (!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~59_combout\ & (!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~51_combout\)))
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~59_combout\ & (!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~51_combout\ & 
-- !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~59_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~51_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X11_Y10_N16
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & 
-- (((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~50_combout\) # (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~55_combout\)))) # (!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & 
-- ((((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~50_combout\) # (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~55_combout\)))))
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~50_combout\) 
-- # (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~50_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~55_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X11_Y10_N18
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[43]~49_combout\ & 
-- (!\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[43]~54_combout\ & !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[43]~49_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[43]~54_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	cout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X11_Y10_N20
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X9_Y10_N28
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

-- Location: FF_X9_Y10_N29
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

-- Location: LCCOMB_X9_Y10_N4
\my_segtranslator|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_segtranslator|Decoder0~0_combout\ = (!\my_counter|wordselector\(1) & \my_counter|wordselector\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_counter|wordselector\(1),
	datac => \my_counter|wordselector\(0),
	combout => \my_segtranslator|Decoder0~0_combout\);

-- Location: LCCOMB_X11_Y10_N28
\my_gettempnumber|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux0~0_combout\ = (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\my_segtranslator|Decoder0~0_combout\ & ((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~50_combout\) # 
-- (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~50_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \my_segtranslator|Decoder0~0_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[42]~55_combout\,
	combout => \my_gettempnumber|Mux0~0_combout\);

-- Location: LCCOMB_X9_Y10_N2
\my_gettempnumber|Mux3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux3~8_combout\ = (!\my_counter|wordselector\(1) & (\my_counter|wordselector\(0) & !\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_counter|wordselector\(1),
	datac => \my_counter|wordselector\(0),
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mux3~8_combout\);

-- Location: LCCOMB_X11_Y10_N2
\my_gettempnumber|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux0~4_combout\ = (\my_gettempnumber|Mux0~3_combout\) # ((\my_gettempnumber|Mux0~0_combout\) # ((\my_gettempnumber|Mux3~8_combout\ & \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mux0~3_combout\,
	datab => \my_gettempnumber|Mux0~0_combout\,
	datac => \my_gettempnumber|Mux3~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	combout => \my_gettempnumber|Mux0~4_combout\);

-- Location: LCCOMB_X11_Y10_N8
\my_gettempnumber|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux1~3_combout\ = (\my_segtranslator|Decoder0~0_combout\ & (\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~59_combout\) # 
-- (\my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~59_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|StageOut[41]~51_combout\,
	datac => \my_segtranslator|Decoder0~0_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mux1~3_combout\);

-- Location: LCCOMB_X11_Y10_N22
\my_gettempnumber|Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux1~4_combout\ = (\my_gettempnumber|Mux1~2_combout\) # ((\my_gettempnumber|Mux1~3_combout\) # ((\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & \my_gettempnumber|Mux3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mux1~2_combout\,
	datab => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datac => \my_gettempnumber|Mux3~8_combout\,
	datad => \my_gettempnumber|Mux1~3_combout\,
	combout => \my_gettempnumber|Mux1~4_combout\);

-- Location: LCCOMB_X11_Y24_N2
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[43]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[43]~97_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\) 
-- # ((!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[43]~97_combout\);

-- Location: LCCOMB_X11_Y23_N12
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[42]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[42]~103_combout\ = (\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\my_calculator|sum\(3))) # (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(3),
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[42]~103_combout\);

-- Location: LCCOMB_X10_Y23_N18
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

-- Location: LCCOMB_X10_Y23_N24
\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[40]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\ = (\my_calculator|sum\(1) & \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(1),
	datad => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\);

-- Location: LCCOMB_X10_Y23_N2
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ = CARRY((\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[40]~93_combout\) # 
-- (\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[40]~93_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\,
	datad => VCC,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\);

-- Location: LCCOMB_X10_Y23_N4
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[41]~91_combout\ & 
-- (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[41]~90_combout\ & !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[41]~91_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[41]~90_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\);

-- Location: LCCOMB_X10_Y23_N6
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

-- Location: LCCOMB_X10_Y23_N8
\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[43]~88_combout\ & 
-- (!\my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[43]~97_combout\ & !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[43]~88_combout\,
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|StageOut[43]~97_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\,
	cout => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X10_Y23_N10
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

-- Location: LCCOMB_X9_Y10_N16
\my_gettempnumber|Mux3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux3~7_combout\ = (!\my_counter|wordselector\(1) & (!\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\my_counter|wordselector\(0) & 
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_counter|wordselector\(1),
	datab => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \my_counter|wordselector\(0),
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mux3~7_combout\);

-- Location: LCCOMB_X9_Y10_N22
\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\ = !\my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\);

-- Location: LCCOMB_X9_Y10_N6
\my_gettempnumber|Mux3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux3~6_combout\ = (\my_gettempnumber|Mux3~5_combout\) # ((\my_gettempnumber|Mux3~7_combout\) # ((\my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\ & \my_gettempnumber|Mux3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mux3~5_combout\,
	datab => \my_gettempnumber|Mux3~7_combout\,
	datac => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\,
	datad => \my_gettempnumber|Mux3~8_combout\,
	combout => \my_gettempnumber|Mux3~6_combout\);

-- Location: LCCOMB_X9_Y10_N26
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

-- Location: FF_X9_Y10_N27
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

-- Location: LCCOMB_X15_Y19_N0
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \my_calculator|sum\(7) $ (VCC)
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\my_calculator|sum\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(7),
	datad => VCC,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X15_Y19_N6
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

-- Location: LCCOMB_X15_Y19_N16
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[18]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[18]~56_combout\ = (\my_calculator|sum\(9) & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(9),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[18]~56_combout\);

-- Location: LCCOMB_X15_Y19_N8
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~58_combout\ = (\my_calculator|sum\(8) & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(8),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~58_combout\);

-- Location: LCCOMB_X14_Y19_N20
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

-- Location: LCCOMB_X15_Y19_N18
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

-- Location: LCCOMB_X15_Y19_N22
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~63_combout\) # 
-- (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~62_combout\)))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~63_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[15]~62_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X15_Y19_N24
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

-- Location: LCCOMB_X15_Y19_N26
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~59_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~58_combout\)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~59_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~58_combout\)))))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~59_combout\) 
-- # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~59_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[17]~58_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X15_Y19_N28
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[18]~57_combout\ & 
-- (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[18]~56_combout\ & !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[18]~57_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[18]~56_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X15_Y19_N30
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

-- Location: LCCOMB_X14_Y19_N18
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[23]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[23]~64_combout\ = (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X14_Y19_N4
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~65_combout\ = (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X14_Y19_N8
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[21]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[21]~67_combout\ = (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[21]~67_combout\);

-- Location: LCCOMB_X14_Y19_N2
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~68_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \my_calculator|sum\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \my_calculator|sum\(5),
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[20]~68_combout\);

-- Location: LCCOMB_X14_Y19_N24
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

-- Location: LCCOMB_X14_Y19_N26
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~99_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~65_combout\)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~99_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~65_combout\)))))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~99_combout\) 
-- # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~99_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X14_Y19_N28
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

-- Location: LCCOMB_X14_Y19_N30
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

-- Location: LCCOMB_X10_Y22_N16
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[28]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[28]~70_combout\ = (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[28]~70_combout\);

-- Location: LCCOMB_X10_Y22_N2
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~71_combout\ = (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~71_combout\);

-- Location: LCCOMB_X10_Y22_N4
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~72_combout\ = (\my_calculator|sum\(5) & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(5),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~72_combout\);

-- Location: LCCOMB_X10_Y22_N28
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~75_combout\ = (\my_calculator|sum\(4) & !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_calculator|sum\(4),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~75_combout\);

-- Location: LCCOMB_X10_Y22_N6
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~74_combout\) # 
-- (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~75_combout\)))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~74_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[25]~75_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X10_Y22_N8
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~73_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~72_combout\)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~73_combout\ & (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~72_combout\)))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~73_combout\ & (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~72_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~73_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[26]~72_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X10_Y22_N12
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[28]~94_combout\ & 
-- (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[28]~70_combout\ & !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[28]~94_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[28]~70_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X10_Y22_N14
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

-- Location: LCCOMB_X10_Y22_N24
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~101_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\my_calculator|sum\(5)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \my_calculator|sum\(5),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~101_combout\);

-- Location: LCCOMB_X10_Y22_N22
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[33]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[33]~95_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~100_combout\) 
-- # ((!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[27]~100_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[33]~95_combout\);

-- Location: LCCOMB_X11_Y22_N16
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~79_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~79_combout\);

-- Location: LCCOMB_X11_Y22_N28
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

-- Location: LCCOMB_X11_Y22_N2
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & 
-- (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~78_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~79_combout\)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & 
-- (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~78_combout\ & (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~79_combout\)))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~78_combout\ & (!\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~79_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~78_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[31]~79_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X11_Y22_N6
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

-- Location: LCCOMB_X11_Y22_N8
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

-- Location: LCCOMB_X11_Y22_N20
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[38]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[38]~96_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~101_combout\) 
-- # ((!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[32]~101_combout\,
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[38]~96_combout\);

-- Location: LCCOMB_X11_Y22_N26
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~102_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\my_calculator|sum\(4)))) # (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \my_calculator|sum\(4),
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~102_combout\);

-- Location: LCCOMB_X11_Y19_N28
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[36]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[36]~84_combout\ = (\my_calculator|sum\(3) & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(3),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[36]~84_combout\);

-- Location: LCCOMB_X11_Y19_N20
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

-- Location: LCCOMB_X11_Y19_N0
\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\) # 
-- (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[35]~86_combout\)))
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\) # (\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[35]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[35]~86_combout\,
	datad => VCC,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X11_Y19_N6
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

-- Location: LCCOMB_X11_Y19_N8
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

-- Location: LCCOMB_X11_Y19_N24
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[43]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[43]~97_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~102_combout\) 
-- # ((!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[37]~102_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[43]~97_combout\);

-- Location: LCCOMB_X12_Y19_N28
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~91_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[42]~91_combout\);

-- Location: LCCOMB_X12_Y19_N2
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~93_combout\ = (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & 
-- !\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[41]~93_combout\);

-- Location: LCCOMB_X12_Y19_N8
\my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[40]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[40]~88_combout\ = (\my_calculator|sum\(1) & \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(1),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mod2|auto_generated|divider|divider|StageOut[40]~88_combout\);

-- Location: LCCOMB_X12_Y19_N18
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

-- Location: LCCOMB_X12_Y19_N20
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

-- Location: LCCOMB_X12_Y19_N24
\my_gettempnumber|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux2~2_combout\ = (\my_counter|wordselector\(1) & ((\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\my_calculator|sum\(1)))) # 
-- (!\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datab => \my_calculator|sum\(1),
	datac => \my_counter|wordselector\(1),
	datad => \my_gettempnumber|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \my_gettempnumber|Mux2~2_combout\);

-- Location: LCCOMB_X15_Y20_N8
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

-- Location: LCCOMB_X15_Y20_N12
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\my_calculator|sum\(7) & ((GND) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\my_calculator|sum\(7) & 
-- (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\my_calculator|sum\(7)) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(7),
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X15_Y20_N18
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

-- Location: LCCOMB_X15_Y20_N28
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[54]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\ = (\my_calculator|sum\(9) & \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(9),
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\);

-- Location: LCCOMB_X12_Y20_N4
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \my_calculator|sum\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \my_calculator|sum\(8),
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\);

-- Location: LCCOMB_X12_Y20_N24
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

-- Location: LCCOMB_X12_Y20_N0
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \my_calculator|sum\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \my_calculator|sum\(6),
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\);

-- Location: LCCOMB_X12_Y20_N20
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

-- Location: LCCOMB_X12_Y20_N28
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[49]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\ = (\my_calculator|sum\(4) & !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_calculator|sum\(4),
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\);

-- Location: LCCOMB_X12_Y20_N8
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & 
-- (((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\)))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & 
-- (!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\ & (!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\)))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\ & (!\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\ & 
-- !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X12_Y20_N10
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & 
-- ((((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\))))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ 
-- & ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\) # ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\) # (GND))))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\) # ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\) # 
-- (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X12_Y20_N12
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

-- Location: LCCOMB_X12_Y20_N14
\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & 
-- (((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\)))) # (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & 
-- ((((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\) # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\)))))
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\) 
-- # (\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\,
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\,
	datad => VCC,
	cin => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X12_Y20_N16
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

-- Location: LCCOMB_X12_Y20_N18
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

-- Location: LCCOMB_X14_Y20_N12
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[62]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[62]~66_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & 
-- !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[62]~66_combout\);

-- Location: LCCOMB_X14_Y20_N30
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\ = (\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & 
-- !\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\);

-- Location: LCCOMB_X14_Y20_N4
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\ = (!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\);

-- Location: LCCOMB_X14_Y20_N2
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

-- Location: LCCOMB_X14_Y20_N28
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

-- Location: LCCOMB_X12_Y21_N30
\my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\ = (\my_calculator|sum\(3) & \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_calculator|sum\(3),
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\);

-- Location: LCCOMB_X14_Y20_N24
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

-- Location: LCCOMB_X14_Y20_N26
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

-- Location: LCCOMB_X12_Y21_N22
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

-- Location: LCCOMB_X12_Y21_N24
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

-- Location: LCCOMB_X12_Y21_N2
\my_gettempnumber|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux2~1_combout\ = (!\my_counter|wordselector\(1) & ((\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & 
-- ((!\my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\))) # (!\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & 
-- (\my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\,
	datab => \my_gettempnumber|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	datac => \my_counter|wordselector\(1),
	datad => \my_gettempnumber|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \my_gettempnumber|Mux2~1_combout\);

-- Location: LCCOMB_X12_Y19_N30
\my_gettempnumber|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux2~3_combout\ = (!\my_counter|wordselector\(0) & ((\my_gettempnumber|Mux2~2_combout\) # (\my_gettempnumber|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_gettempnumber|Mux2~2_combout\,
	datac => \my_counter|wordselector\(0),
	datad => \my_gettempnumber|Mux2~1_combout\,
	combout => \my_gettempnumber|Mux2~3_combout\);

-- Location: LCCOMB_X11_Y10_N26
\my_gettempnumber|Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_gettempnumber|Mux2~4_combout\ = (\my_gettempnumber|Mux2~0_combout\) # ((\my_gettempnumber|Mux2~3_combout\) # ((\my_gettempnumber|Mux3~8_combout\ & \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mux2~0_combout\,
	datab => \my_gettempnumber|Mux2~3_combout\,
	datac => \my_gettempnumber|Mux3~8_combout\,
	datad => \my_gettempnumber|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	combout => \my_gettempnumber|Mux2~4_combout\);

-- Location: LCCOMB_X11_Y4_N4
\my_numbertranslator|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_numbertranslator|WideOr6~0_combout\ = (\my_gettempnumber|Mux2~4_combout\ & (\my_gettempnumber|Mux0~4_combout\)) # (!\my_gettempnumber|Mux2~4_combout\ & (\my_gettempnumber|Mux1~4_combout\ $ (((!\my_gettempnumber|Mux0~4_combout\ & 
-- \my_gettempnumber|Mux3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mux0~4_combout\,
	datab => \my_gettempnumber|Mux1~4_combout\,
	datac => \my_gettempnumber|Mux3~6_combout\,
	datad => \my_gettempnumber|Mux2~4_combout\,
	combout => \my_numbertranslator|WideOr6~0_combout\);

-- Location: LCCOMB_X11_Y4_N26
\my_numbertranslator|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_numbertranslator|WideOr5~0_combout\ = (\my_gettempnumber|Mux0~4_combout\ & ((\my_gettempnumber|Mux1~4_combout\) # ((\my_gettempnumber|Mux2~4_combout\)))) # (!\my_gettempnumber|Mux0~4_combout\ & (\my_gettempnumber|Mux1~4_combout\ & 
-- (\my_gettempnumber|Mux3~6_combout\ $ (\my_gettempnumber|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mux0~4_combout\,
	datab => \my_gettempnumber|Mux1~4_combout\,
	datac => \my_gettempnumber|Mux3~6_combout\,
	datad => \my_gettempnumber|Mux2~4_combout\,
	combout => \my_numbertranslator|WideOr5~0_combout\);

-- Location: LCCOMB_X11_Y4_N12
\my_numbertranslator|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_numbertranslator|WideOr4~0_combout\ = (\my_gettempnumber|Mux1~4_combout\ & (\my_gettempnumber|Mux0~4_combout\)) # (!\my_gettempnumber|Mux1~4_combout\ & (\my_gettempnumber|Mux2~4_combout\ & ((\my_gettempnumber|Mux0~4_combout\) # 
-- (!\my_gettempnumber|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mux0~4_combout\,
	datab => \my_gettempnumber|Mux1~4_combout\,
	datac => \my_gettempnumber|Mux3~6_combout\,
	datad => \my_gettempnumber|Mux2~4_combout\,
	combout => \my_numbertranslator|WideOr4~0_combout\);

-- Location: LCCOMB_X11_Y4_N22
\my_numbertranslator|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_numbertranslator|WideOr3~0_combout\ = (\my_gettempnumber|Mux2~4_combout\ & ((\my_gettempnumber|Mux0~4_combout\) # ((\my_gettempnumber|Mux1~4_combout\ & \my_gettempnumber|Mux3~6_combout\)))) # (!\my_gettempnumber|Mux2~4_combout\ & 
-- (\my_gettempnumber|Mux1~4_combout\ $ (((!\my_gettempnumber|Mux0~4_combout\ & \my_gettempnumber|Mux3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mux0~4_combout\,
	datab => \my_gettempnumber|Mux1~4_combout\,
	datac => \my_gettempnumber|Mux3~6_combout\,
	datad => \my_gettempnumber|Mux2~4_combout\,
	combout => \my_numbertranslator|WideOr3~0_combout\);

-- Location: LCCOMB_X11_Y4_N24
\my_numbertranslator|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_numbertranslator|WideOr2~0_combout\ = (\my_gettempnumber|Mux3~6_combout\) # ((\my_gettempnumber|Mux2~4_combout\ & (\my_gettempnumber|Mux0~4_combout\)) # (!\my_gettempnumber|Mux2~4_combout\ & ((\my_gettempnumber|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mux0~4_combout\,
	datab => \my_gettempnumber|Mux1~4_combout\,
	datac => \my_gettempnumber|Mux3~6_combout\,
	datad => \my_gettempnumber|Mux2~4_combout\,
	combout => \my_numbertranslator|WideOr2~0_combout\);

-- Location: LCCOMB_X11_Y4_N10
\my_numbertranslator|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_numbertranslator|WideOr1~0_combout\ = (\my_gettempnumber|Mux1~4_combout\ & ((\my_gettempnumber|Mux0~4_combout\) # ((\my_gettempnumber|Mux3~6_combout\ & \my_gettempnumber|Mux2~4_combout\)))) # (!\my_gettempnumber|Mux1~4_combout\ & 
-- ((\my_gettempnumber|Mux2~4_combout\) # ((!\my_gettempnumber|Mux0~4_combout\ & \my_gettempnumber|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mux0~4_combout\,
	datab => \my_gettempnumber|Mux1~4_combout\,
	datac => \my_gettempnumber|Mux3~6_combout\,
	datad => \my_gettempnumber|Mux2~4_combout\,
	combout => \my_numbertranslator|WideOr1~0_combout\);

-- Location: LCCOMB_X11_Y4_N0
\my_numbertranslator|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_numbertranslator|WideOr0~0_combout\ = (\my_gettempnumber|Mux1~4_combout\ & (!\my_gettempnumber|Mux0~4_combout\ & ((!\my_gettempnumber|Mux2~4_combout\) # (!\my_gettempnumber|Mux3~6_combout\)))) # (!\my_gettempnumber|Mux1~4_combout\ & 
-- (\my_gettempnumber|Mux0~4_combout\ $ (((\my_gettempnumber|Mux2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_gettempnumber|Mux0~4_combout\,
	datab => \my_gettempnumber|Mux1~4_combout\,
	datac => \my_gettempnumber|Mux3~6_combout\,
	datad => \my_gettempnumber|Mux2~4_combout\,
	combout => \my_numbertranslator|WideOr0~0_combout\);

-- Location: LCCOMB_X9_Y10_N24
\my_segtranslator|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_segtranslator|Decoder0~1_combout\ = (\my_counter|wordselector\(1)) # (\my_counter|wordselector\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_counter|wordselector\(1),
	datac => \my_counter|wordselector\(0),
	combout => \my_segtranslator|Decoder0~1_combout\);

-- Location: LCCOMB_X9_Y10_N10
\my_segtranslator|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \my_segtranslator|Decoder0~2_combout\ = (\my_counter|wordselector\(1) & !\my_counter|wordselector\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_counter|wordselector\(1),
	datac => \my_counter|wordselector\(0),
	combout => \my_segtranslator|Decoder0~2_combout\);

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

ww_sum(0) <= \sum[0]~output_o\;

ww_sum(1) <= \sum[1]~output_o\;

ww_sum(2) <= \sum[2]~output_o\;

ww_sum(3) <= \sum[3]~output_o\;

ww_sum(4) <= \sum[4]~output_o\;

ww_sum(5) <= \sum[5]~output_o\;

ww_sum(6) <= \sum[6]~output_o\;

ww_sum(7) <= \sum[7]~output_o\;

ww_sum(8) <= \sum[8]~output_o\;

ww_sum(9) <= \sum[9]~output_o\;
END structure;


