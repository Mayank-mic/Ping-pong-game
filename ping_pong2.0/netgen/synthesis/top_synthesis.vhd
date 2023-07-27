--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: top_synthesis.vhd
-- /___/   /\     Timestamp: Sun Apr 17 12:26:02 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm top -w -dir netgen/synthesis -ofmt vhdl -sim top.ngc top_synthesis.vhd 
-- Device	: xc6slx4-3-tqg144
-- Input file	: top.ngc
-- Output file	: C:\Users\saurav raj\Downloads\clock\ping_pong2.0\netgen\synthesis\top_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: top
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity top is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    button : in STD_LOGIC := 'X'; 
    button1 : in STD_LOGIC := 'X'; 
    button2 : in STD_LOGIC := 'X'; 
    button3 : in STD_LOGIC := 'X'; 
    hsync : out STD_LOGIC; 
    vsync : out STD_LOGIC; 
    rgb : out STD_LOGIC_VECTOR ( 11 downto 0 ); 
    seg1 : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    seg2 : out STD_LOGIC_VECTOR ( 6 downto 0 ) 
  );
end top;

architecture Structure of top is
  signal clk_BUFGP_0 : STD_LOGIC; 
  signal reset_IBUF_1 : STD_LOGIC; 
  signal button_IBUF_2 : STD_LOGIC; 
  signal button1_IBUF_3 : STD_LOGIC; 
  signal button2_IBUF_4 : STD_LOGIC; 
  signal button3_IBUF_5 : STD_LOGIC; 
  signal v1_hsync_reg_26 : STD_LOGIC; 
  signal v1_vsync_reg_27 : STD_LOGIC; 
  signal video_on : STD_LOGIC; 
  signal rgb_10_OBUF_29 : STD_LOGIC; 
  signal rgb_4_OBUF_30 : STD_LOGIC; 
  signal rgb_0_OBUF_31 : STD_LOGIC; 
  signal c1_clk_1ms_BUFG_32 : STD_LOGIC; 
  signal seg1_6_OBUF_43 : STD_LOGIC; 
  signal seg1_5_OBUF_44 : STD_LOGIC; 
  signal seg1_4_OBUF_45 : STD_LOGIC; 
  signal seg1_3_OBUF_46 : STD_LOGIC; 
  signal seg1_2_OBUF_47 : STD_LOGIC; 
  signal seg1_1_OBUF_48 : STD_LOGIC; 
  signal seg1_0_OBUF_49 : STD_LOGIC; 
  signal seg2_6_OBUF_50 : STD_LOGIC; 
  signal seg2_5_OBUF_51 : STD_LOGIC; 
  signal seg2_4_OBUF_52 : STD_LOGIC; 
  signal seg2_3_OBUF_53 : STD_LOGIC; 
  signal seg2_2_OBUF_54 : STD_LOGIC; 
  signal seg2_1_OBUF_55 : STD_LOGIC; 
  signal seg2_0_OBUF_56 : STD_LOGIC; 
  signal paddle1_on : STD_LOGIC; 
  signal paddle2_on : STD_LOGIC; 
  signal v1_PWR_2_o_h_count_reg_9_LessThan_14_o_inv : STD_LOGIC; 
  signal v1_PWR_2_o_v_count_reg_9_LessThan_16_o_inv : STD_LOGIC; 
  signal v1_hsync_next_norst : STD_LOGIC; 
  signal v1_vsync_next_norst : STD_LOGIC; 
  signal v1_GND_2_o_GND_2_o_equal_9_o : STD_LOGIC; 
  signal v1_n0069_82 : STD_LOGIC; 
  signal v1_pixel_tick_GND_2_o_AND_1_o : STD_LOGIC; 
  signal c1_GND_4_o_GND_4_o_equal_2_o : STD_LOGIC; 
  signal c1_clk_1ms_INV_4_o : STD_LOGIC; 
  signal v1_pixel_reg_86 : STD_LOGIC; 
  signal Q_i000001_reset_inv : STD_LOGIC; 
  signal Q_i000001_p1_score_3_GND_8_o_equal_2_o : STD_LOGIC; 
  signal Result : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal Result_8_1 : STD_LOGIC; 
  signal Result_9_1 : STD_LOGIC; 
  signal Result_1_2 : STD_LOGIC; 
  signal Result_2_2 : STD_LOGIC; 
  signal Result_3_2 : STD_LOGIC; 
  signal Result_4_2 : STD_LOGIC; 
  signal Result_5_2 : STD_LOGIC; 
  signal Result_6_2 : STD_LOGIC; 
  signal Result_7_2 : STD_LOGIC; 
  signal Result_8_2 : STD_LOGIC; 
  signal Result_9_2 : STD_LOGIC; 
  signal v1_PWR_2_o_v_count_reg_9_LessThan_16_o_inv1_178 : STD_LOGIC; 
  signal v1_PWR_2_o_v_count_reg_9_LessThan_16_o_inv2 : STD_LOGIC; 
  signal r1_Mmux_GND_3_o_GND_3_o_mux_9_OUT15_180 : STD_LOGIC; 
  signal r1_rgb_reg_3_Q : STD_LOGIC; 
  signal r1_rgb_reg_7_Q : STD_LOGIC; 
  signal r1_rgb_reg_11_Q : STD_LOGIC; 
  signal r1_GND_3_o_GND_3_o_mux_9_OUT_3_Q : STD_LOGIC; 
  signal r1_GND_3_o_GND_3_o_mux_9_OUT_11_Q : STD_LOGIC; 
  signal b1_Msub_GND_5_o_GND_5_o_sub_11_OUT_xor_7_12 : STD_LOGIC; 
  signal b1_Msub_GND_5_o_GND_5_o_sub_19_OUT_xor_7_11_187 : STD_LOGIC; 
  signal b1_Msub_GND_5_o_GND_5_o_sub_11_OUT_xor_7_11_188 : STD_LOGIC; 
  signal b1_Msub_GND_5_o_GND_5_o_sub_64_OUT_xor_6_11 : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_42_OUT11 : STD_LOGIC; 
  signal b1_Msub_dy_31_unary_minus_30_OUT_lut_9_Q_210 : STD_LOGIC; 
  signal b1_Msub_dy_31_unary_minus_30_OUT_cy_8_Q_211 : STD_LOGIC; 
  signal b1_Msub_dy_31_unary_minus_30_OUT_lut_8_Q_212 : STD_LOGIC; 
  signal b1_Msub_dx_31_unary_minus_31_OUT_lut_9_Q_213 : STD_LOGIC; 
  signal b1_Msub_dx_31_unary_minus_31_OUT_cy_8_Q_214 : STD_LOGIC; 
  signal b1_Msub_dx_31_unary_minus_31_OUT_lut_8_Q_215 : STD_LOGIC; 
  signal b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_9_Q_216 : STD_LOGIC; 
  signal b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_8_Q_217 : STD_LOGIC; 
  signal b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_8_Q_218 : STD_LOGIC; 
  signal b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_7_Q_219 : STD_LOGIC; 
  signal b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_7_Q_220 : STD_LOGIC; 
  signal b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_6_Q_221 : STD_LOGIC; 
  signal b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_6_Q_222 : STD_LOGIC; 
  signal b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_5_Q_223 : STD_LOGIC; 
  signal b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_5_Q_224 : STD_LOGIC; 
  signal b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_4_Q_225 : STD_LOGIC; 
  signal b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_4_Q_226 : STD_LOGIC; 
  signal b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_3_Q_227 : STD_LOGIC; 
  signal b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_3_Q_228 : STD_LOGIC; 
  signal b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_2_Q_229 : STD_LOGIC; 
  signal b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_2_Q_230 : STD_LOGIC; 
  signal b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_1_Q_231 : STD_LOGIC; 
  signal b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_1_Q_232 : STD_LOGIC; 
  signal b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_0_Q_233 : STD_LOGIC; 
  signal b1_Msub_dx_31_unary_minus_23_OUT_lut_9_Q : STD_LOGIC; 
  signal b1_Msub_dx_31_unary_minus_23_OUT_cy_8_Q_236 : STD_LOGIC; 
  signal b1_Msub_dx_31_unary_minus_23_OUT_lut_8_Q : STD_LOGIC; 
  signal b1_Msub_dx_31_unary_minus_23_OUT_cy_7_Q_238 : STD_LOGIC; 
  signal b1_Msub_dx_31_unary_minus_23_OUT_lut_7_Q : STD_LOGIC; 
  signal b1_Msub_dx_31_unary_minus_23_OUT_cy_6_Q_240 : STD_LOGIC; 
  signal b1_Msub_dx_31_unary_minus_23_OUT_lut_6_Q : STD_LOGIC; 
  signal b1_Msub_dx_31_unary_minus_23_OUT_cy_5_Q_242 : STD_LOGIC; 
  signal b1_Msub_dx_31_unary_minus_23_OUT_lut_5_Q : STD_LOGIC; 
  signal b1_Msub_dx_31_unary_minus_23_OUT_cy_4_Q_244 : STD_LOGIC; 
  signal b1_Msub_dx_31_unary_minus_23_OUT_lut_4_Q : STD_LOGIC; 
  signal b1_Msub_dx_31_unary_minus_23_OUT_cy_3_Q_246 : STD_LOGIC; 
  signal b1_Msub_dx_31_unary_minus_23_OUT_lut_3_Q : STD_LOGIC; 
  signal b1_Msub_dx_31_unary_minus_23_OUT_cy_2_Q_248 : STD_LOGIC; 
  signal b1_Msub_dx_31_unary_minus_23_OUT_lut_2_Q : STD_LOGIC; 
  signal b1_Msub_dx_31_unary_minus_23_OUT_cy_1_Q_250 : STD_LOGIC; 
  signal b1_Msub_dx_31_unary_minus_23_OUT_lut_1_Q : STD_LOGIC; 
  signal b1_Msub_dx_31_unary_minus_23_OUT_cy_0_Q_252 : STD_LOGIC; 
  signal b1_Msub_dy_31_unary_minus_7_OUT_lut_9_Q : STD_LOGIC; 
  signal b1_Msub_dy_31_unary_minus_7_OUT_cy_8_Q_254 : STD_LOGIC; 
  signal b1_Msub_dy_31_unary_minus_7_OUT_lut_8_Q : STD_LOGIC; 
  signal b1_Msub_dy_31_unary_minus_7_OUT_cy_7_Q_256 : STD_LOGIC; 
  signal b1_Msub_dy_31_unary_minus_7_OUT_lut_7_Q : STD_LOGIC; 
  signal b1_Msub_dy_31_unary_minus_7_OUT_cy_6_Q_258 : STD_LOGIC; 
  signal b1_Msub_dy_31_unary_minus_7_OUT_lut_6_Q : STD_LOGIC; 
  signal b1_Msub_dy_31_unary_minus_7_OUT_cy_5_Q_260 : STD_LOGIC; 
  signal b1_Msub_dy_31_unary_minus_7_OUT_lut_5_Q : STD_LOGIC; 
  signal b1_Msub_dy_31_unary_minus_7_OUT_cy_4_Q_262 : STD_LOGIC; 
  signal b1_Msub_dy_31_unary_minus_7_OUT_lut_4_Q : STD_LOGIC; 
  signal b1_Msub_dy_31_unary_minus_7_OUT_cy_3_Q_264 : STD_LOGIC; 
  signal b1_Msub_dy_31_unary_minus_7_OUT_lut_3_Q : STD_LOGIC; 
  signal b1_Msub_dy_31_unary_minus_7_OUT_cy_2_Q_266 : STD_LOGIC; 
  signal b1_Msub_dy_31_unary_minus_7_OUT_lut_2_Q : STD_LOGIC; 
  signal b1_Msub_dy_31_unary_minus_7_OUT_cy_1_Q_268 : STD_LOGIC; 
  signal b1_Msub_dy_31_unary_minus_7_OUT_lut_1_Q : STD_LOGIC; 
  signal b1_Msub_dy_31_unary_minus_7_OUT_cy_0_Q_270 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lutdi4 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lutdi3_276 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lutdi2_279 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lutdi1 : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_9_Q : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_8_Q_286 : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_8_Q : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_8_mand1_288 : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_7_Q_289 : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_7_Q : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_7_mand1_291 : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_6_Q_292 : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_6_Q : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_6_mand1_294 : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_5_Q_295 : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_5_Q : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_5_mand1_297 : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_4_Q_298 : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_4_Q : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_4_mand1_300 : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_3_Q_301 : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_3_Q : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_3_mand1_303 : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_2_Q_304 : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_2_Q : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_2_mand1_306 : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_1_Q_307 : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_1_Q : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_1_mand1_309 : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_0_Q_310 : STD_LOGIC; 
  signal b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_0_mand : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_9_Q : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_8_Q_313 : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_8_Q : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_8_mand1_315 : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_7_Q_316 : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_7_Q : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_7_mand1_318 : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_6_Q_319 : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_6_Q : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_6_mand1_321 : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_5_Q_322 : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_5_Q : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_5_mand1_324 : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_4_Q_325 : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_4_Q : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_4_mand1_327 : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_3_Q_328 : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_3_Q : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_3_mand1_330 : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_2_Q_331 : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_2_Q : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_2_mand1_333 : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_1_Q_334 : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_1_Q : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_1_mand1_336 : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_0_Q_337 : STD_LOGIC; 
  signal b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_0_mand : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lutdi4 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lutdi3_344 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lutdi2_347 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lutdi1_350 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lutdi_353 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lutdi4_356 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lutdi3_359 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lutdi2_362 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lutdi1_365 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lutdi_368 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lutdi4_371 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lutdi3_374 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lutdi2_377 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lutdi1_380 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lutdi_383 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lutdi4 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lutdi3_389 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lutdi2_392 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lutdi1_395 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lutdi_398 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lutdi3 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lutdi2_405 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lutdi : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lutdi3_414 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lutdi2_417 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lutdi1_420 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lutdi_423 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lutdi3_426 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lutdi2_429 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lutdi1_432 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lutdi_435 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lutdi3_438 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lutdi2_441 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lutdi1_444 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lutdi_447 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lutdi3_450 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lutdi2_453 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lutdi1_456 : STD_LOGIC; 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lutdi_459 : STD_LOGIC; 
  signal b1_Result_3_1 : STD_LOGIC; 
  signal b1_Result_2_1 : STD_LOGIC; 
  signal b1_Result_1_1 : STD_LOGIC; 
  signal b1_Result_0_1 : STD_LOGIC; 
  signal b1_n0236_inv : STD_LOGIC; 
  signal b1_n0229_inv : STD_LOGIC; 
  signal b1_n0211_inv : STD_LOGIC; 
  signal b1_n0216_inv : STD_LOGIC; 
  signal b1_dx_31_unary_minus_31_OUT_9_Q : STD_LOGIC; 
  signal b1_dy_31_unary_minus_30_OUT_9_Q : STD_LOGIC; 
  signal b1_GND_5_o_GND_5_o_equal_29_o : STD_LOGIC; 
  signal b1_dx_31_dx_31_mux_42_OUT_9_Q : STD_LOGIC; 
  signal b1_dy_31_dy_31_mux_41_OUT_9_Q : STD_LOGIC; 
  signal b1_dx_31_unary_minus_23_OUT_1_Q : STD_LOGIC; 
  signal b1_dx_31_unary_minus_23_OUT_2_Q : STD_LOGIC; 
  signal b1_dx_31_unary_minus_23_OUT_3_Q : STD_LOGIC; 
  signal b1_dx_31_unary_minus_23_OUT_4_Q : STD_LOGIC; 
  signal b1_dx_31_unary_minus_23_OUT_5_Q : STD_LOGIC; 
  signal b1_dx_31_unary_minus_23_OUT_6_Q : STD_LOGIC; 
  signal b1_dx_31_unary_minus_23_OUT_7_Q : STD_LOGIC; 
  signal b1_dx_31_unary_minus_23_OUT_8_Q : STD_LOGIC; 
  signal b1_dx_31_unary_minus_23_OUT_9_Q : STD_LOGIC; 
  signal b1_dy_31_unary_minus_7_OUT_1_Q : STD_LOGIC; 
  signal b1_dy_31_unary_minus_7_OUT_2_Q : STD_LOGIC; 
  signal b1_dy_31_unary_minus_7_OUT_3_Q : STD_LOGIC; 
  signal b1_dy_31_unary_minus_7_OUT_4_Q : STD_LOGIC; 
  signal b1_dy_31_unary_minus_7_OUT_5_Q : STD_LOGIC; 
  signal b1_dy_31_unary_minus_7_OUT_6_Q : STD_LOGIC; 
  signal b1_dy_31_unary_minus_7_OUT_7_Q : STD_LOGIC; 
  signal b1_dy_31_unary_minus_7_OUT_8_Q : STD_LOGIC; 
  signal b1_dy_31_unary_minus_7_OUT_9_Q : STD_LOGIC; 
  signal b1_GND_5_o_GND_5_o_equal_25_o : STD_LOGIC; 
  signal b1_dx_31_dx_31_mux_15_OUT_1_Q : STD_LOGIC; 
  signal b1_dx_31_dx_31_mux_15_OUT_2_Q : STD_LOGIC; 
  signal b1_dx_31_dx_31_mux_15_OUT_3_Q : STD_LOGIC; 
  signal b1_dx_31_dx_31_mux_15_OUT_4_Q : STD_LOGIC; 
  signal b1_dx_31_dx_31_mux_15_OUT_5_Q : STD_LOGIC; 
  signal b1_dx_31_dx_31_mux_15_OUT_6_Q : STD_LOGIC; 
  signal b1_dx_31_dx_31_mux_15_OUT_7_Q : STD_LOGIC; 
  signal b1_dx_31_dx_31_mux_15_OUT_8_Q : STD_LOGIC; 
  signal b1_dx_31_dx_31_mux_15_OUT_9_Q : STD_LOGIC; 
  signal b1_dy_31_dy_31_mux_4_OUT_1_Q : STD_LOGIC; 
  signal b1_dy_31_dy_31_mux_4_OUT_2_Q : STD_LOGIC; 
  signal b1_dy_31_dy_31_mux_4_OUT_3_Q : STD_LOGIC; 
  signal b1_dy_31_dy_31_mux_4_OUT_4_Q : STD_LOGIC; 
  signal b1_dy_31_dy_31_mux_4_OUT_5_Q : STD_LOGIC; 
  signal b1_dy_31_dy_31_mux_4_OUT_6_Q : STD_LOGIC; 
  signal b1_dy_31_dy_31_mux_4_OUT_7_Q : STD_LOGIC; 
  signal b1_dy_31_dy_31_mux_4_OUT_8_Q : STD_LOGIC; 
  signal b1_dy_31_dy_31_mux_4_OUT_9_Q : STD_LOGIC; 
  signal b1_GND_5_o_GND_5_o_equal_3_o : STD_LOGIC; 
  signal b1_GND_5_o_GND_5_o_equal_6_o : STD_LOGIC; 
  signal b1_y_ball_9_GND_5_o_mux_52_OUT_0_Q : STD_LOGIC; 
  signal b1_y_ball_9_GND_5_o_mux_52_OUT_1_Q : STD_LOGIC; 
  signal b1_y_ball_9_GND_5_o_mux_52_OUT_2_Q : STD_LOGIC; 
  signal b1_y_ball_9_GND_5_o_mux_52_OUT_3_Q : STD_LOGIC; 
  signal b1_y_ball_9_GND_5_o_mux_52_OUT_4_Q : STD_LOGIC; 
  signal b1_y_ball_9_GND_5_o_mux_52_OUT_5_Q : STD_LOGIC; 
  signal b1_y_ball_9_GND_5_o_mux_52_OUT_6_Q : STD_LOGIC; 
  signal b1_y_ball_9_GND_5_o_mux_52_OUT_7_Q : STD_LOGIC; 
  signal b1_y_ball_9_GND_5_o_mux_52_OUT_8_Q : STD_LOGIC; 
  signal b1_y_ball_9_GND_5_o_mux_52_OUT_9_Q : STD_LOGIC; 
  signal b1_x_ball_9_GND_5_o_mux_51_OUT_1_Q : STD_LOGIC; 
  signal b1_x_ball_9_GND_5_o_mux_51_OUT_2_Q : STD_LOGIC; 
  signal b1_x_ball_9_GND_5_o_mux_51_OUT_3_Q : STD_LOGIC; 
  signal b1_x_ball_9_GND_5_o_mux_51_OUT_4_Q : STD_LOGIC; 
  signal b1_x_ball_9_GND_5_o_mux_51_OUT_5_Q : STD_LOGIC; 
  signal b1_x_ball_9_GND_5_o_mux_51_OUT_6_Q : STD_LOGIC; 
  signal b1_x_ball_9_GND_5_o_mux_51_OUT_7_Q : STD_LOGIC; 
  signal b1_x_ball_9_GND_5_o_mux_51_OUT_8_Q : STD_LOGIC; 
  signal b1_x_ball_9_GND_5_o_mux_51_OUT_9_Q : STD_LOGIC; 
  signal b1_GND_5_o_dy_31_sub_34_OUT_0_Q : STD_LOGIC; 
  signal b1_GND_5_o_dy_31_sub_34_OUT_1_Q : STD_LOGIC; 
  signal b1_GND_5_o_dy_31_sub_34_OUT_2_Q : STD_LOGIC; 
  signal b1_GND_5_o_dy_31_sub_34_OUT_3_Q : STD_LOGIC; 
  signal b1_GND_5_o_dy_31_sub_34_OUT_4_Q : STD_LOGIC; 
  signal b1_GND_5_o_dy_31_sub_34_OUT_5_Q : STD_LOGIC; 
  signal b1_GND_5_o_dy_31_sub_34_OUT_6_Q : STD_LOGIC; 
  signal b1_GND_5_o_dy_31_sub_34_OUT_7_Q : STD_LOGIC; 
  signal b1_GND_5_o_dy_31_sub_34_OUT_8_Q : STD_LOGIC; 
  signal b1_GND_5_o_dy_31_sub_34_OUT_9_Q : STD_LOGIC; 
  signal b1_n0153_3_Q : STD_LOGIC; 
  signal b1_n0153_4_Q : STD_LOGIC; 
  signal b1_n0153_5_Q : STD_LOGIC; 
  signal b1_n0153_8_Q : STD_LOGIC; 
  signal b1_n0153_9_Q : STD_LOGIC; 
  signal b1_n0160_3_Q : STD_LOGIC; 
  signal b1_n0160_4_Q : STD_LOGIC; 
  signal b1_n0160_5_Q : STD_LOGIC; 
  signal b1_n0160_8_Q : STD_LOGIC; 
  signal b1_n0160_9_Q : STD_LOGIC; 
  signal b1_GND_5_o_BUS_0008_LessThan_71_o : STD_LOGIC; 
  signal b1_GND_5_o_GND_5_o_LessThan_69_o : STD_LOGIC; 
  signal b1_GND_5_o_BUS_0007_LessThan_67_o : STD_LOGIC; 
  signal b1_GND_5_o_GND_5_o_LessThan_65_o : STD_LOGIC; 
  signal b1_dx_0_Q : STD_LOGIC; 
  signal b1_dx_9_Q : STD_LOGIC; 
  signal p1_Msub_GND_7_o_GND_7_o_sub_41_OUT_xor_9_11 : STD_LOGIC; 
  signal p1_Msub_GND_7_o_GND_7_o_sub_18_OUT_xor_9_11 : STD_LOGIC; 
  signal p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lutdi3_624 : STD_LOGIC; 
  signal p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lutdi2_627 : STD_LOGIC; 
  signal p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lutdi1_630 : STD_LOGIC; 
  signal p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lutdi_633 : STD_LOGIC; 
  signal p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lutdi3_636 : STD_LOGIC; 
  signal p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lutdi2_639 : STD_LOGIC; 
  signal p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lutdi1_642 : STD_LOGIC; 
  signal p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lutdi_645 : STD_LOGIC; 
  signal p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lutdi3_649 : STD_LOGIC; 
  signal p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lutdi2_652 : STD_LOGIC; 
  signal p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lutdi1_655 : STD_LOGIC; 
  signal p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lutdi_658 : STD_LOGIC; 
  signal p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lutdi3_661 : STD_LOGIC; 
  signal p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lutdi2_664 : STD_LOGIC; 
  signal p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lutdi1_667 : STD_LOGIC; 
  signal p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lutdi_670 : STD_LOGIC; 
  signal p1_Mcount_y_paddle29 : STD_LOGIC; 
  signal p1_Mcount_y_paddle28 : STD_LOGIC; 
  signal p1_Mcount_y_paddle2_mand7 : STD_LOGIC; 
  signal p1_Mcount_y_paddle27 : STD_LOGIC; 
  signal p1_Mcount_y_paddle2_mand6 : STD_LOGIC; 
  signal p1_Mcount_y_paddle26 : STD_LOGIC; 
  signal p1_Mcount_y_paddle2_mand5 : STD_LOGIC; 
  signal p1_Mcount_y_paddle25 : STD_LOGIC; 
  signal p1_Mcount_y_paddle2_mand4 : STD_LOGIC; 
  signal p1_Mcount_y_paddle24 : STD_LOGIC; 
  signal p1_Mcount_y_paddle2_mand3 : STD_LOGIC; 
  signal p1_Mcount_y_paddle23 : STD_LOGIC; 
  signal p1_Mcount_y_paddle2_mand2 : STD_LOGIC; 
  signal p1_Mcount_y_paddle22 : STD_LOGIC; 
  signal p1_Mcount_y_paddle2_mand1 : STD_LOGIC; 
  signal p1_Mcount_y_paddle21 : STD_LOGIC; 
  signal p1_Mcount_y_paddle2_mand_704 : STD_LOGIC; 
  signal p1_Mcount_y_paddle2_705 : STD_LOGIC; 
  signal p1_n0140_inv : STD_LOGIC; 
  signal p1_button2_GND_7_o_AND_17_o_inv_707 : STD_LOGIC; 
  signal p1_Mcount_y_paddle19 : STD_LOGIC; 
  signal p1_Mcount_y_paddle18 : STD_LOGIC; 
  signal p1_Mcount_y_paddle1_mand7 : STD_LOGIC; 
  signal p1_Mcount_y_paddle17 : STD_LOGIC; 
  signal p1_Mcount_y_paddle1_mand6 : STD_LOGIC; 
  signal p1_Mcount_y_paddle16 : STD_LOGIC; 
  signal p1_Mcount_y_paddle1_mand5 : STD_LOGIC; 
  signal p1_Mcount_y_paddle15 : STD_LOGIC; 
  signal p1_Mcount_y_paddle1_mand4 : STD_LOGIC; 
  signal p1_Mcount_y_paddle14 : STD_LOGIC; 
  signal p1_Mcount_y_paddle1_mand3 : STD_LOGIC; 
  signal p1_Mcount_y_paddle13 : STD_LOGIC; 
  signal p1_Mcount_y_paddle1_mand2 : STD_LOGIC; 
  signal p1_Mcount_y_paddle12 : STD_LOGIC; 
  signal p1_Mcount_y_paddle1_mand1 : STD_LOGIC; 
  signal p1_Mcount_y_paddle11 : STD_LOGIC; 
  signal p1_Mcount_y_paddle1_mand_741 : STD_LOGIC; 
  signal p1_Mcount_y_paddle1_742 : STD_LOGIC; 
  signal p1_n0136_inv : STD_LOGIC; 
  signal p1_button_GND_7_o_AND_12_o_inv_744 : STD_LOGIC; 
  signal p1_GND_7_o_GND_7_o_sub_41_OUT_4_Q : STD_LOGIC; 
  signal p1_GND_7_o_GND_7_o_sub_41_OUT_8_Q : STD_LOGIC; 
  signal p1_GND_7_o_GND_7_o_sub_41_OUT_10_Q : STD_LOGIC; 
  signal p1_GND_7_o_GND_7_o_sub_18_OUT_4_Q : STD_LOGIC; 
  signal p1_GND_7_o_GND_7_o_sub_18_OUT_8_Q : STD_LOGIC; 
  signal p1_GND_7_o_GND_7_o_LessThan_42_o : STD_LOGIC; 
  signal p1_GND_7_o_GND_7_o_LessThan_19_o : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal c1_GND_4_o_GND_4_o_equal_2_o_27_1_758 : STD_LOGIC; 
  signal c1_GND_4_o_GND_4_o_equal_2_o_27_2_759 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal p1_n0140_inv1_769 : STD_LOGIC; 
  signal p1_n0136_inv1_770 : STD_LOGIC; 
  signal p1_GND_7_o_GND_7_o_AND_16_o1 : STD_LOGIC; 
  signal p1_GND_7_o_GND_7_o_AND_16_o11_772 : STD_LOGIC; 
  signal p1_GND_7_o_GND_7_o_AND_21_o1 : STD_LOGIC; 
  signal p1_GND_7_o_GND_7_o_AND_21_o11_774 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal Q_i000001_game_state_1_glue_set_811 : STD_LOGIC; 
  signal Q_i000001_game_state_0_glue_set_812 : STD_LOGIC; 
  signal c1_Mcount_i_cy_1_rt_813 : STD_LOGIC; 
  signal c1_Mcount_i_cy_2_rt_814 : STD_LOGIC; 
  signal c1_Mcount_i_cy_3_rt_815 : STD_LOGIC; 
  signal c1_Mcount_i_cy_4_rt_816 : STD_LOGIC; 
  signal c1_Mcount_i_cy_5_rt_817 : STD_LOGIC; 
  signal c1_Mcount_i_cy_6_rt_818 : STD_LOGIC; 
  signal c1_Mcount_i_cy_7_rt_819 : STD_LOGIC; 
  signal c1_Mcount_i_cy_8_rt_820 : STD_LOGIC; 
  signal c1_Mcount_i_cy_9_rt_821 : STD_LOGIC; 
  signal c1_Mcount_i_cy_10_rt_822 : STD_LOGIC; 
  signal c1_Mcount_i_cy_11_rt_823 : STD_LOGIC; 
  signal c1_Mcount_i_cy_12_rt_824 : STD_LOGIC; 
  signal c1_Mcount_i_cy_13_rt_825 : STD_LOGIC; 
  signal c1_Mcount_i_cy_14_rt_826 : STD_LOGIC; 
  signal c1_Mcount_i_cy_15_rt_827 : STD_LOGIC; 
  signal v1_Mcount_h_count_reg_cy_1_rt_828 : STD_LOGIC; 
  signal v1_Mcount_h_count_reg_cy_2_rt_829 : STD_LOGIC; 
  signal v1_Mcount_h_count_reg_cy_3_rt_830 : STD_LOGIC; 
  signal v1_Mcount_h_count_reg_cy_4_rt_831 : STD_LOGIC; 
  signal v1_Mcount_h_count_reg_cy_5_rt_832 : STD_LOGIC; 
  signal v1_Mcount_h_count_reg_cy_6_rt_833 : STD_LOGIC; 
  signal v1_Mcount_h_count_reg_cy_7_rt_834 : STD_LOGIC; 
  signal v1_Mcount_h_count_reg_cy_8_rt_835 : STD_LOGIC; 
  signal v1_Mcount_v_count_reg_cy_1_rt_836 : STD_LOGIC; 
  signal v1_Mcount_v_count_reg_cy_2_rt_837 : STD_LOGIC; 
  signal v1_Mcount_v_count_reg_cy_3_rt_838 : STD_LOGIC; 
  signal v1_Mcount_v_count_reg_cy_4_rt_839 : STD_LOGIC; 
  signal v1_Mcount_v_count_reg_cy_5_rt_840 : STD_LOGIC; 
  signal v1_Mcount_v_count_reg_cy_6_rt_841 : STD_LOGIC; 
  signal v1_Mcount_v_count_reg_cy_7_rt_842 : STD_LOGIC; 
  signal v1_Mcount_v_count_reg_cy_8_rt_843 : STD_LOGIC; 
  signal c1_Mcount_i_xor_16_rt_844 : STD_LOGIC; 
  signal v1_Mcount_h_count_reg_xor_9_rt_845 : STD_LOGIC; 
  signal v1_Mcount_v_count_reg_xor_9_rt_846 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_0_rt_851 : STD_LOGIC; 
  signal c1_clk_1ms_852 : STD_LOGIC; 
  signal v1_h_count_reg : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal v1_v_count_reg : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b1_p1_score : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal b1_p2_score : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Q_i000001_game_state : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal p1_y_paddle1 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal p1_y_paddle2 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal c1_i : STD_LOGIC_VECTOR ( 16 downto 1 ); 
  signal Result_0 : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal c1_Mcount_i_cy : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal v1_Mcount_h_count_reg_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal v1_Mcount_h_count_reg_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal v1_Mcount_v_count_reg_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal v1_Mcount_v_count_reg_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b1_Madd_n0114_Madd_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b1_Madd_n0114_Madd_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal b1_y_ball : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_cy : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_cy : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_cy : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal b1_x_ball : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal b1_Madd_n0153_cy : STD_LOGIC_VECTOR ( 9 downto 9 ); 
  signal b1_Result : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal b1_n0169 : STD_LOGIC_VECTOR ( 8 downto 3 ); 
  signal b1_GND_5_o_GND_5_o_sub_64_OUT : STD_LOGIC_VECTOR ( 8 downto 4 ); 
  signal b1_n0114 : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal b1_n0174 : STD_LOGIC_VECTOR ( 8 downto 3 ); 
  signal b1_GND_5_o_GND_5_o_sub_68_OUT : STD_LOGIC_VECTOR ( 8 downto 4 ); 
  signal b1_GND_5_o_GND_5_o_sub_11_OUT : STD_LOGIC_VECTOR ( 7 downto 5 ); 
  signal b1_GND_5_o_GND_5_o_sub_19_OUT : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal b1_dy : STD_LOGIC_VECTOR ( 9 downto 9 ); 
  signal p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_cy : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_cy : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal p1_Mcount_y_paddle2_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal p1_Mcount_y_paddle2_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal p1_Mcount_y_paddle1_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal p1_Mcount_y_paddle1_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal p1_n0106 : STD_LOGIC_VECTOR ( 7 downto 6 ); 
  signal p1_n0093 : STD_LOGIC_VECTOR ( 7 downto 6 ); 
  signal c1_GND_4_o_GND_4_o_equal_2_o_1 : STD_LOGIC_VECTOR ( 27 downto 27 ); 
begin
  XST_VCC : VCC
    port map (
      P => b1_dx_0_Q
    );
  XST_GND : GND
    port map (
      G => b1_Madd_n0153_cy(9)
    );
  v1_hsync_reg : FDR
    port map (
      C => clk_BUFGP_0,
      D => v1_hsync_next_norst,
      R => v1_PWR_2_o_h_count_reg_9_LessThan_14_o_inv,
      Q => v1_hsync_reg_26
    );
  v1_vsync_reg : FDR
    port map (
      C => clk_BUFGP_0,
      D => v1_vsync_next_norst,
      R => v1_PWR_2_o_v_count_reg_9_LessThan_16_o_inv,
      Q => v1_vsync_reg_27
    );
  c1_clk_1ms : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => c1_GND_4_o_GND_4_o_equal_2_o,
      D => c1_clk_1ms_INV_4_o,
      Q => c1_clk_1ms_852
    );
  v1_pixel_reg : FD
    port map (
      C => clk_BUFGP_0,
      D => Result,
      Q => v1_pixel_reg_86
    );
  c1_i_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Result_1_2,
      R => c1_GND_4_o_GND_4_o_equal_2_o,
      Q => c1_i(1)
    );
  c1_i_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Result_2_2,
      R => c1_GND_4_o_GND_4_o_equal_2_o,
      Q => c1_i(2)
    );
  c1_i_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Result_3_2,
      R => c1_GND_4_o_GND_4_o_equal_2_o,
      Q => c1_i(3)
    );
  c1_i_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Result_4_2,
      R => c1_GND_4_o_GND_4_o_equal_2_o,
      Q => c1_i(4)
    );
  c1_i_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Result_5_2,
      R => c1_GND_4_o_GND_4_o_equal_2_o,
      Q => c1_i(5)
    );
  c1_i_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Result_6_2,
      R => c1_GND_4_o_GND_4_o_equal_2_o,
      Q => c1_i(6)
    );
  c1_i_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Result_7_2,
      R => c1_GND_4_o_GND_4_o_equal_2_o,
      Q => c1_i(7)
    );
  c1_i_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Result_8_2,
      R => c1_GND_4_o_GND_4_o_equal_2_o,
      Q => c1_i(8)
    );
  c1_i_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Result_9_2,
      R => c1_GND_4_o_GND_4_o_equal_2_o,
      Q => c1_i(9)
    );
  c1_i_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Result_0(10),
      R => c1_GND_4_o_GND_4_o_equal_2_o,
      Q => c1_i(10)
    );
  c1_i_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Result_0(11),
      R => c1_GND_4_o_GND_4_o_equal_2_o,
      Q => c1_i(11)
    );
  c1_i_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Result_0(12),
      R => c1_GND_4_o_GND_4_o_equal_2_o,
      Q => c1_i(12)
    );
  c1_i_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Result_0(13),
      R => c1_GND_4_o_GND_4_o_equal_2_o,
      Q => c1_i(13)
    );
  c1_i_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Result_0(14),
      R => c1_GND_4_o_GND_4_o_equal_2_o,
      Q => c1_i(14)
    );
  c1_i_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Result_0(15),
      R => c1_GND_4_o_GND_4_o_equal_2_o,
      Q => c1_i(15)
    );
  c1_i_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Result_0(16),
      R => c1_GND_4_o_GND_4_o_equal_2_o,
      Q => c1_i(16)
    );
  v1_h_count_reg_0 : FDRE
    port map (
      C => clk_BUFGP_0,
      CE => Result,
      D => Result_0(0),
      R => v1_pixel_tick_GND_2_o_AND_1_o,
      Q => v1_h_count_reg(0)
    );
  v1_h_count_reg_1 : FDRE
    port map (
      C => clk_BUFGP_0,
      CE => Result,
      D => Result_0(1),
      R => v1_pixel_tick_GND_2_o_AND_1_o,
      Q => v1_h_count_reg(1)
    );
  v1_h_count_reg_2 : FDRE
    port map (
      C => clk_BUFGP_0,
      CE => Result,
      D => Result_0(2),
      R => v1_pixel_tick_GND_2_o_AND_1_o,
      Q => v1_h_count_reg(2)
    );
  v1_h_count_reg_3 : FDRE
    port map (
      C => clk_BUFGP_0,
      CE => Result,
      D => Result_0(3),
      R => v1_pixel_tick_GND_2_o_AND_1_o,
      Q => v1_h_count_reg(3)
    );
  v1_h_count_reg_4 : FDRE
    port map (
      C => clk_BUFGP_0,
      CE => Result,
      D => Result_0(4),
      R => v1_pixel_tick_GND_2_o_AND_1_o,
      Q => v1_h_count_reg(4)
    );
  v1_h_count_reg_5 : FDRE
    port map (
      C => clk_BUFGP_0,
      CE => Result,
      D => Result_0(5),
      R => v1_pixel_tick_GND_2_o_AND_1_o,
      Q => v1_h_count_reg(5)
    );
  v1_h_count_reg_6 : FDRE
    port map (
      C => clk_BUFGP_0,
      CE => Result,
      D => Result_0(6),
      R => v1_pixel_tick_GND_2_o_AND_1_o,
      Q => v1_h_count_reg(6)
    );
  v1_h_count_reg_7 : FDRE
    port map (
      C => clk_BUFGP_0,
      CE => Result,
      D => Result_0(7),
      R => v1_pixel_tick_GND_2_o_AND_1_o,
      Q => v1_h_count_reg(7)
    );
  v1_h_count_reg_8 : FDRE
    port map (
      C => clk_BUFGP_0,
      CE => Result,
      D => Result_0(8),
      R => v1_pixel_tick_GND_2_o_AND_1_o,
      Q => v1_h_count_reg(8)
    );
  v1_h_count_reg_9 : FDRE
    port map (
      C => clk_BUFGP_0,
      CE => Result,
      D => Result_0(9),
      R => v1_pixel_tick_GND_2_o_AND_1_o,
      Q => v1_h_count_reg(9)
    );
  v1_v_count_reg_0 : FDRE
    port map (
      C => clk_BUFGP_0,
      CE => v1_pixel_tick_GND_2_o_AND_1_o,
      D => Result_0_1,
      R => v1_n0069_82,
      Q => v1_v_count_reg(0)
    );
  v1_v_count_reg_1 : FDRE
    port map (
      C => clk_BUFGP_0,
      CE => v1_pixel_tick_GND_2_o_AND_1_o,
      D => Result_1_1,
      R => v1_n0069_82,
      Q => v1_v_count_reg(1)
    );
  v1_v_count_reg_2 : FDRE
    port map (
      C => clk_BUFGP_0,
      CE => v1_pixel_tick_GND_2_o_AND_1_o,
      D => Result_2_1,
      R => v1_n0069_82,
      Q => v1_v_count_reg(2)
    );
  v1_v_count_reg_3 : FDRE
    port map (
      C => clk_BUFGP_0,
      CE => v1_pixel_tick_GND_2_o_AND_1_o,
      D => Result_3_1,
      R => v1_n0069_82,
      Q => v1_v_count_reg(3)
    );
  v1_v_count_reg_4 : FDRE
    port map (
      C => clk_BUFGP_0,
      CE => v1_pixel_tick_GND_2_o_AND_1_o,
      D => Result_4_1,
      R => v1_n0069_82,
      Q => v1_v_count_reg(4)
    );
  v1_v_count_reg_5 : FDRE
    port map (
      C => clk_BUFGP_0,
      CE => v1_pixel_tick_GND_2_o_AND_1_o,
      D => Result_5_1,
      R => v1_n0069_82,
      Q => v1_v_count_reg(5)
    );
  v1_v_count_reg_6 : FDRE
    port map (
      C => clk_BUFGP_0,
      CE => v1_pixel_tick_GND_2_o_AND_1_o,
      D => Result_6_1,
      R => v1_n0069_82,
      Q => v1_v_count_reg(6)
    );
  v1_v_count_reg_7 : FDRE
    port map (
      C => clk_BUFGP_0,
      CE => v1_pixel_tick_GND_2_o_AND_1_o,
      D => Result_7_1,
      R => v1_n0069_82,
      Q => v1_v_count_reg(7)
    );
  v1_v_count_reg_8 : FDRE
    port map (
      C => clk_BUFGP_0,
      CE => v1_pixel_tick_GND_2_o_AND_1_o,
      D => Result_8_1,
      R => v1_n0069_82,
      Q => v1_v_count_reg(8)
    );
  v1_v_count_reg_9 : FDRE
    port map (
      C => clk_BUFGP_0,
      CE => v1_pixel_tick_GND_2_o_AND_1_o,
      D => Result_9_1,
      R => v1_n0069_82,
      Q => v1_v_count_reg(9)
    );
  c1_Mcount_i_cy_0_Q : MUXCY
    port map (
      CI => b1_Madd_n0153_cy(9),
      DI => b1_dx_0_Q,
      S => Result,
      O => c1_Mcount_i_cy(0)
    );
  c1_Mcount_i_cy_1_Q : MUXCY
    port map (
      CI => c1_Mcount_i_cy(0),
      DI => b1_Madd_n0153_cy(9),
      S => c1_Mcount_i_cy_1_rt_813,
      O => c1_Mcount_i_cy(1)
    );
  c1_Mcount_i_xor_1_Q : XORCY
    port map (
      CI => c1_Mcount_i_cy(0),
      LI => c1_Mcount_i_cy_1_rt_813,
      O => Result_1_2
    );
  c1_Mcount_i_cy_2_Q : MUXCY
    port map (
      CI => c1_Mcount_i_cy(1),
      DI => b1_Madd_n0153_cy(9),
      S => c1_Mcount_i_cy_2_rt_814,
      O => c1_Mcount_i_cy(2)
    );
  c1_Mcount_i_xor_2_Q : XORCY
    port map (
      CI => c1_Mcount_i_cy(1),
      LI => c1_Mcount_i_cy_2_rt_814,
      O => Result_2_2
    );
  c1_Mcount_i_cy_3_Q : MUXCY
    port map (
      CI => c1_Mcount_i_cy(2),
      DI => b1_Madd_n0153_cy(9),
      S => c1_Mcount_i_cy_3_rt_815,
      O => c1_Mcount_i_cy(3)
    );
  c1_Mcount_i_xor_3_Q : XORCY
    port map (
      CI => c1_Mcount_i_cy(2),
      LI => c1_Mcount_i_cy_3_rt_815,
      O => Result_3_2
    );
  c1_Mcount_i_cy_4_Q : MUXCY
    port map (
      CI => c1_Mcount_i_cy(3),
      DI => b1_Madd_n0153_cy(9),
      S => c1_Mcount_i_cy_4_rt_816,
      O => c1_Mcount_i_cy(4)
    );
  c1_Mcount_i_xor_4_Q : XORCY
    port map (
      CI => c1_Mcount_i_cy(3),
      LI => c1_Mcount_i_cy_4_rt_816,
      O => Result_4_2
    );
  c1_Mcount_i_cy_5_Q : MUXCY
    port map (
      CI => c1_Mcount_i_cy(4),
      DI => b1_Madd_n0153_cy(9),
      S => c1_Mcount_i_cy_5_rt_817,
      O => c1_Mcount_i_cy(5)
    );
  c1_Mcount_i_xor_5_Q : XORCY
    port map (
      CI => c1_Mcount_i_cy(4),
      LI => c1_Mcount_i_cy_5_rt_817,
      O => Result_5_2
    );
  c1_Mcount_i_cy_6_Q : MUXCY
    port map (
      CI => c1_Mcount_i_cy(5),
      DI => b1_Madd_n0153_cy(9),
      S => c1_Mcount_i_cy_6_rt_818,
      O => c1_Mcount_i_cy(6)
    );
  c1_Mcount_i_xor_6_Q : XORCY
    port map (
      CI => c1_Mcount_i_cy(5),
      LI => c1_Mcount_i_cy_6_rt_818,
      O => Result_6_2
    );
  c1_Mcount_i_cy_7_Q : MUXCY
    port map (
      CI => c1_Mcount_i_cy(6),
      DI => b1_Madd_n0153_cy(9),
      S => c1_Mcount_i_cy_7_rt_819,
      O => c1_Mcount_i_cy(7)
    );
  c1_Mcount_i_xor_7_Q : XORCY
    port map (
      CI => c1_Mcount_i_cy(6),
      LI => c1_Mcount_i_cy_7_rt_819,
      O => Result_7_2
    );
  c1_Mcount_i_cy_8_Q : MUXCY
    port map (
      CI => c1_Mcount_i_cy(7),
      DI => b1_Madd_n0153_cy(9),
      S => c1_Mcount_i_cy_8_rt_820,
      O => c1_Mcount_i_cy(8)
    );
  c1_Mcount_i_xor_8_Q : XORCY
    port map (
      CI => c1_Mcount_i_cy(7),
      LI => c1_Mcount_i_cy_8_rt_820,
      O => Result_8_2
    );
  c1_Mcount_i_cy_9_Q : MUXCY
    port map (
      CI => c1_Mcount_i_cy(8),
      DI => b1_Madd_n0153_cy(9),
      S => c1_Mcount_i_cy_9_rt_821,
      O => c1_Mcount_i_cy(9)
    );
  c1_Mcount_i_xor_9_Q : XORCY
    port map (
      CI => c1_Mcount_i_cy(8),
      LI => c1_Mcount_i_cy_9_rt_821,
      O => Result_9_2
    );
  c1_Mcount_i_cy_10_Q : MUXCY
    port map (
      CI => c1_Mcount_i_cy(9),
      DI => b1_Madd_n0153_cy(9),
      S => c1_Mcount_i_cy_10_rt_822,
      O => c1_Mcount_i_cy(10)
    );
  c1_Mcount_i_xor_10_Q : XORCY
    port map (
      CI => c1_Mcount_i_cy(9),
      LI => c1_Mcount_i_cy_10_rt_822,
      O => Result_0(10)
    );
  c1_Mcount_i_cy_11_Q : MUXCY
    port map (
      CI => c1_Mcount_i_cy(10),
      DI => b1_Madd_n0153_cy(9),
      S => c1_Mcount_i_cy_11_rt_823,
      O => c1_Mcount_i_cy(11)
    );
  c1_Mcount_i_xor_11_Q : XORCY
    port map (
      CI => c1_Mcount_i_cy(10),
      LI => c1_Mcount_i_cy_11_rt_823,
      O => Result_0(11)
    );
  c1_Mcount_i_cy_12_Q : MUXCY
    port map (
      CI => c1_Mcount_i_cy(11),
      DI => b1_Madd_n0153_cy(9),
      S => c1_Mcount_i_cy_12_rt_824,
      O => c1_Mcount_i_cy(12)
    );
  c1_Mcount_i_xor_12_Q : XORCY
    port map (
      CI => c1_Mcount_i_cy(11),
      LI => c1_Mcount_i_cy_12_rt_824,
      O => Result_0(12)
    );
  c1_Mcount_i_cy_13_Q : MUXCY
    port map (
      CI => c1_Mcount_i_cy(12),
      DI => b1_Madd_n0153_cy(9),
      S => c1_Mcount_i_cy_13_rt_825,
      O => c1_Mcount_i_cy(13)
    );
  c1_Mcount_i_xor_13_Q : XORCY
    port map (
      CI => c1_Mcount_i_cy(12),
      LI => c1_Mcount_i_cy_13_rt_825,
      O => Result_0(13)
    );
  c1_Mcount_i_cy_14_Q : MUXCY
    port map (
      CI => c1_Mcount_i_cy(13),
      DI => b1_Madd_n0153_cy(9),
      S => c1_Mcount_i_cy_14_rt_826,
      O => c1_Mcount_i_cy(14)
    );
  c1_Mcount_i_xor_14_Q : XORCY
    port map (
      CI => c1_Mcount_i_cy(13),
      LI => c1_Mcount_i_cy_14_rt_826,
      O => Result_0(14)
    );
  c1_Mcount_i_cy_15_Q : MUXCY
    port map (
      CI => c1_Mcount_i_cy(14),
      DI => b1_Madd_n0153_cy(9),
      S => c1_Mcount_i_cy_15_rt_827,
      O => c1_Mcount_i_cy(15)
    );
  c1_Mcount_i_xor_15_Q : XORCY
    port map (
      CI => c1_Mcount_i_cy(14),
      LI => c1_Mcount_i_cy_15_rt_827,
      O => Result_0(15)
    );
  c1_Mcount_i_xor_16_Q : XORCY
    port map (
      CI => c1_Mcount_i_cy(15),
      LI => c1_Mcount_i_xor_16_rt_844,
      O => Result_0(16)
    );
  v1_Mcount_h_count_reg_cy_0_Q : MUXCY
    port map (
      CI => b1_Madd_n0153_cy(9),
      DI => b1_dx_0_Q,
      S => v1_Mcount_h_count_reg_lut(0),
      O => v1_Mcount_h_count_reg_cy(0)
    );
  v1_Mcount_h_count_reg_xor_0_Q : XORCY
    port map (
      CI => b1_Madd_n0153_cy(9),
      LI => v1_Mcount_h_count_reg_lut(0),
      O => Result_0(0)
    );
  v1_Mcount_h_count_reg_cy_1_Q : MUXCY
    port map (
      CI => v1_Mcount_h_count_reg_cy(0),
      DI => b1_Madd_n0153_cy(9),
      S => v1_Mcount_h_count_reg_cy_1_rt_828,
      O => v1_Mcount_h_count_reg_cy(1)
    );
  v1_Mcount_h_count_reg_xor_1_Q : XORCY
    port map (
      CI => v1_Mcount_h_count_reg_cy(0),
      LI => v1_Mcount_h_count_reg_cy_1_rt_828,
      O => Result_0(1)
    );
  v1_Mcount_h_count_reg_cy_2_Q : MUXCY
    port map (
      CI => v1_Mcount_h_count_reg_cy(1),
      DI => b1_Madd_n0153_cy(9),
      S => v1_Mcount_h_count_reg_cy_2_rt_829,
      O => v1_Mcount_h_count_reg_cy(2)
    );
  v1_Mcount_h_count_reg_xor_2_Q : XORCY
    port map (
      CI => v1_Mcount_h_count_reg_cy(1),
      LI => v1_Mcount_h_count_reg_cy_2_rt_829,
      O => Result_0(2)
    );
  v1_Mcount_h_count_reg_cy_3_Q : MUXCY
    port map (
      CI => v1_Mcount_h_count_reg_cy(2),
      DI => b1_Madd_n0153_cy(9),
      S => v1_Mcount_h_count_reg_cy_3_rt_830,
      O => v1_Mcount_h_count_reg_cy(3)
    );
  v1_Mcount_h_count_reg_xor_3_Q : XORCY
    port map (
      CI => v1_Mcount_h_count_reg_cy(2),
      LI => v1_Mcount_h_count_reg_cy_3_rt_830,
      O => Result_0(3)
    );
  v1_Mcount_h_count_reg_cy_4_Q : MUXCY
    port map (
      CI => v1_Mcount_h_count_reg_cy(3),
      DI => b1_Madd_n0153_cy(9),
      S => v1_Mcount_h_count_reg_cy_4_rt_831,
      O => v1_Mcount_h_count_reg_cy(4)
    );
  v1_Mcount_h_count_reg_xor_4_Q : XORCY
    port map (
      CI => v1_Mcount_h_count_reg_cy(3),
      LI => v1_Mcount_h_count_reg_cy_4_rt_831,
      O => Result_0(4)
    );
  v1_Mcount_h_count_reg_cy_5_Q : MUXCY
    port map (
      CI => v1_Mcount_h_count_reg_cy(4),
      DI => b1_Madd_n0153_cy(9),
      S => v1_Mcount_h_count_reg_cy_5_rt_832,
      O => v1_Mcount_h_count_reg_cy(5)
    );
  v1_Mcount_h_count_reg_xor_5_Q : XORCY
    port map (
      CI => v1_Mcount_h_count_reg_cy(4),
      LI => v1_Mcount_h_count_reg_cy_5_rt_832,
      O => Result_0(5)
    );
  v1_Mcount_h_count_reg_cy_6_Q : MUXCY
    port map (
      CI => v1_Mcount_h_count_reg_cy(5),
      DI => b1_Madd_n0153_cy(9),
      S => v1_Mcount_h_count_reg_cy_6_rt_833,
      O => v1_Mcount_h_count_reg_cy(6)
    );
  v1_Mcount_h_count_reg_xor_6_Q : XORCY
    port map (
      CI => v1_Mcount_h_count_reg_cy(5),
      LI => v1_Mcount_h_count_reg_cy_6_rt_833,
      O => Result_0(6)
    );
  v1_Mcount_h_count_reg_cy_7_Q : MUXCY
    port map (
      CI => v1_Mcount_h_count_reg_cy(6),
      DI => b1_Madd_n0153_cy(9),
      S => v1_Mcount_h_count_reg_cy_7_rt_834,
      O => v1_Mcount_h_count_reg_cy(7)
    );
  v1_Mcount_h_count_reg_xor_7_Q : XORCY
    port map (
      CI => v1_Mcount_h_count_reg_cy(6),
      LI => v1_Mcount_h_count_reg_cy_7_rt_834,
      O => Result_0(7)
    );
  v1_Mcount_h_count_reg_cy_8_Q : MUXCY
    port map (
      CI => v1_Mcount_h_count_reg_cy(7),
      DI => b1_Madd_n0153_cy(9),
      S => v1_Mcount_h_count_reg_cy_8_rt_835,
      O => v1_Mcount_h_count_reg_cy(8)
    );
  v1_Mcount_h_count_reg_xor_8_Q : XORCY
    port map (
      CI => v1_Mcount_h_count_reg_cy(7),
      LI => v1_Mcount_h_count_reg_cy_8_rt_835,
      O => Result_0(8)
    );
  v1_Mcount_h_count_reg_xor_9_Q : XORCY
    port map (
      CI => v1_Mcount_h_count_reg_cy(8),
      LI => v1_Mcount_h_count_reg_xor_9_rt_845,
      O => Result_0(9)
    );
  v1_Mcount_v_count_reg_cy_0_Q : MUXCY
    port map (
      CI => b1_Madd_n0153_cy(9),
      DI => b1_dx_0_Q,
      S => v1_Mcount_v_count_reg_lut(0),
      O => v1_Mcount_v_count_reg_cy(0)
    );
  v1_Mcount_v_count_reg_xor_0_Q : XORCY
    port map (
      CI => b1_Madd_n0153_cy(9),
      LI => v1_Mcount_v_count_reg_lut(0),
      O => Result_0_1
    );
  v1_Mcount_v_count_reg_cy_1_Q : MUXCY
    port map (
      CI => v1_Mcount_v_count_reg_cy(0),
      DI => b1_Madd_n0153_cy(9),
      S => v1_Mcount_v_count_reg_cy_1_rt_836,
      O => v1_Mcount_v_count_reg_cy(1)
    );
  v1_Mcount_v_count_reg_xor_1_Q : XORCY
    port map (
      CI => v1_Mcount_v_count_reg_cy(0),
      LI => v1_Mcount_v_count_reg_cy_1_rt_836,
      O => Result_1_1
    );
  v1_Mcount_v_count_reg_cy_2_Q : MUXCY
    port map (
      CI => v1_Mcount_v_count_reg_cy(1),
      DI => b1_Madd_n0153_cy(9),
      S => v1_Mcount_v_count_reg_cy_2_rt_837,
      O => v1_Mcount_v_count_reg_cy(2)
    );
  v1_Mcount_v_count_reg_xor_2_Q : XORCY
    port map (
      CI => v1_Mcount_v_count_reg_cy(1),
      LI => v1_Mcount_v_count_reg_cy_2_rt_837,
      O => Result_2_1
    );
  v1_Mcount_v_count_reg_cy_3_Q : MUXCY
    port map (
      CI => v1_Mcount_v_count_reg_cy(2),
      DI => b1_Madd_n0153_cy(9),
      S => v1_Mcount_v_count_reg_cy_3_rt_838,
      O => v1_Mcount_v_count_reg_cy(3)
    );
  v1_Mcount_v_count_reg_xor_3_Q : XORCY
    port map (
      CI => v1_Mcount_v_count_reg_cy(2),
      LI => v1_Mcount_v_count_reg_cy_3_rt_838,
      O => Result_3_1
    );
  v1_Mcount_v_count_reg_cy_4_Q : MUXCY
    port map (
      CI => v1_Mcount_v_count_reg_cy(3),
      DI => b1_Madd_n0153_cy(9),
      S => v1_Mcount_v_count_reg_cy_4_rt_839,
      O => v1_Mcount_v_count_reg_cy(4)
    );
  v1_Mcount_v_count_reg_xor_4_Q : XORCY
    port map (
      CI => v1_Mcount_v_count_reg_cy(3),
      LI => v1_Mcount_v_count_reg_cy_4_rt_839,
      O => Result_4_1
    );
  v1_Mcount_v_count_reg_cy_5_Q : MUXCY
    port map (
      CI => v1_Mcount_v_count_reg_cy(4),
      DI => b1_Madd_n0153_cy(9),
      S => v1_Mcount_v_count_reg_cy_5_rt_840,
      O => v1_Mcount_v_count_reg_cy(5)
    );
  v1_Mcount_v_count_reg_xor_5_Q : XORCY
    port map (
      CI => v1_Mcount_v_count_reg_cy(4),
      LI => v1_Mcount_v_count_reg_cy_5_rt_840,
      O => Result_5_1
    );
  v1_Mcount_v_count_reg_cy_6_Q : MUXCY
    port map (
      CI => v1_Mcount_v_count_reg_cy(5),
      DI => b1_Madd_n0153_cy(9),
      S => v1_Mcount_v_count_reg_cy_6_rt_841,
      O => v1_Mcount_v_count_reg_cy(6)
    );
  v1_Mcount_v_count_reg_xor_6_Q : XORCY
    port map (
      CI => v1_Mcount_v_count_reg_cy(5),
      LI => v1_Mcount_v_count_reg_cy_6_rt_841,
      O => Result_6_1
    );
  v1_Mcount_v_count_reg_cy_7_Q : MUXCY
    port map (
      CI => v1_Mcount_v_count_reg_cy(6),
      DI => b1_Madd_n0153_cy(9),
      S => v1_Mcount_v_count_reg_cy_7_rt_842,
      O => v1_Mcount_v_count_reg_cy(7)
    );
  v1_Mcount_v_count_reg_xor_7_Q : XORCY
    port map (
      CI => v1_Mcount_v_count_reg_cy(6),
      LI => v1_Mcount_v_count_reg_cy_7_rt_842,
      O => Result_7_1
    );
  v1_Mcount_v_count_reg_cy_8_Q : MUXCY
    port map (
      CI => v1_Mcount_v_count_reg_cy(7),
      DI => b1_Madd_n0153_cy(9),
      S => v1_Mcount_v_count_reg_cy_8_rt_843,
      O => v1_Mcount_v_count_reg_cy(8)
    );
  v1_Mcount_v_count_reg_xor_8_Q : XORCY
    port map (
      CI => v1_Mcount_v_count_reg_cy(7),
      LI => v1_Mcount_v_count_reg_cy_8_rt_843,
      O => Result_8_1
    );
  v1_Mcount_v_count_reg_xor_9_Q : XORCY
    port map (
      CI => v1_Mcount_v_count_reg_cy(8),
      LI => v1_Mcount_v_count_reg_xor_9_rt_846,
      O => Result_9_1
    );
  r1_rgb_reg_11 : FDR
    port map (
      C => clk_BUFGP_0,
      D => r1_GND_3_o_GND_3_o_mux_9_OUT_11_Q,
      R => Q_i000001_reset_inv,
      Q => r1_rgb_reg_11_Q
    );
  r1_rgb_reg_7 : FDR
    port map (
      C => clk_BUFGP_0,
      D => r1_Mmux_GND_3_o_GND_3_o_mux_9_OUT15_180,
      R => Q_i000001_reset_inv,
      Q => r1_rgb_reg_7_Q
    );
  r1_rgb_reg_3 : FDR
    port map (
      C => clk_BUFGP_0,
      D => r1_GND_3_o_GND_3_o_mux_9_OUT_3_Q,
      R => Q_i000001_reset_inv,
      Q => r1_rgb_reg_3_Q
    );
  b1_Madd_n0114_Madd_xor_9_Q : XORCY
    port map (
      CI => b1_Madd_n0114_Madd_cy(8),
      LI => b1_Madd_n0114_Madd_lut(9),
      O => b1_n0114(9)
    );
  b1_Madd_n0114_Madd_xor_8_Q : XORCY
    port map (
      CI => b1_Madd_n0114_Madd_cy(7),
      LI => b1_Madd_n0114_Madd_lut(8),
      O => b1_n0114(8)
    );
  b1_Madd_n0114_Madd_cy_8_Q : MUXCY
    port map (
      CI => b1_Madd_n0114_Madd_cy(7),
      DI => b1_x_ball(8),
      S => b1_Madd_n0114_Madd_lut(8),
      O => b1_Madd_n0114_Madd_cy(8)
    );
  b1_Madd_n0114_Madd_xor_7_Q : XORCY
    port map (
      CI => b1_Madd_n0114_Madd_cy(6),
      LI => b1_Madd_n0114_Madd_lut(7),
      O => b1_n0114(7)
    );
  b1_Madd_n0114_Madd_cy_7_Q : MUXCY
    port map (
      CI => b1_Madd_n0114_Madd_cy(6),
      DI => b1_x_ball(7),
      S => b1_Madd_n0114_Madd_lut(7),
      O => b1_Madd_n0114_Madd_cy(7)
    );
  b1_Madd_n0114_Madd_xor_6_Q : XORCY
    port map (
      CI => b1_Madd_n0114_Madd_cy(5),
      LI => b1_Madd_n0114_Madd_lut(6),
      O => b1_n0114(6)
    );
  b1_Madd_n0114_Madd_cy_6_Q : MUXCY
    port map (
      CI => b1_Madd_n0114_Madd_cy(5),
      DI => b1_x_ball(6),
      S => b1_Madd_n0114_Madd_lut(6),
      O => b1_Madd_n0114_Madd_cy(6)
    );
  b1_Madd_n0114_Madd_xor_5_Q : XORCY
    port map (
      CI => b1_Madd_n0114_Madd_cy(4),
      LI => b1_Madd_n0114_Madd_lut(5),
      O => b1_n0114(5)
    );
  b1_Madd_n0114_Madd_cy_5_Q : MUXCY
    port map (
      CI => b1_Madd_n0114_Madd_cy(4),
      DI => b1_x_ball(5),
      S => b1_Madd_n0114_Madd_lut(5),
      O => b1_Madd_n0114_Madd_cy(5)
    );
  b1_Madd_n0114_Madd_xor_4_Q : XORCY
    port map (
      CI => b1_Madd_n0114_Madd_cy(3),
      LI => b1_Madd_n0114_Madd_lut(4),
      O => b1_n0114(4)
    );
  b1_Madd_n0114_Madd_cy_4_Q : MUXCY
    port map (
      CI => b1_Madd_n0114_Madd_cy(3),
      DI => b1_x_ball(4),
      S => b1_Madd_n0114_Madd_lut(4),
      O => b1_Madd_n0114_Madd_cy(4)
    );
  b1_Madd_n0114_Madd_xor_3_Q : XORCY
    port map (
      CI => b1_Madd_n0114_Madd_cy(2),
      LI => b1_Madd_n0114_Madd_lut(3),
      O => b1_n0114(3)
    );
  b1_Madd_n0114_Madd_cy_3_Q : MUXCY
    port map (
      CI => b1_Madd_n0114_Madd_cy(2),
      DI => b1_x_ball(3),
      S => b1_Madd_n0114_Madd_lut(3),
      O => b1_Madd_n0114_Madd_cy(3)
    );
  b1_Madd_n0114_Madd_xor_2_Q : XORCY
    port map (
      CI => b1_Madd_n0114_Madd_cy(1),
      LI => b1_Madd_n0114_Madd_lut(2),
      O => b1_n0114(2)
    );
  b1_Madd_n0114_Madd_cy_2_Q : MUXCY
    port map (
      CI => b1_Madd_n0114_Madd_cy(1),
      DI => b1_x_ball(2),
      S => b1_Madd_n0114_Madd_lut(2),
      O => b1_Madd_n0114_Madd_cy(2)
    );
  b1_Madd_n0114_Madd_xor_1_Q : XORCY
    port map (
      CI => b1_Madd_n0114_Madd_cy(0),
      LI => b1_Madd_n0114_Madd_lut(1),
      O => b1_n0114(1)
    );
  b1_Madd_n0114_Madd_cy_1_Q : MUXCY
    port map (
      CI => b1_Madd_n0114_Madd_cy(0),
      DI => b1_x_ball(1),
      S => b1_Madd_n0114_Madd_lut(1),
      O => b1_Madd_n0114_Madd_cy(1)
    );
  b1_Madd_n0114_Madd_cy_0_Q : MUXCY
    port map (
      CI => b1_Madd_n0153_cy(9),
      DI => b1_y_ball(0),
      S => b1_Madd_n0114_Madd_lut(0),
      O => b1_Madd_n0114_Madd_cy(0)
    );
  b1_Msub_dy_31_unary_minus_30_OUT_xor_9_Q : XORCY
    port map (
      CI => b1_Msub_dy_31_unary_minus_30_OUT_cy_8_Q_211,
      LI => b1_Msub_dy_31_unary_minus_30_OUT_lut_9_Q_210,
      O => b1_dy_31_unary_minus_30_OUT_9_Q
    );
  b1_Msub_dy_31_unary_minus_30_OUT_cy_8_Q : MUXCY
    port map (
      CI => b1_Madd_n0153_cy(9),
      DI => b1_Madd_n0153_cy(9),
      S => b1_Msub_dy_31_unary_minus_30_OUT_lut_8_Q_212,
      O => b1_Msub_dy_31_unary_minus_30_OUT_cy_8_Q_211
    );
  b1_Msub_dx_31_unary_minus_31_OUT_xor_9_Q : XORCY
    port map (
      CI => b1_Msub_dx_31_unary_minus_31_OUT_cy_8_Q_214,
      LI => b1_Msub_dx_31_unary_minus_31_OUT_lut_9_Q_213,
      O => b1_dx_31_unary_minus_31_OUT_9_Q
    );
  b1_Msub_dx_31_unary_minus_31_OUT_cy_8_Q : MUXCY
    port map (
      CI => b1_Madd_n0153_cy(9),
      DI => b1_Madd_n0153_cy(9),
      S => b1_Msub_dx_31_unary_minus_31_OUT_lut_8_Q_215,
      O => b1_Msub_dx_31_unary_minus_31_OUT_cy_8_Q_214
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_xor_9_Q : XORCY
    port map (
      CI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_8_Q_217,
      LI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_9_Q_216,
      O => b1_GND_5_o_dy_31_sub_34_OUT_9_Q
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_xor_8_Q : XORCY
    port map (
      CI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_7_Q_219,
      LI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_8_Q_218,
      O => b1_GND_5_o_dy_31_sub_34_OUT_8_Q
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_8_Q : MUXCY
    port map (
      CI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_7_Q_219,
      DI => b1_y_ball(8),
      S => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_8_Q_218,
      O => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_8_Q_217
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_xor_7_Q : XORCY
    port map (
      CI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_6_Q_221,
      LI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_7_Q_220,
      O => b1_GND_5_o_dy_31_sub_34_OUT_7_Q
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_7_Q : MUXCY
    port map (
      CI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_6_Q_221,
      DI => b1_y_ball(7),
      S => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_7_Q_220,
      O => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_7_Q_219
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_xor_6_Q : XORCY
    port map (
      CI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_5_Q_223,
      LI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_6_Q_222,
      O => b1_GND_5_o_dy_31_sub_34_OUT_6_Q
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_6_Q : MUXCY
    port map (
      CI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_5_Q_223,
      DI => b1_y_ball(6),
      S => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_6_Q_222,
      O => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_6_Q_221
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_xor_5_Q : XORCY
    port map (
      CI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_4_Q_225,
      LI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_5_Q_224,
      O => b1_GND_5_o_dy_31_sub_34_OUT_5_Q
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_5_Q : MUXCY
    port map (
      CI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_4_Q_225,
      DI => b1_y_ball(5),
      S => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_5_Q_224,
      O => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_5_Q_223
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_xor_4_Q : XORCY
    port map (
      CI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_3_Q_227,
      LI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_4_Q_226,
      O => b1_GND_5_o_dy_31_sub_34_OUT_4_Q
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_4_Q : MUXCY
    port map (
      CI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_3_Q_227,
      DI => b1_y_ball(4),
      S => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_4_Q_226,
      O => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_4_Q_225
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_xor_3_Q : XORCY
    port map (
      CI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_2_Q_229,
      LI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_3_Q_228,
      O => b1_GND_5_o_dy_31_sub_34_OUT_3_Q
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_3_Q : MUXCY
    port map (
      CI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_2_Q_229,
      DI => b1_y_ball(3),
      S => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_3_Q_228,
      O => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_3_Q_227
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_xor_2_Q : XORCY
    port map (
      CI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_1_Q_231,
      LI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_2_Q_230,
      O => b1_GND_5_o_dy_31_sub_34_OUT_2_Q
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_2_Q : MUXCY
    port map (
      CI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_1_Q_231,
      DI => b1_y_ball(2),
      S => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_2_Q_230,
      O => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_2_Q_229
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_xor_1_Q : XORCY
    port map (
      CI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_0_Q_233,
      LI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_1_Q_232,
      O => b1_GND_5_o_dy_31_sub_34_OUT_1_Q
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_1_Q : MUXCY
    port map (
      CI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_0_Q_233,
      DI => b1_y_ball(1),
      S => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_1_Q_232,
      O => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_1_Q_231
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_xor_0_Q : XORCY
    port map (
      CI => b1_dx_0_Q,
      LI => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_0_rt_851,
      O => b1_GND_5_o_dy_31_sub_34_OUT_0_Q
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_0_Q : MUXCY
    port map (
      CI => b1_dx_0_Q,
      DI => b1_y_ball(0),
      S => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_0_rt_851,
      O => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_0_Q_233
    );
  b1_Msub_dx_31_unary_minus_23_OUT_xor_9_Q : XORCY
    port map (
      CI => b1_Msub_dx_31_unary_minus_23_OUT_cy_8_Q_236,
      LI => b1_Msub_dx_31_unary_minus_23_OUT_lut_9_Q,
      O => b1_dx_31_unary_minus_23_OUT_9_Q
    );
  b1_Msub_dx_31_unary_minus_23_OUT_xor_8_Q : XORCY
    port map (
      CI => b1_Msub_dx_31_unary_minus_23_OUT_cy_7_Q_238,
      LI => b1_Msub_dx_31_unary_minus_23_OUT_lut_8_Q,
      O => b1_dx_31_unary_minus_23_OUT_8_Q
    );
  b1_Msub_dx_31_unary_minus_23_OUT_cy_8_Q : MUXCY
    port map (
      CI => b1_Msub_dx_31_unary_minus_23_OUT_cy_7_Q_238,
      DI => b1_Madd_n0153_cy(9),
      S => b1_Msub_dx_31_unary_minus_23_OUT_lut_8_Q,
      O => b1_Msub_dx_31_unary_minus_23_OUT_cy_8_Q_236
    );
  b1_Msub_dx_31_unary_minus_23_OUT_xor_7_Q : XORCY
    port map (
      CI => b1_Msub_dx_31_unary_minus_23_OUT_cy_6_Q_240,
      LI => b1_Msub_dx_31_unary_minus_23_OUT_lut_7_Q,
      O => b1_dx_31_unary_minus_23_OUT_7_Q
    );
  b1_Msub_dx_31_unary_minus_23_OUT_cy_7_Q : MUXCY
    port map (
      CI => b1_Msub_dx_31_unary_minus_23_OUT_cy_6_Q_240,
      DI => b1_Madd_n0153_cy(9),
      S => b1_Msub_dx_31_unary_minus_23_OUT_lut_7_Q,
      O => b1_Msub_dx_31_unary_minus_23_OUT_cy_7_Q_238
    );
  b1_Msub_dx_31_unary_minus_23_OUT_xor_6_Q : XORCY
    port map (
      CI => b1_Msub_dx_31_unary_minus_23_OUT_cy_5_Q_242,
      LI => b1_Msub_dx_31_unary_minus_23_OUT_lut_6_Q,
      O => b1_dx_31_unary_minus_23_OUT_6_Q
    );
  b1_Msub_dx_31_unary_minus_23_OUT_cy_6_Q : MUXCY
    port map (
      CI => b1_Msub_dx_31_unary_minus_23_OUT_cy_5_Q_242,
      DI => b1_Madd_n0153_cy(9),
      S => b1_Msub_dx_31_unary_minus_23_OUT_lut_6_Q,
      O => b1_Msub_dx_31_unary_minus_23_OUT_cy_6_Q_240
    );
  b1_Msub_dx_31_unary_minus_23_OUT_xor_5_Q : XORCY
    port map (
      CI => b1_Msub_dx_31_unary_minus_23_OUT_cy_4_Q_244,
      LI => b1_Msub_dx_31_unary_minus_23_OUT_lut_5_Q,
      O => b1_dx_31_unary_minus_23_OUT_5_Q
    );
  b1_Msub_dx_31_unary_minus_23_OUT_cy_5_Q : MUXCY
    port map (
      CI => b1_Msub_dx_31_unary_minus_23_OUT_cy_4_Q_244,
      DI => b1_Madd_n0153_cy(9),
      S => b1_Msub_dx_31_unary_minus_23_OUT_lut_5_Q,
      O => b1_Msub_dx_31_unary_minus_23_OUT_cy_5_Q_242
    );
  b1_Msub_dx_31_unary_minus_23_OUT_xor_4_Q : XORCY
    port map (
      CI => b1_Msub_dx_31_unary_minus_23_OUT_cy_3_Q_246,
      LI => b1_Msub_dx_31_unary_minus_23_OUT_lut_4_Q,
      O => b1_dx_31_unary_minus_23_OUT_4_Q
    );
  b1_Msub_dx_31_unary_minus_23_OUT_cy_4_Q : MUXCY
    port map (
      CI => b1_Msub_dx_31_unary_minus_23_OUT_cy_3_Q_246,
      DI => b1_Madd_n0153_cy(9),
      S => b1_Msub_dx_31_unary_minus_23_OUT_lut_4_Q,
      O => b1_Msub_dx_31_unary_minus_23_OUT_cy_4_Q_244
    );
  b1_Msub_dx_31_unary_minus_23_OUT_xor_3_Q : XORCY
    port map (
      CI => b1_Msub_dx_31_unary_minus_23_OUT_cy_2_Q_248,
      LI => b1_Msub_dx_31_unary_minus_23_OUT_lut_3_Q,
      O => b1_dx_31_unary_minus_23_OUT_3_Q
    );
  b1_Msub_dx_31_unary_minus_23_OUT_cy_3_Q : MUXCY
    port map (
      CI => b1_Msub_dx_31_unary_minus_23_OUT_cy_2_Q_248,
      DI => b1_Madd_n0153_cy(9),
      S => b1_Msub_dx_31_unary_minus_23_OUT_lut_3_Q,
      O => b1_Msub_dx_31_unary_minus_23_OUT_cy_3_Q_246
    );
  b1_Msub_dx_31_unary_minus_23_OUT_xor_2_Q : XORCY
    port map (
      CI => b1_Msub_dx_31_unary_minus_23_OUT_cy_1_Q_250,
      LI => b1_Msub_dx_31_unary_minus_23_OUT_lut_2_Q,
      O => b1_dx_31_unary_minus_23_OUT_2_Q
    );
  b1_Msub_dx_31_unary_minus_23_OUT_cy_2_Q : MUXCY
    port map (
      CI => b1_Msub_dx_31_unary_minus_23_OUT_cy_1_Q_250,
      DI => b1_Madd_n0153_cy(9),
      S => b1_Msub_dx_31_unary_minus_23_OUT_lut_2_Q,
      O => b1_Msub_dx_31_unary_minus_23_OUT_cy_2_Q_248
    );
  b1_Msub_dx_31_unary_minus_23_OUT_xor_1_Q : XORCY
    port map (
      CI => b1_Msub_dx_31_unary_minus_23_OUT_cy_0_Q_252,
      LI => b1_Msub_dx_31_unary_minus_23_OUT_lut_1_Q,
      O => b1_dx_31_unary_minus_23_OUT_1_Q
    );
  b1_Msub_dx_31_unary_minus_23_OUT_cy_1_Q : MUXCY
    port map (
      CI => b1_Msub_dx_31_unary_minus_23_OUT_cy_0_Q_252,
      DI => b1_Madd_n0153_cy(9),
      S => b1_Msub_dx_31_unary_minus_23_OUT_lut_1_Q,
      O => b1_Msub_dx_31_unary_minus_23_OUT_cy_1_Q_250
    );
  b1_Msub_dx_31_unary_minus_23_OUT_cy_0_Q : MUXCY
    port map (
      CI => b1_dx_0_Q,
      DI => b1_Madd_n0153_cy(9),
      S => b1_Madd_n0153_cy(9),
      O => b1_Msub_dx_31_unary_minus_23_OUT_cy_0_Q_252
    );
  b1_Msub_dy_31_unary_minus_7_OUT_xor_9_Q : XORCY
    port map (
      CI => b1_Msub_dy_31_unary_minus_7_OUT_cy_8_Q_254,
      LI => b1_Msub_dy_31_unary_minus_7_OUT_lut_9_Q,
      O => b1_dy_31_unary_minus_7_OUT_9_Q
    );
  b1_Msub_dy_31_unary_minus_7_OUT_xor_8_Q : XORCY
    port map (
      CI => b1_Msub_dy_31_unary_minus_7_OUT_cy_7_Q_256,
      LI => b1_Msub_dy_31_unary_minus_7_OUT_lut_8_Q,
      O => b1_dy_31_unary_minus_7_OUT_8_Q
    );
  b1_Msub_dy_31_unary_minus_7_OUT_cy_8_Q : MUXCY
    port map (
      CI => b1_Msub_dy_31_unary_minus_7_OUT_cy_7_Q_256,
      DI => b1_Madd_n0153_cy(9),
      S => b1_Msub_dy_31_unary_minus_7_OUT_lut_8_Q,
      O => b1_Msub_dy_31_unary_minus_7_OUT_cy_8_Q_254
    );
  b1_Msub_dy_31_unary_minus_7_OUT_xor_7_Q : XORCY
    port map (
      CI => b1_Msub_dy_31_unary_minus_7_OUT_cy_6_Q_258,
      LI => b1_Msub_dy_31_unary_minus_7_OUT_lut_7_Q,
      O => b1_dy_31_unary_minus_7_OUT_7_Q
    );
  b1_Msub_dy_31_unary_minus_7_OUT_cy_7_Q : MUXCY
    port map (
      CI => b1_Msub_dy_31_unary_minus_7_OUT_cy_6_Q_258,
      DI => b1_Madd_n0153_cy(9),
      S => b1_Msub_dy_31_unary_minus_7_OUT_lut_7_Q,
      O => b1_Msub_dy_31_unary_minus_7_OUT_cy_7_Q_256
    );
  b1_Msub_dy_31_unary_minus_7_OUT_xor_6_Q : XORCY
    port map (
      CI => b1_Msub_dy_31_unary_minus_7_OUT_cy_5_Q_260,
      LI => b1_Msub_dy_31_unary_minus_7_OUT_lut_6_Q,
      O => b1_dy_31_unary_minus_7_OUT_6_Q
    );
  b1_Msub_dy_31_unary_minus_7_OUT_cy_6_Q : MUXCY
    port map (
      CI => b1_Msub_dy_31_unary_minus_7_OUT_cy_5_Q_260,
      DI => b1_Madd_n0153_cy(9),
      S => b1_Msub_dy_31_unary_minus_7_OUT_lut_6_Q,
      O => b1_Msub_dy_31_unary_minus_7_OUT_cy_6_Q_258
    );
  b1_Msub_dy_31_unary_minus_7_OUT_xor_5_Q : XORCY
    port map (
      CI => b1_Msub_dy_31_unary_minus_7_OUT_cy_4_Q_262,
      LI => b1_Msub_dy_31_unary_minus_7_OUT_lut_5_Q,
      O => b1_dy_31_unary_minus_7_OUT_5_Q
    );
  b1_Msub_dy_31_unary_minus_7_OUT_cy_5_Q : MUXCY
    port map (
      CI => b1_Msub_dy_31_unary_minus_7_OUT_cy_4_Q_262,
      DI => b1_Madd_n0153_cy(9),
      S => b1_Msub_dy_31_unary_minus_7_OUT_lut_5_Q,
      O => b1_Msub_dy_31_unary_minus_7_OUT_cy_5_Q_260
    );
  b1_Msub_dy_31_unary_minus_7_OUT_xor_4_Q : XORCY
    port map (
      CI => b1_Msub_dy_31_unary_minus_7_OUT_cy_3_Q_264,
      LI => b1_Msub_dy_31_unary_minus_7_OUT_lut_4_Q,
      O => b1_dy_31_unary_minus_7_OUT_4_Q
    );
  b1_Msub_dy_31_unary_minus_7_OUT_cy_4_Q : MUXCY
    port map (
      CI => b1_Msub_dy_31_unary_minus_7_OUT_cy_3_Q_264,
      DI => b1_Madd_n0153_cy(9),
      S => b1_Msub_dy_31_unary_minus_7_OUT_lut_4_Q,
      O => b1_Msub_dy_31_unary_minus_7_OUT_cy_4_Q_262
    );
  b1_Msub_dy_31_unary_minus_7_OUT_xor_3_Q : XORCY
    port map (
      CI => b1_Msub_dy_31_unary_minus_7_OUT_cy_2_Q_266,
      LI => b1_Msub_dy_31_unary_minus_7_OUT_lut_3_Q,
      O => b1_dy_31_unary_minus_7_OUT_3_Q
    );
  b1_Msub_dy_31_unary_minus_7_OUT_cy_3_Q : MUXCY
    port map (
      CI => b1_Msub_dy_31_unary_minus_7_OUT_cy_2_Q_266,
      DI => b1_Madd_n0153_cy(9),
      S => b1_Msub_dy_31_unary_minus_7_OUT_lut_3_Q,
      O => b1_Msub_dy_31_unary_minus_7_OUT_cy_3_Q_264
    );
  b1_Msub_dy_31_unary_minus_7_OUT_xor_2_Q : XORCY
    port map (
      CI => b1_Msub_dy_31_unary_minus_7_OUT_cy_1_Q_268,
      LI => b1_Msub_dy_31_unary_minus_7_OUT_lut_2_Q,
      O => b1_dy_31_unary_minus_7_OUT_2_Q
    );
  b1_Msub_dy_31_unary_minus_7_OUT_cy_2_Q : MUXCY
    port map (
      CI => b1_Msub_dy_31_unary_minus_7_OUT_cy_1_Q_268,
      DI => b1_Madd_n0153_cy(9),
      S => b1_Msub_dy_31_unary_minus_7_OUT_lut_2_Q,
      O => b1_Msub_dy_31_unary_minus_7_OUT_cy_2_Q_266
    );
  b1_Msub_dy_31_unary_minus_7_OUT_xor_1_Q : XORCY
    port map (
      CI => b1_Msub_dy_31_unary_minus_7_OUT_cy_0_Q_270,
      LI => b1_Msub_dy_31_unary_minus_7_OUT_lut_1_Q,
      O => b1_dy_31_unary_minus_7_OUT_1_Q
    );
  b1_Msub_dy_31_unary_minus_7_OUT_cy_1_Q : MUXCY
    port map (
      CI => b1_Msub_dy_31_unary_minus_7_OUT_cy_0_Q_270,
      DI => b1_Madd_n0153_cy(9),
      S => b1_Msub_dy_31_unary_minus_7_OUT_lut_1_Q,
      O => b1_Msub_dy_31_unary_minus_7_OUT_cy_1_Q_268
    );
  b1_Msub_dy_31_unary_minus_7_OUT_cy_0_Q : MUXCY
    port map (
      CI => b1_dx_0_Q,
      DI => b1_Madd_n0153_cy(9),
      S => b1_Madd_n0153_cy(9),
      O => b1_Msub_dy_31_unary_minus_7_OUT_cy_0_Q_270
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_cy_4_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_cy(3),
      DI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lutdi4,
      S => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lut(4),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_cy(4)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_cy_3_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_cy(2),
      DI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lutdi3_276,
      S => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lut(3),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_cy(3)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lut_3_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_x_ball(6),
      I1 => b1_dx_0_Q,
      I2 => b1_x_ball(7),
      I3 => b1_Madd_n0153_cy(9),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lut(3)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lutdi3 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_Madd_n0153_cy(9),
      I1 => b1_dx_0_Q,
      I2 => b1_x_ball(6),
      I3 => b1_x_ball(7),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lutdi3_276
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_cy_2_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_cy(1),
      DI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lutdi2_279,
      S => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lut(2),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_cy(2)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lut_2_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_x_ball(4),
      I1 => b1_dx_0_Q,
      I2 => b1_x_ball(5),
      I3 => b1_Madd_n0153_cy(9),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lut(2)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lutdi2 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_Madd_n0153_cy(9),
      I1 => b1_dx_0_Q,
      I2 => b1_x_ball(4),
      I3 => b1_x_ball(5),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lutdi2_279
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_cy_1_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_cy(0),
      DI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lutdi1,
      S => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lut(1),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_cy(1)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_cy_0_Q : MUXCY
    port map (
      CI => b1_dx_0_Q,
      DI => b1_Madd_n0153_cy(9),
      S => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lut(0),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_cy(0)
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_xor_9_Q : XORCY
    port map (
      CI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_8_Q_286,
      LI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_9_Q,
      O => b1_dx_31_dx_31_mux_15_OUT_9_Q
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_xor_8_Q : XORCY
    port map (
      CI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_7_Q_289,
      LI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_8_Q,
      O => b1_dx_31_dx_31_mux_15_OUT_8_Q
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_8_Q : MUXCY
    port map (
      CI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_7_Q_289,
      DI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_8_mand1_288,
      S => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_8_Q,
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_8_Q_286
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_xor_7_Q : XORCY
    port map (
      CI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_6_Q_292,
      LI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_7_Q,
      O => b1_dx_31_dx_31_mux_15_OUT_7_Q
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_7_Q : MUXCY
    port map (
      CI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_6_Q_292,
      DI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_7_mand1_291,
      S => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_7_Q,
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_7_Q_289
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_xor_6_Q : XORCY
    port map (
      CI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_5_Q_295,
      LI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_6_Q,
      O => b1_dx_31_dx_31_mux_15_OUT_6_Q
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_6_Q : MUXCY
    port map (
      CI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_5_Q_295,
      DI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_6_mand1_294,
      S => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_6_Q,
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_6_Q_292
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_xor_5_Q : XORCY
    port map (
      CI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_4_Q_298,
      LI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_5_Q,
      O => b1_dx_31_dx_31_mux_15_OUT_5_Q
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_5_Q : MUXCY
    port map (
      CI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_4_Q_298,
      DI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_5_mand1_297,
      S => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_5_Q,
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_5_Q_295
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_xor_4_Q : XORCY
    port map (
      CI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_3_Q_301,
      LI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_4_Q,
      O => b1_dx_31_dx_31_mux_15_OUT_4_Q
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_4_Q : MUXCY
    port map (
      CI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_3_Q_301,
      DI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_4_mand1_300,
      S => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_4_Q,
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_4_Q_298
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_xor_3_Q : XORCY
    port map (
      CI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_2_Q_304,
      LI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_3_Q,
      O => b1_dx_31_dx_31_mux_15_OUT_3_Q
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_3_Q : MUXCY
    port map (
      CI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_2_Q_304,
      DI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_3_mand1_303,
      S => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_3_Q,
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_3_Q_301
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_xor_2_Q : XORCY
    port map (
      CI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_1_Q_307,
      LI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_2_Q,
      O => b1_dx_31_dx_31_mux_15_OUT_2_Q
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_2_Q : MUXCY
    port map (
      CI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_1_Q_307,
      DI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_2_mand1_306,
      S => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_2_Q,
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_2_Q_304
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_xor_1_Q : XORCY
    port map (
      CI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_0_Q_310,
      LI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_1_Q,
      O => b1_dx_31_dx_31_mux_15_OUT_1_Q
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_1_Q : MUXCY
    port map (
      CI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_0_Q_310,
      DI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_1_mand1_309,
      S => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_1_Q,
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_1_Q_307
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_0_Q : MUXCY
    port map (
      CI => b1_dx_0_Q,
      DI => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_0_mand,
      S => b1_Madd_n0153_cy(9),
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_cy_0_Q_310
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_xor_9_Q : XORCY
    port map (
      CI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_8_Q_313,
      LI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_9_Q,
      O => b1_dy_31_dy_31_mux_4_OUT_9_Q
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_xor_8_Q : XORCY
    port map (
      CI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_7_Q_316,
      LI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_8_Q,
      O => b1_dy_31_dy_31_mux_4_OUT_8_Q
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_8_Q : MUXCY
    port map (
      CI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_7_Q_316,
      DI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_8_mand1_315,
      S => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_8_Q,
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_8_Q_313
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_xor_7_Q : XORCY
    port map (
      CI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_6_Q_319,
      LI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_7_Q,
      O => b1_dy_31_dy_31_mux_4_OUT_7_Q
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_7_Q : MUXCY
    port map (
      CI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_6_Q_319,
      DI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_7_mand1_318,
      S => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_7_Q,
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_7_Q_316
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_xor_6_Q : XORCY
    port map (
      CI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_5_Q_322,
      LI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_6_Q,
      O => b1_dy_31_dy_31_mux_4_OUT_6_Q
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_6_Q : MUXCY
    port map (
      CI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_5_Q_322,
      DI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_6_mand1_321,
      S => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_6_Q,
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_6_Q_319
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_xor_5_Q : XORCY
    port map (
      CI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_4_Q_325,
      LI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_5_Q,
      O => b1_dy_31_dy_31_mux_4_OUT_5_Q
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_5_Q : MUXCY
    port map (
      CI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_4_Q_325,
      DI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_5_mand1_324,
      S => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_5_Q,
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_5_Q_322
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_xor_4_Q : XORCY
    port map (
      CI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_3_Q_328,
      LI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_4_Q,
      O => b1_dy_31_dy_31_mux_4_OUT_4_Q
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_4_Q : MUXCY
    port map (
      CI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_3_Q_328,
      DI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_4_mand1_327,
      S => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_4_Q,
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_4_Q_325
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_xor_3_Q : XORCY
    port map (
      CI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_2_Q_331,
      LI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_3_Q,
      O => b1_dy_31_dy_31_mux_4_OUT_3_Q
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_3_Q : MUXCY
    port map (
      CI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_2_Q_331,
      DI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_3_mand1_330,
      S => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_3_Q,
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_3_Q_328
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_xor_2_Q : XORCY
    port map (
      CI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_1_Q_334,
      LI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_2_Q,
      O => b1_dy_31_dy_31_mux_4_OUT_2_Q
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_2_Q : MUXCY
    port map (
      CI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_1_Q_334,
      DI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_2_mand1_333,
      S => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_2_Q,
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_2_Q_331
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_xor_1_Q : XORCY
    port map (
      CI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_0_Q_337,
      LI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_1_Q,
      O => b1_dy_31_dy_31_mux_4_OUT_1_Q
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_1_Q : MUXCY
    port map (
      CI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_0_Q_337,
      DI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_1_mand1_336,
      S => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_1_Q,
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_1_Q_334
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_0_Q : MUXCY
    port map (
      CI => b1_dx_0_Q,
      DI => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_0_mand,
      S => b1_Madd_n0153_cy(9),
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_cy_0_Q_337
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy_4_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy(3),
      DI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lutdi4,
      S => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lut(4),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy(4)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy_3_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy(2),
      DI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lutdi3_344,
      S => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lut(3),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy(3)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lut_3_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_y_ball(6),
      I1 => b1_GND_5_o_GND_5_o_sub_19_OUT(6),
      I2 => b1_y_ball(7),
      I3 => b1_GND_5_o_GND_5_o_sub_19_OUT(7),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lut(3)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lutdi3 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_GND_5_o_GND_5_o_sub_19_OUT(7),
      I1 => b1_GND_5_o_GND_5_o_sub_19_OUT(6),
      I2 => b1_y_ball(6),
      I3 => b1_y_ball(7),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lutdi3_344
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy_2_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy(1),
      DI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lutdi2_347,
      S => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lut(2),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy(2)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lut_2_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_y_ball(4),
      I1 => p1_GND_7_o_GND_7_o_sub_18_OUT_4_Q,
      I2 => b1_y_ball(5),
      I3 => b1_GND_5_o_GND_5_o_sub_19_OUT(5),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lut(2)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lutdi2 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_GND_5_o_GND_5_o_sub_19_OUT(5),
      I1 => p1_GND_7_o_GND_7_o_sub_18_OUT_4_Q,
      I2 => b1_y_ball(4),
      I3 => b1_y_ball(5),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lutdi2_347
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy_1_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy(0),
      DI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lutdi1_350,
      S => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lut(1),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy(1)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lut_1_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_y_ball(2),
      I1 => p1_y_paddle1(2),
      I2 => b1_y_ball(3),
      I3 => b1_n0160_3_Q,
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lut(1)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lutdi1 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_n0160_3_Q,
      I1 => p1_y_paddle1(2),
      I2 => b1_y_ball(2),
      I3 => b1_y_ball(3),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lutdi1_350
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy_0_Q : MUXCY
    port map (
      CI => b1_dx_0_Q,
      DI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lutdi_353,
      S => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lut(0),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy(0)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lut_0_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_y_ball(0),
      I1 => p1_y_paddle1(0),
      I2 => b1_y_ball(1),
      I3 => p1_y_paddle1(1),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lut(0)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lutdi : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => p1_y_paddle1(1),
      I1 => p1_y_paddle1(0),
      I2 => b1_y_ball(0),
      I3 => b1_y_ball(1),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lutdi_353
    );
  b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_cy_4_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_cy(3),
      DI => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lutdi4_356,
      S => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lut(4),
      O => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_cy(4)
    );
  b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00009009"
    )
    port map (
      I0 => b1_n0153_8_Q,
      I1 => b1_y_ball(8),
      I2 => b1_n0153_9_Q,
      I3 => b1_y_ball(9),
      I4 => b1_Madd_n0153_cy(9),
      O => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lut(4)
    );
  b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lutdi4 : LUT5
    generic map(
      INIT => X"00404454"
    )
    port map (
      I0 => b1_Madd_n0153_cy(9),
      I1 => b1_y_ball(9),
      I2 => b1_y_ball(8),
      I3 => b1_n0153_8_Q,
      I4 => b1_n0153_9_Q,
      O => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lutdi4_356
    );
  b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_cy_3_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_cy(2),
      DI => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lutdi3_359,
      S => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lut(3),
      O => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_cy(3)
    );
  b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lut_3_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => p1_n0106(6),
      I1 => b1_y_ball(6),
      I2 => p1_n0106(7),
      I3 => b1_y_ball(7),
      O => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lut(3)
    );
  b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lutdi3 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_y_ball(7),
      I1 => b1_y_ball(6),
      I2 => p1_n0106(6),
      I3 => p1_n0106(7),
      O => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lutdi3_359
    );
  b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_cy_2_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_cy(1),
      DI => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lutdi2_362,
      S => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lut(2),
      O => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_cy(2)
    );
  b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lut_2_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_n0153_4_Q,
      I1 => b1_y_ball(4),
      I2 => b1_n0153_5_Q,
      I3 => b1_y_ball(5),
      O => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lut(2)
    );
  b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lutdi2 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_y_ball(5),
      I1 => b1_y_ball(4),
      I2 => b1_n0153_4_Q,
      I3 => b1_n0153_5_Q,
      O => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lutdi2_362
    );
  b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_cy_1_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_cy(0),
      DI => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lutdi1_365,
      S => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lut(1),
      O => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_cy(1)
    );
  b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lut_1_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => p1_y_paddle2(2),
      I1 => b1_y_ball(2),
      I2 => b1_n0153_3_Q,
      I3 => b1_y_ball(3),
      O => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lut(1)
    );
  b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lutdi1 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_y_ball(3),
      I1 => b1_y_ball(2),
      I2 => p1_y_paddle2(2),
      I3 => b1_n0153_3_Q,
      O => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lutdi1_365
    );
  b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_cy_0_Q : MUXCY
    port map (
      CI => b1_dx_0_Q,
      DI => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lutdi_368,
      S => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lut(0),
      O => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_cy(0)
    );
  b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lut_0_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => p1_y_paddle2(0),
      I1 => b1_y_ball(0),
      I2 => p1_y_paddle2(1),
      I3 => b1_y_ball(1),
      O => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lut(0)
    );
  b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lutdi : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_y_ball(1),
      I1 => b1_y_ball(0),
      I2 => p1_y_paddle2(0),
      I3 => p1_y_paddle2(1),
      O => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_lutdi_368
    );
  b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy_4_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy(3),
      DI => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lutdi4_371,
      S => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lut(4),
      O => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy(4)
    );
  b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00009009"
    )
    port map (
      I0 => b1_n0160_8_Q,
      I1 => b1_y_ball(8),
      I2 => b1_n0160_9_Q,
      I3 => b1_y_ball(9),
      I4 => b1_Madd_n0153_cy(9),
      O => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lut(4)
    );
  b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lutdi4 : LUT5
    generic map(
      INIT => X"00404454"
    )
    port map (
      I0 => b1_Madd_n0153_cy(9),
      I1 => b1_y_ball(9),
      I2 => b1_y_ball(8),
      I3 => b1_n0160_8_Q,
      I4 => b1_n0160_9_Q,
      O => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lutdi4_371
    );
  b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy_3_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy(2),
      DI => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lutdi3_374,
      S => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lut(3),
      O => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy(3)
    );
  b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lut_3_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => p1_n0093(6),
      I1 => b1_y_ball(6),
      I2 => p1_n0093(7),
      I3 => b1_y_ball(7),
      O => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lut(3)
    );
  b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lutdi3 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_y_ball(7),
      I1 => b1_y_ball(6),
      I2 => p1_n0093(6),
      I3 => p1_n0093(7),
      O => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lutdi3_374
    );
  b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy_2_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy(1),
      DI => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lutdi2_377,
      S => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lut(2),
      O => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy(2)
    );
  b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lut_2_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_n0160_4_Q,
      I1 => b1_y_ball(4),
      I2 => b1_n0160_5_Q,
      I3 => b1_y_ball(5),
      O => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lut(2)
    );
  b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lutdi2 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_y_ball(5),
      I1 => b1_y_ball(4),
      I2 => b1_n0160_4_Q,
      I3 => b1_n0160_5_Q,
      O => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lutdi2_377
    );
  b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy_1_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy(0),
      DI => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lutdi1_380,
      S => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lut(1),
      O => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy(1)
    );
  b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lut_1_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => p1_y_paddle1(2),
      I1 => b1_y_ball(2),
      I2 => b1_n0160_3_Q,
      I3 => b1_y_ball(3),
      O => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lut(1)
    );
  b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lutdi1 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_y_ball(3),
      I1 => b1_y_ball(2),
      I2 => p1_y_paddle1(2),
      I3 => b1_n0160_3_Q,
      O => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lutdi1_380
    );
  b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy_0_Q : MUXCY
    port map (
      CI => b1_dx_0_Q,
      DI => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lutdi_383,
      S => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lut(0),
      O => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy(0)
    );
  b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lut_0_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => p1_y_paddle1(0),
      I1 => b1_y_ball(0),
      I2 => p1_y_paddle1(1),
      I3 => b1_y_ball(1),
      O => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lut(0)
    );
  b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lutdi : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_y_ball(1),
      I1 => b1_y_ball(0),
      I2 => p1_y_paddle1(0),
      I3 => p1_y_paddle1(1),
      O => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_lutdi_383
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_cy_4_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_cy(3),
      DI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lutdi4,
      S => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lut(4),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_cy(4)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_cy_3_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_cy(2),
      DI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lutdi3_389,
      S => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lut(3),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_cy(3)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lut_3_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_y_ball(6),
      I1 => b1_GND_5_o_GND_5_o_sub_11_OUT(6),
      I2 => b1_y_ball(7),
      I3 => b1_GND_5_o_GND_5_o_sub_11_OUT(7),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lut(3)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lutdi3 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_GND_5_o_GND_5_o_sub_11_OUT(7),
      I1 => b1_GND_5_o_GND_5_o_sub_11_OUT(6),
      I2 => b1_y_ball(6),
      I3 => b1_y_ball(7),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lutdi3_389
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_cy_2_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_cy(1),
      DI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lutdi2_392,
      S => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lut(2),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_cy(2)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lut_2_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_y_ball(4),
      I1 => p1_GND_7_o_GND_7_o_sub_41_OUT_4_Q,
      I2 => b1_y_ball(5),
      I3 => b1_GND_5_o_GND_5_o_sub_11_OUT(5),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lut(2)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lutdi2 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_GND_5_o_GND_5_o_sub_11_OUT(5),
      I1 => p1_GND_7_o_GND_7_o_sub_41_OUT_4_Q,
      I2 => b1_y_ball(4),
      I3 => b1_y_ball(5),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lutdi2_392
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_cy_1_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_cy(0),
      DI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lutdi1_395,
      S => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lut(1),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_cy(1)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lut_1_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_y_ball(2),
      I1 => p1_y_paddle2(2),
      I2 => b1_y_ball(3),
      I3 => b1_n0153_3_Q,
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lut(1)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lutdi1 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_n0153_3_Q,
      I1 => p1_y_paddle2(2),
      I2 => b1_y_ball(2),
      I3 => b1_y_ball(3),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lutdi1_395
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_cy_0_Q : MUXCY
    port map (
      CI => b1_dx_0_Q,
      DI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lutdi_398,
      S => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lut(0),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_cy(0)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lut_0_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_y_ball(0),
      I1 => p1_y_paddle2(0),
      I2 => b1_y_ball(1),
      I3 => p1_y_paddle2(1),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lut(0)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lutdi : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => p1_y_paddle2(1),
      I1 => p1_y_paddle2(0),
      I2 => b1_y_ball(0),
      I3 => b1_y_ball(1),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lutdi_398
    );
  b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy_3_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy(2),
      DI => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lutdi3,
      S => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lut(3),
      O => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy(3)
    );
  b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy_2_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy(1),
      DI => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lutdi2_405,
      S => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lut(2),
      O => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy(2)
    );
  b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lut_2_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_Madd_n0153_cy(9),
      I1 => b1_x_ball(4),
      I2 => b1_dx_0_Q,
      I3 => b1_x_ball(5),
      O => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lut(2)
    );
  b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lutdi2 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_x_ball(5),
      I1 => b1_x_ball(4),
      I2 => b1_Madd_n0153_cy(9),
      I3 => b1_dx_0_Q,
      O => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lutdi2_405
    );
  b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy_1_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy(0),
      DI => b1_x_ball(3),
      S => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lut(1),
      O => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy(1)
    );
  b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lut_1_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_dx_0_Q,
      I1 => b1_x_ball(2),
      I2 => b1_Madd_n0153_cy(9),
      I3 => b1_x_ball(3),
      O => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lut(1)
    );
  b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy_0_Q : MUXCY
    port map (
      CI => b1_dx_0_Q,
      DI => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lutdi,
      S => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lut(0),
      O => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy(0)
    );
  b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_cy_3_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_cy(2),
      DI => b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lutdi3_414,
      S => b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lut(3),
      O => b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_cy(3)
    );
  b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lut_3_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => v1_v_count_reg(6),
      I1 => b1_n0174(6),
      I2 => v1_v_count_reg(7),
      I3 => b1_n0174(7),
      O => b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lut(3)
    );
  b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lutdi3 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_n0174(7),
      I1 => b1_n0174(6),
      I2 => v1_v_count_reg(6),
      I3 => v1_v_count_reg(7),
      O => b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lutdi3_414
    );
  b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_cy_2_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_cy(1),
      DI => b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lutdi2_417,
      S => b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lut(2),
      O => b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_cy(2)
    );
  b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lut_2_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => v1_v_count_reg(4),
      I1 => b1_n0174(4),
      I2 => v1_v_count_reg(5),
      I3 => b1_n0174(5),
      O => b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lut(2)
    );
  b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lutdi2 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_n0174(5),
      I1 => b1_n0174(4),
      I2 => v1_v_count_reg(4),
      I3 => v1_v_count_reg(5),
      O => b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lutdi2_417
    );
  b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_cy_1_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_cy(0),
      DI => b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lutdi1_420,
      S => b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lut(1),
      O => b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_cy(1)
    );
  b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lut_1_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => v1_v_count_reg(2),
      I1 => b1_y_ball(2),
      I2 => v1_v_count_reg(3),
      I3 => b1_n0174(3),
      O => b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lut(1)
    );
  b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lutdi1 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_n0174(3),
      I1 => b1_y_ball(2),
      I2 => v1_v_count_reg(2),
      I3 => v1_v_count_reg(3),
      O => b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lutdi1_420
    );
  b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_cy_0_Q : MUXCY
    port map (
      CI => b1_dx_0_Q,
      DI => b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lutdi_423,
      S => b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lut(0),
      O => b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_cy(0)
    );
  b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lut_0_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => v1_v_count_reg(0),
      I1 => b1_y_ball(0),
      I2 => v1_v_count_reg(1),
      I3 => b1_y_ball(1),
      O => b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lut(0)
    );
  b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lutdi : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_y_ball(1),
      I1 => b1_y_ball(0),
      I2 => v1_v_count_reg(0),
      I3 => v1_v_count_reg(1),
      O => b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_lutdi_423
    );
  b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_cy_3_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_cy(2),
      DI => b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lutdi3_426,
      S => b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lut(3),
      O => b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_cy(3)
    );
  b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lut_3_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => v1_h_count_reg(6),
      I1 => b1_n0169(6),
      I2 => v1_h_count_reg(7),
      I3 => b1_n0169(7),
      O => b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lut(3)
    );
  b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lutdi3 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_n0169(7),
      I1 => b1_n0169(6),
      I2 => v1_h_count_reg(6),
      I3 => v1_h_count_reg(7),
      O => b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lutdi3_426
    );
  b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_cy_2_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_cy(1),
      DI => b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lutdi2_429,
      S => b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lut(2),
      O => b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_cy(2)
    );
  b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lut_2_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => v1_h_count_reg(4),
      I1 => b1_n0169(4),
      I2 => v1_h_count_reg(5),
      I3 => b1_n0169(5),
      O => b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lut(2)
    );
  b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lutdi2 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_n0169(5),
      I1 => b1_n0169(4),
      I2 => v1_h_count_reg(4),
      I3 => v1_h_count_reg(5),
      O => b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lutdi2_429
    );
  b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_cy_1_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_cy(0),
      DI => b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lutdi1_432,
      S => b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lut(1),
      O => b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_cy(1)
    );
  b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lut_1_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => v1_h_count_reg(2),
      I1 => b1_x_ball(2),
      I2 => v1_h_count_reg(3),
      I3 => b1_n0169(3),
      O => b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lut(1)
    );
  b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lutdi1 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_n0169(3),
      I1 => b1_x_ball(2),
      I2 => v1_h_count_reg(2),
      I3 => v1_h_count_reg(3),
      O => b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lutdi1_432
    );
  b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_cy_0_Q : MUXCY
    port map (
      CI => b1_dx_0_Q,
      DI => b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lutdi_435,
      S => b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lut(0),
      O => b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_cy(0)
    );
  b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lut_0_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => v1_h_count_reg(0),
      I1 => b1_y_ball(0),
      I2 => v1_h_count_reg(1),
      I3 => b1_x_ball(1),
      O => b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lut(0)
    );
  b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lutdi : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => b1_x_ball(1),
      I1 => b1_y_ball(0),
      I2 => v1_h_count_reg(0),
      I3 => v1_h_count_reg(1),
      O => b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_lutdi_435
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_cy_3_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_cy(2),
      DI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lutdi3_438,
      S => b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lut(3),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_cy(3)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lut_3_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_GND_5_o_GND_5_o_sub_64_OUT(6),
      I1 => v1_h_count_reg(6),
      I2 => b1_GND_5_o_GND_5_o_sub_64_OUT(7),
      I3 => v1_h_count_reg(7),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lut(3)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lutdi3 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => v1_h_count_reg(7),
      I1 => v1_h_count_reg(6),
      I2 => b1_GND_5_o_GND_5_o_sub_64_OUT(6),
      I3 => b1_GND_5_o_GND_5_o_sub_64_OUT(7),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lutdi3_438
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_cy_2_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_cy(1),
      DI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lutdi2_441,
      S => b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lut(2),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_cy(2)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lut_2_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_GND_5_o_GND_5_o_sub_64_OUT(4),
      I1 => v1_h_count_reg(4),
      I2 => b1_GND_5_o_GND_5_o_sub_64_OUT(5),
      I3 => v1_h_count_reg(5),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lut(2)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lutdi2 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => v1_h_count_reg(5),
      I1 => v1_h_count_reg(4),
      I2 => b1_GND_5_o_GND_5_o_sub_64_OUT(4),
      I3 => b1_GND_5_o_GND_5_o_sub_64_OUT(5),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lutdi2_441
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_cy_1_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_cy(0),
      DI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lutdi1_444,
      S => b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lut(1),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_cy(1)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lut_1_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_x_ball(2),
      I1 => v1_h_count_reg(2),
      I2 => b1_n0169(3),
      I3 => v1_h_count_reg(3),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lut(1)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lutdi1 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => v1_h_count_reg(3),
      I1 => v1_h_count_reg(2),
      I2 => b1_x_ball(2),
      I3 => b1_n0169(3),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lutdi1_444
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_cy_0_Q : MUXCY
    port map (
      CI => b1_dx_0_Q,
      DI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lutdi_447,
      S => b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lut(0),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_cy(0)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lut_0_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_y_ball(0),
      I1 => v1_h_count_reg(0),
      I2 => b1_x_ball(1),
      I3 => v1_h_count_reg(1),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lut(0)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lutdi : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => v1_h_count_reg(1),
      I1 => v1_h_count_reg(0),
      I2 => b1_y_ball(0),
      I3 => b1_x_ball(1),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_lutdi_447
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_cy_3_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_cy(2),
      DI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lutdi3_450,
      S => b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lut(3),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_cy(3)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lut_3_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_GND_5_o_GND_5_o_sub_68_OUT(6),
      I1 => v1_v_count_reg(6),
      I2 => b1_GND_5_o_GND_5_o_sub_68_OUT(7),
      I3 => v1_v_count_reg(7),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lut(3)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lutdi3 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => v1_v_count_reg(7),
      I1 => v1_v_count_reg(6),
      I2 => b1_GND_5_o_GND_5_o_sub_68_OUT(6),
      I3 => b1_GND_5_o_GND_5_o_sub_68_OUT(7),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lutdi3_450
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_cy_2_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_cy(1),
      DI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lutdi2_453,
      S => b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lut(2),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_cy(2)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lut_2_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_GND_5_o_GND_5_o_sub_68_OUT(4),
      I1 => v1_v_count_reg(4),
      I2 => b1_GND_5_o_GND_5_o_sub_68_OUT(5),
      I3 => v1_v_count_reg(5),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lut(2)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lutdi2 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => v1_v_count_reg(5),
      I1 => v1_v_count_reg(4),
      I2 => b1_GND_5_o_GND_5_o_sub_68_OUT(4),
      I3 => b1_GND_5_o_GND_5_o_sub_68_OUT(5),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lutdi2_453
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_cy_1_Q : MUXCY
    port map (
      CI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_cy(0),
      DI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lutdi1_456,
      S => b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lut(1),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_cy(1)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lut_1_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_y_ball(2),
      I1 => v1_v_count_reg(2),
      I2 => b1_n0174(3),
      I3 => v1_v_count_reg(3),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lut(1)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lutdi1 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => v1_v_count_reg(3),
      I1 => v1_v_count_reg(2),
      I2 => b1_y_ball(2),
      I3 => b1_n0174(3),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lutdi1_456
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_cy_0_Q : MUXCY
    port map (
      CI => b1_dx_0_Q,
      DI => b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lutdi_459,
      S => b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lut(0),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_cy(0)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lut_0_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_y_ball(0),
      I1 => v1_v_count_reg(0),
      I2 => b1_y_ball(1),
      I3 => v1_v_count_reg(1),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lut(0)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lutdi : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => v1_v_count_reg(1),
      I1 => v1_v_count_reg(0),
      I2 => b1_y_ball(0),
      I3 => b1_y_ball(1),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_lutdi_459
    );
  b1_p1_score_3 : FDRE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0229_inv,
      D => b1_Result(3),
      R => Q_i000001_reset_inv,
      Q => b1_p1_score(3)
    );
  b1_p1_score_2 : FDRE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0229_inv,
      D => b1_Result(2),
      R => Q_i000001_reset_inv,
      Q => b1_p1_score(2)
    );
  b1_p1_score_1 : FDRE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0229_inv,
      D => b1_Result(1),
      R => Q_i000001_reset_inv,
      Q => b1_p1_score(1)
    );
  b1_p1_score_0 : FDRE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0229_inv,
      D => b1_Result(0),
      R => Q_i000001_reset_inv,
      Q => b1_p1_score(0)
    );
  b1_p2_score_3 : FDRE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0236_inv,
      D => b1_Result_3_1,
      R => Q_i000001_reset_inv,
      Q => b1_p2_score(3)
    );
  b1_p2_score_2 : FDRE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0236_inv,
      D => b1_Result_2_1,
      R => Q_i000001_reset_inv,
      Q => b1_p2_score(2)
    );
  b1_p2_score_1 : FDRE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0236_inv,
      D => b1_Result_1_1,
      R => Q_i000001_reset_inv,
      Q => b1_p2_score(1)
    );
  b1_p2_score_0 : FDRE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0236_inv,
      D => b1_Result_0_1,
      R => Q_i000001_reset_inv,
      Q => b1_p2_score(0)
    );
  b1_y_ball_9 : FDE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0211_inv,
      D => b1_y_ball_9_GND_5_o_mux_52_OUT_9_Q,
      Q => b1_y_ball(9)
    );
  b1_y_ball_8 : FDE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0211_inv,
      D => b1_y_ball_9_GND_5_o_mux_52_OUT_8_Q,
      Q => b1_y_ball(8)
    );
  b1_y_ball_7 : FDE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0211_inv,
      D => b1_y_ball_9_GND_5_o_mux_52_OUT_7_Q,
      Q => b1_y_ball(7)
    );
  b1_y_ball_6 : FDE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0211_inv,
      D => b1_y_ball_9_GND_5_o_mux_52_OUT_6_Q,
      Q => b1_y_ball(6)
    );
  b1_y_ball_5 : FDE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0211_inv,
      D => b1_y_ball_9_GND_5_o_mux_52_OUT_5_Q,
      Q => b1_y_ball(5)
    );
  b1_y_ball_4 : FDE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0211_inv,
      D => b1_y_ball_9_GND_5_o_mux_52_OUT_4_Q,
      Q => b1_y_ball(4)
    );
  b1_y_ball_3 : FDE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0211_inv,
      D => b1_y_ball_9_GND_5_o_mux_52_OUT_3_Q,
      Q => b1_y_ball(3)
    );
  b1_y_ball_2 : FDE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0211_inv,
      D => b1_y_ball_9_GND_5_o_mux_52_OUT_2_Q,
      Q => b1_y_ball(2)
    );
  b1_y_ball_1 : FDE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0211_inv,
      D => b1_y_ball_9_GND_5_o_mux_52_OUT_1_Q,
      Q => b1_y_ball(1)
    );
  b1_y_ball_0 : FDE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0211_inv,
      D => b1_y_ball_9_GND_5_o_mux_52_OUT_0_Q,
      Q => b1_y_ball(0)
    );
  b1_x_ball_9 : FDE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0211_inv,
      D => b1_x_ball_9_GND_5_o_mux_51_OUT_9_Q,
      Q => b1_x_ball(9)
    );
  b1_x_ball_8 : FDE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0211_inv,
      D => b1_x_ball_9_GND_5_o_mux_51_OUT_8_Q,
      Q => b1_x_ball(8)
    );
  b1_x_ball_7 : FDE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0211_inv,
      D => b1_x_ball_9_GND_5_o_mux_51_OUT_7_Q,
      Q => b1_x_ball(7)
    );
  b1_x_ball_6 : FDE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0211_inv,
      D => b1_x_ball_9_GND_5_o_mux_51_OUT_6_Q,
      Q => b1_x_ball(6)
    );
  b1_x_ball_5 : FDE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0211_inv,
      D => b1_x_ball_9_GND_5_o_mux_51_OUT_5_Q,
      Q => b1_x_ball(5)
    );
  b1_x_ball_4 : FDE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0211_inv,
      D => b1_x_ball_9_GND_5_o_mux_51_OUT_4_Q,
      Q => b1_x_ball(4)
    );
  b1_x_ball_3 : FDE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0211_inv,
      D => b1_x_ball_9_GND_5_o_mux_51_OUT_3_Q,
      Q => b1_x_ball(3)
    );
  b1_x_ball_2 : FDE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0211_inv,
      D => b1_x_ball_9_GND_5_o_mux_51_OUT_2_Q,
      Q => b1_x_ball(2)
    );
  b1_x_ball_1 : FDE
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0211_inv,
      D => b1_x_ball_9_GND_5_o_mux_51_OUT_1_Q,
      Q => b1_x_ball(1)
    );
  b1_dx_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0216_inv,
      D => b1_dx_31_dx_31_mux_42_OUT_9_Q,
      Q => b1_dx_9_Q
    );
  b1_dy_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => b1_n0216_inv,
      D => b1_dy_31_dy_31_mux_41_OUT_9_Q,
      Q => b1_dy(9)
    );
  p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_cy_3_Q : MUXCY
    port map (
      CI => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_cy(2),
      DI => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lutdi3_624,
      S => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lut(3),
      O => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_cy(3)
    );
  p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lut_3_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => p1_n0093(6),
      I1 => v1_v_count_reg(6),
      I2 => p1_n0093(7),
      I3 => v1_v_count_reg(7),
      O => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lut(3)
    );
  p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lutdi3 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => v1_v_count_reg(7),
      I1 => v1_v_count_reg(6),
      I2 => p1_n0093(6),
      I3 => p1_n0093(7),
      O => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lutdi3_624
    );
  p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_cy_2_Q : MUXCY
    port map (
      CI => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_cy(1),
      DI => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lutdi2_627,
      S => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lut(2),
      O => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_cy(2)
    );
  p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lut_2_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_n0160_4_Q,
      I1 => v1_v_count_reg(4),
      I2 => b1_n0160_5_Q,
      I3 => v1_v_count_reg(5),
      O => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lut(2)
    );
  p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lutdi2 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => v1_v_count_reg(5),
      I1 => v1_v_count_reg(4),
      I2 => b1_n0160_4_Q,
      I3 => b1_n0160_5_Q,
      O => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lutdi2_627
    );
  p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_cy_1_Q : MUXCY
    port map (
      CI => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_cy(0),
      DI => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lutdi1_630,
      S => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lut(1),
      O => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_cy(1)
    );
  p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lut_1_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => p1_y_paddle1(2),
      I1 => v1_v_count_reg(2),
      I2 => b1_n0160_3_Q,
      I3 => v1_v_count_reg(3),
      O => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lut(1)
    );
  p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lutdi1 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => v1_v_count_reg(3),
      I1 => v1_v_count_reg(2),
      I2 => p1_y_paddle1(2),
      I3 => b1_n0160_3_Q,
      O => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lutdi1_630
    );
  p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_cy_0_Q : MUXCY
    port map (
      CI => b1_dx_0_Q,
      DI => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lutdi_633,
      S => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lut(0),
      O => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_cy(0)
    );
  p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lut_0_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => p1_y_paddle1(0),
      I1 => v1_v_count_reg(0),
      I2 => p1_y_paddle1(1),
      I3 => v1_v_count_reg(1),
      O => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lut(0)
    );
  p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lutdi : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => v1_v_count_reg(1),
      I1 => v1_v_count_reg(0),
      I2 => p1_y_paddle1(0),
      I3 => p1_y_paddle1(1),
      O => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_lutdi_633
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_cy_3_Q : MUXCY
    port map (
      CI => p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_cy(2),
      DI => p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lutdi3_636,
      S => p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lut(3),
      O => p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_cy(3)
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lut_3_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_GND_5_o_GND_5_o_sub_11_OUT(6),
      I1 => v1_v_count_reg(6),
      I2 => b1_GND_5_o_GND_5_o_sub_11_OUT(7),
      I3 => v1_v_count_reg(7),
      O => p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lut(3)
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lutdi3 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => v1_v_count_reg(7),
      I1 => v1_v_count_reg(6),
      I2 => b1_GND_5_o_GND_5_o_sub_11_OUT(6),
      I3 => b1_GND_5_o_GND_5_o_sub_11_OUT(7),
      O => p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lutdi3_636
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_cy_2_Q : MUXCY
    port map (
      CI => p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_cy(1),
      DI => p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lutdi2_639,
      S => p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lut(2),
      O => p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_cy(2)
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lut_2_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => p1_GND_7_o_GND_7_o_sub_41_OUT_4_Q,
      I1 => v1_v_count_reg(4),
      I2 => b1_GND_5_o_GND_5_o_sub_11_OUT(5),
      I3 => v1_v_count_reg(5),
      O => p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lut(2)
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lutdi2 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => v1_v_count_reg(5),
      I1 => v1_v_count_reg(4),
      I2 => p1_GND_7_o_GND_7_o_sub_41_OUT_4_Q,
      I3 => b1_GND_5_o_GND_5_o_sub_11_OUT(5),
      O => p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lutdi2_639
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_cy_1_Q : MUXCY
    port map (
      CI => p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_cy(0),
      DI => p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lutdi1_642,
      S => p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lut(1),
      O => p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_cy(1)
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lut_1_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => p1_y_paddle2(2),
      I1 => v1_v_count_reg(2),
      I2 => b1_n0153_3_Q,
      I3 => v1_v_count_reg(3),
      O => p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lut(1)
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lutdi1 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => v1_v_count_reg(3),
      I1 => v1_v_count_reg(2),
      I2 => p1_y_paddle2(2),
      I3 => b1_n0153_3_Q,
      O => p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lutdi1_642
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_cy_0_Q : MUXCY
    port map (
      CI => b1_dx_0_Q,
      DI => p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lutdi_645,
      S => p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lut(0),
      O => p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_cy(0)
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lut_0_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => p1_y_paddle2(0),
      I1 => v1_v_count_reg(0),
      I2 => p1_y_paddle2(1),
      I3 => v1_v_count_reg(1),
      O => p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lut(0)
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lutdi : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => v1_v_count_reg(1),
      I1 => v1_v_count_reg(0),
      I2 => p1_y_paddle2(0),
      I3 => p1_y_paddle2(1),
      O => p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_lutdi_645
    );
  p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_cy_3_Q : MUXCY
    port map (
      CI => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_cy(2),
      DI => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lutdi3_649,
      S => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lut(3),
      O => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_cy(3)
    );
  p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lut_3_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => p1_n0106(6),
      I1 => v1_v_count_reg(6),
      I2 => p1_n0106(7),
      I3 => v1_v_count_reg(7),
      O => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lut(3)
    );
  p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lutdi3 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => v1_v_count_reg(7),
      I1 => v1_v_count_reg(6),
      I2 => p1_n0106(6),
      I3 => p1_n0106(7),
      O => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lutdi3_649
    );
  p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_cy_2_Q : MUXCY
    port map (
      CI => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_cy(1),
      DI => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lutdi2_652,
      S => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lut(2),
      O => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_cy(2)
    );
  p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lut_2_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_n0153_4_Q,
      I1 => v1_v_count_reg(4),
      I2 => b1_n0153_5_Q,
      I3 => v1_v_count_reg(5),
      O => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lut(2)
    );
  p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lutdi2 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => v1_v_count_reg(5),
      I1 => v1_v_count_reg(4),
      I2 => b1_n0153_4_Q,
      I3 => b1_n0153_5_Q,
      O => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lutdi2_652
    );
  p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_cy_1_Q : MUXCY
    port map (
      CI => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_cy(0),
      DI => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lutdi1_655,
      S => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lut(1),
      O => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_cy(1)
    );
  p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lut_1_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => p1_y_paddle2(2),
      I1 => v1_v_count_reg(2),
      I2 => b1_n0153_3_Q,
      I3 => v1_v_count_reg(3),
      O => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lut(1)
    );
  p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lutdi1 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => v1_v_count_reg(3),
      I1 => v1_v_count_reg(2),
      I2 => p1_y_paddle2(2),
      I3 => b1_n0153_3_Q,
      O => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lutdi1_655
    );
  p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_cy_0_Q : MUXCY
    port map (
      CI => b1_dx_0_Q,
      DI => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lutdi_658,
      S => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lut(0),
      O => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_cy(0)
    );
  p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lut_0_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => p1_y_paddle2(0),
      I1 => v1_v_count_reg(0),
      I2 => p1_y_paddle2(1),
      I3 => v1_v_count_reg(1),
      O => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lut(0)
    );
  p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lutdi : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => v1_v_count_reg(1),
      I1 => v1_v_count_reg(0),
      I2 => p1_y_paddle2(0),
      I3 => p1_y_paddle2(1),
      O => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_lutdi_658
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_cy_3_Q : MUXCY
    port map (
      CI => p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_cy(2),
      DI => p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lutdi3_661,
      S => p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lut(3),
      O => p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_cy(3)
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lut_3_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => b1_GND_5_o_GND_5_o_sub_19_OUT(6),
      I1 => v1_v_count_reg(6),
      I2 => b1_GND_5_o_GND_5_o_sub_19_OUT(7),
      I3 => v1_v_count_reg(7),
      O => p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lut(3)
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lutdi3 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => v1_v_count_reg(7),
      I1 => v1_v_count_reg(6),
      I2 => b1_GND_5_o_GND_5_o_sub_19_OUT(6),
      I3 => b1_GND_5_o_GND_5_o_sub_19_OUT(7),
      O => p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lutdi3_661
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_cy_2_Q : MUXCY
    port map (
      CI => p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_cy(1),
      DI => p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lutdi2_664,
      S => p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lut(2),
      O => p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_cy(2)
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lut_2_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => p1_GND_7_o_GND_7_o_sub_18_OUT_4_Q,
      I1 => v1_v_count_reg(4),
      I2 => b1_GND_5_o_GND_5_o_sub_19_OUT(5),
      I3 => v1_v_count_reg(5),
      O => p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lut(2)
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lutdi2 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => v1_v_count_reg(5),
      I1 => v1_v_count_reg(4),
      I2 => p1_GND_7_o_GND_7_o_sub_18_OUT_4_Q,
      I3 => b1_GND_5_o_GND_5_o_sub_19_OUT(5),
      O => p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lutdi2_664
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_cy_1_Q : MUXCY
    port map (
      CI => p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_cy(0),
      DI => p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lutdi1_667,
      S => p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lut(1),
      O => p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_cy(1)
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lut_1_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => p1_y_paddle1(2),
      I1 => v1_v_count_reg(2),
      I2 => b1_n0160_3_Q,
      I3 => v1_v_count_reg(3),
      O => p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lut(1)
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lutdi1 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => v1_v_count_reg(3),
      I1 => v1_v_count_reg(2),
      I2 => p1_y_paddle1(2),
      I3 => b1_n0160_3_Q,
      O => p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lutdi1_667
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_cy_0_Q : MUXCY
    port map (
      CI => b1_dx_0_Q,
      DI => p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lutdi_670,
      S => p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lut(0),
      O => p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_cy(0)
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lut_0_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => p1_y_paddle1(0),
      I1 => v1_v_count_reg(0),
      I2 => p1_y_paddle1(1),
      I3 => v1_v_count_reg(1),
      O => p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lut(0)
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lutdi : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => v1_v_count_reg(1),
      I1 => v1_v_count_reg(0),
      I2 => p1_y_paddle1(0),
      I3 => p1_y_paddle1(1),
      O => p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_lutdi_670
    );
  p1_y_paddle2_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => p1_n0140_inv,
      D => p1_Mcount_y_paddle29,
      Q => p1_y_paddle2(8)
    );
  p1_y_paddle2_7 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => p1_n0140_inv,
      D => p1_Mcount_y_paddle28,
      Q => p1_y_paddle2(7)
    );
  p1_y_paddle2_6 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => p1_n0140_inv,
      D => p1_Mcount_y_paddle27,
      Q => p1_y_paddle2(6)
    );
  p1_y_paddle2_5 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => p1_n0140_inv,
      D => p1_Mcount_y_paddle26,
      Q => p1_y_paddle2(5)
    );
  p1_y_paddle2_4 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => p1_n0140_inv,
      D => p1_Mcount_y_paddle25,
      Q => p1_y_paddle2(4)
    );
  p1_y_paddle2_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => p1_n0140_inv,
      D => p1_Mcount_y_paddle24,
      Q => p1_y_paddle2(3)
    );
  p1_y_paddle2_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => p1_n0140_inv,
      D => p1_Mcount_y_paddle23,
      Q => p1_y_paddle2(2)
    );
  p1_y_paddle2_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => p1_n0140_inv,
      D => p1_Mcount_y_paddle22,
      Q => p1_y_paddle2(1)
    );
  p1_y_paddle2_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => p1_n0140_inv,
      D => p1_Mcount_y_paddle21,
      Q => p1_y_paddle2(0)
    );
  p1_y_paddle1_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => p1_n0136_inv,
      D => p1_Mcount_y_paddle19,
      Q => p1_y_paddle1(8)
    );
  p1_y_paddle1_7 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => p1_n0136_inv,
      D => p1_Mcount_y_paddle18,
      Q => p1_y_paddle1(7)
    );
  p1_y_paddle1_6 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => p1_n0136_inv,
      D => p1_Mcount_y_paddle17,
      Q => p1_y_paddle1(6)
    );
  p1_y_paddle1_5 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => p1_n0136_inv,
      D => p1_Mcount_y_paddle16,
      Q => p1_y_paddle1(5)
    );
  p1_y_paddle1_4 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => p1_n0136_inv,
      D => p1_Mcount_y_paddle15,
      Q => p1_y_paddle1(4)
    );
  p1_y_paddle1_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => p1_n0136_inv,
      D => p1_Mcount_y_paddle14,
      Q => p1_y_paddle1(3)
    );
  p1_y_paddle1_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => p1_n0136_inv,
      D => p1_Mcount_y_paddle13,
      Q => p1_y_paddle1(2)
    );
  p1_y_paddle1_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => p1_n0136_inv,
      D => p1_Mcount_y_paddle12,
      Q => p1_y_paddle1(1)
    );
  p1_y_paddle1_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => c1_clk_1ms_BUFG_32,
      CE => p1_n0136_inv,
      D => p1_Mcount_y_paddle11,
      Q => p1_y_paddle1(0)
    );
  p1_Mcount_y_paddle2_xor_8_Q : XORCY
    port map (
      CI => p1_Mcount_y_paddle2_cy(7),
      LI => p1_Mcount_y_paddle2_lut(8),
      O => p1_Mcount_y_paddle29
    );
  p1_Mcount_y_paddle2_lut_8_Q : LUT4
    generic map(
      INIT => X"D782"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => p1_y_paddle2(8),
      I2 => p1_button2_GND_7_o_AND_17_o_inv_707,
      I3 => b1_Madd_n0153_cy(9),
      O => p1_Mcount_y_paddle2_lut(8)
    );
  p1_Mcount_y_paddle2_xor_7_Q : XORCY
    port map (
      CI => p1_Mcount_y_paddle2_cy(6),
      LI => p1_Mcount_y_paddle2_lut(7),
      O => p1_Mcount_y_paddle28
    );
  p1_Mcount_y_paddle2_cy_7_Q : MUXCY
    port map (
      CI => p1_Mcount_y_paddle2_cy(6),
      DI => p1_Mcount_y_paddle2_mand7,
      S => p1_Mcount_y_paddle2_lut(7),
      O => p1_Mcount_y_paddle2_cy(7)
    );
  p1_Mcount_y_paddle2_lut_7_Q : LUT4
    generic map(
      INIT => X"D782"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => p1_y_paddle2(7),
      I2 => p1_button2_GND_7_o_AND_17_o_inv_707,
      I3 => b1_dx_0_Q,
      O => p1_Mcount_y_paddle2_lut(7)
    );
  p1_Mcount_y_paddle2_mand_6 : MULT_AND
    port map (
      I0 => p1_y_paddle2(7),
      I1 => reset_IBUF_1,
      LO => p1_Mcount_y_paddle2_mand7
    );
  p1_Mcount_y_paddle2_xor_6_Q : XORCY
    port map (
      CI => p1_Mcount_y_paddle2_cy(5),
      LI => p1_Mcount_y_paddle2_lut(6),
      O => p1_Mcount_y_paddle27
    );
  p1_Mcount_y_paddle2_cy_6_Q : MUXCY
    port map (
      CI => p1_Mcount_y_paddle2_cy(5),
      DI => p1_Mcount_y_paddle2_mand6,
      S => p1_Mcount_y_paddle2_lut(6),
      O => p1_Mcount_y_paddle2_cy(6)
    );
  p1_Mcount_y_paddle2_lut_6_Q : LUT4
    generic map(
      INIT => X"D782"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => p1_y_paddle2(6),
      I2 => p1_button2_GND_7_o_AND_17_o_inv_707,
      I3 => b1_dx_0_Q,
      O => p1_Mcount_y_paddle2_lut(6)
    );
  p1_Mcount_y_paddle2_mand_5 : MULT_AND
    port map (
      I0 => p1_y_paddle2(6),
      I1 => reset_IBUF_1,
      LO => p1_Mcount_y_paddle2_mand6
    );
  p1_Mcount_y_paddle2_xor_5_Q : XORCY
    port map (
      CI => p1_Mcount_y_paddle2_cy(4),
      LI => p1_Mcount_y_paddle2_lut(5),
      O => p1_Mcount_y_paddle26
    );
  p1_Mcount_y_paddle2_cy_5_Q : MUXCY
    port map (
      CI => p1_Mcount_y_paddle2_cy(4),
      DI => p1_Mcount_y_paddle2_mand5,
      S => p1_Mcount_y_paddle2_lut(5),
      O => p1_Mcount_y_paddle2_cy(5)
    );
  p1_Mcount_y_paddle2_lut_5_Q : LUT4
    generic map(
      INIT => X"D782"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => p1_y_paddle2(5),
      I2 => p1_button2_GND_7_o_AND_17_o_inv_707,
      I3 => b1_dx_0_Q,
      O => p1_Mcount_y_paddle2_lut(5)
    );
  p1_Mcount_y_paddle2_mand_4 : MULT_AND
    port map (
      I0 => p1_y_paddle2(5),
      I1 => reset_IBUF_1,
      LO => p1_Mcount_y_paddle2_mand5
    );
  p1_Mcount_y_paddle2_xor_4_Q : XORCY
    port map (
      CI => p1_Mcount_y_paddle2_cy(3),
      LI => p1_Mcount_y_paddle2_lut(4),
      O => p1_Mcount_y_paddle25
    );
  p1_Mcount_y_paddle2_cy_4_Q : MUXCY
    port map (
      CI => p1_Mcount_y_paddle2_cy(3),
      DI => p1_Mcount_y_paddle2_mand4,
      S => p1_Mcount_y_paddle2_lut(4),
      O => p1_Mcount_y_paddle2_cy(4)
    );
  p1_Mcount_y_paddle2_lut_4_Q : LUT4
    generic map(
      INIT => X"D782"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => p1_y_paddle2(4),
      I2 => p1_button2_GND_7_o_AND_17_o_inv_707,
      I3 => b1_dx_0_Q,
      O => p1_Mcount_y_paddle2_lut(4)
    );
  p1_Mcount_y_paddle2_mand_3 : MULT_AND
    port map (
      I0 => p1_y_paddle2(4),
      I1 => reset_IBUF_1,
      LO => p1_Mcount_y_paddle2_mand4
    );
  p1_Mcount_y_paddle2_xor_3_Q : XORCY
    port map (
      CI => p1_Mcount_y_paddle2_cy(2),
      LI => p1_Mcount_y_paddle2_lut(3),
      O => p1_Mcount_y_paddle24
    );
  p1_Mcount_y_paddle2_cy_3_Q : MUXCY
    port map (
      CI => p1_Mcount_y_paddle2_cy(2),
      DI => p1_Mcount_y_paddle2_mand3,
      S => p1_Mcount_y_paddle2_lut(3),
      O => p1_Mcount_y_paddle2_cy(3)
    );
  p1_Mcount_y_paddle2_lut_3_Q : LUT4
    generic map(
      INIT => X"D782"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => p1_y_paddle2(3),
      I2 => p1_button2_GND_7_o_AND_17_o_inv_707,
      I3 => b1_Madd_n0153_cy(9),
      O => p1_Mcount_y_paddle2_lut(3)
    );
  p1_Mcount_y_paddle2_mand_2 : MULT_AND
    port map (
      I0 => p1_y_paddle2(3),
      I1 => reset_IBUF_1,
      LO => p1_Mcount_y_paddle2_mand3
    );
  p1_Mcount_y_paddle2_xor_2_Q : XORCY
    port map (
      CI => p1_Mcount_y_paddle2_cy(1),
      LI => p1_Mcount_y_paddle2_lut(2),
      O => p1_Mcount_y_paddle23
    );
  p1_Mcount_y_paddle2_cy_2_Q : MUXCY
    port map (
      CI => p1_Mcount_y_paddle2_cy(1),
      DI => p1_Mcount_y_paddle2_mand2,
      S => p1_Mcount_y_paddle2_lut(2),
      O => p1_Mcount_y_paddle2_cy(2)
    );
  p1_Mcount_y_paddle2_lut_2_Q : LUT4
    generic map(
      INIT => X"D782"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => p1_y_paddle2(2),
      I2 => p1_button2_GND_7_o_AND_17_o_inv_707,
      I3 => b1_Madd_n0153_cy(9),
      O => p1_Mcount_y_paddle2_lut(2)
    );
  p1_Mcount_y_paddle2_mand_1 : MULT_AND
    port map (
      I0 => p1_y_paddle2(2),
      I1 => reset_IBUF_1,
      LO => p1_Mcount_y_paddle2_mand2
    );
  p1_Mcount_y_paddle2_xor_1_Q : XORCY
    port map (
      CI => p1_Mcount_y_paddle2_cy(0),
      LI => p1_Mcount_y_paddle2_lut(1),
      O => p1_Mcount_y_paddle22
    );
  p1_Mcount_y_paddle2_cy_1_Q : MUXCY
    port map (
      CI => p1_Mcount_y_paddle2_cy(0),
      DI => p1_Mcount_y_paddle2_mand1,
      S => p1_Mcount_y_paddle2_lut(1),
      O => p1_Mcount_y_paddle2_cy(1)
    );
  p1_Mcount_y_paddle2_lut_1_Q : LUT4
    generic map(
      INIT => X"D782"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => p1_y_paddle2(1),
      I2 => p1_button2_GND_7_o_AND_17_o_inv_707,
      I3 => b1_Madd_n0153_cy(9),
      O => p1_Mcount_y_paddle2_lut(1)
    );
  p1_Mcount_y_paddle2_mand_0 : MULT_AND
    port map (
      I0 => p1_y_paddle2(1),
      I1 => reset_IBUF_1,
      LO => p1_Mcount_y_paddle2_mand1
    );
  p1_Mcount_y_paddle2_xor_0_Q : XORCY
    port map (
      CI => p1_Mcount_y_paddle2_705,
      LI => p1_Mcount_y_paddle2_lut(0),
      O => p1_Mcount_y_paddle21
    );
  p1_Mcount_y_paddle2_cy_0_Q : MUXCY
    port map (
      CI => p1_Mcount_y_paddle2_705,
      DI => p1_Mcount_y_paddle2_mand_704,
      S => p1_Mcount_y_paddle2_lut(0),
      O => p1_Mcount_y_paddle2_cy(0)
    );
  p1_Mcount_y_paddle2_lut_0_Q : LUT4
    generic map(
      INIT => X"7D28"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => p1_y_paddle2(0),
      I2 => p1_button2_GND_7_o_AND_17_o_inv_707,
      I3 => b1_Madd_n0153_cy(9),
      O => p1_Mcount_y_paddle2_lut(0)
    );
  p1_Mcount_y_paddle2_mand : MULT_AND
    port map (
      I0 => p1_y_paddle2(0),
      I1 => reset_IBUF_1,
      LO => p1_Mcount_y_paddle2_mand_704
    );
  p1_Mcount_y_paddle1_xor_8_Q : XORCY
    port map (
      CI => p1_Mcount_y_paddle1_cy(7),
      LI => p1_Mcount_y_paddle1_lut(8),
      O => p1_Mcount_y_paddle19
    );
  p1_Mcount_y_paddle1_lut_8_Q : LUT4
    generic map(
      INIT => X"D782"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => p1_y_paddle1(8),
      I2 => p1_button_GND_7_o_AND_12_o_inv_744,
      I3 => b1_Madd_n0153_cy(9),
      O => p1_Mcount_y_paddle1_lut(8)
    );
  p1_Mcount_y_paddle1_xor_7_Q : XORCY
    port map (
      CI => p1_Mcount_y_paddle1_cy(6),
      LI => p1_Mcount_y_paddle1_lut(7),
      O => p1_Mcount_y_paddle18
    );
  p1_Mcount_y_paddle1_cy_7_Q : MUXCY
    port map (
      CI => p1_Mcount_y_paddle1_cy(6),
      DI => p1_Mcount_y_paddle1_mand7,
      S => p1_Mcount_y_paddle1_lut(7),
      O => p1_Mcount_y_paddle1_cy(7)
    );
  p1_Mcount_y_paddle1_lut_7_Q : LUT4
    generic map(
      INIT => X"D782"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => p1_y_paddle1(7),
      I2 => p1_button_GND_7_o_AND_12_o_inv_744,
      I3 => b1_dx_0_Q,
      O => p1_Mcount_y_paddle1_lut(7)
    );
  p1_Mcount_y_paddle1_mand_6 : MULT_AND
    port map (
      I0 => p1_y_paddle1(7),
      I1 => reset_IBUF_1,
      LO => p1_Mcount_y_paddle1_mand7
    );
  p1_Mcount_y_paddle1_xor_6_Q : XORCY
    port map (
      CI => p1_Mcount_y_paddle1_cy(5),
      LI => p1_Mcount_y_paddle1_lut(6),
      O => p1_Mcount_y_paddle17
    );
  p1_Mcount_y_paddle1_cy_6_Q : MUXCY
    port map (
      CI => p1_Mcount_y_paddle1_cy(5),
      DI => p1_Mcount_y_paddle1_mand6,
      S => p1_Mcount_y_paddle1_lut(6),
      O => p1_Mcount_y_paddle1_cy(6)
    );
  p1_Mcount_y_paddle1_lut_6_Q : LUT4
    generic map(
      INIT => X"D782"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => p1_y_paddle1(6),
      I2 => p1_button_GND_7_o_AND_12_o_inv_744,
      I3 => b1_dx_0_Q,
      O => p1_Mcount_y_paddle1_lut(6)
    );
  p1_Mcount_y_paddle1_mand_5 : MULT_AND
    port map (
      I0 => p1_y_paddle1(6),
      I1 => reset_IBUF_1,
      LO => p1_Mcount_y_paddle1_mand6
    );
  p1_Mcount_y_paddle1_xor_5_Q : XORCY
    port map (
      CI => p1_Mcount_y_paddle1_cy(4),
      LI => p1_Mcount_y_paddle1_lut(5),
      O => p1_Mcount_y_paddle16
    );
  p1_Mcount_y_paddle1_cy_5_Q : MUXCY
    port map (
      CI => p1_Mcount_y_paddle1_cy(4),
      DI => p1_Mcount_y_paddle1_mand5,
      S => p1_Mcount_y_paddle1_lut(5),
      O => p1_Mcount_y_paddle1_cy(5)
    );
  p1_Mcount_y_paddle1_lut_5_Q : LUT4
    generic map(
      INIT => X"D782"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => p1_y_paddle1(5),
      I2 => p1_button_GND_7_o_AND_12_o_inv_744,
      I3 => b1_dx_0_Q,
      O => p1_Mcount_y_paddle1_lut(5)
    );
  p1_Mcount_y_paddle1_mand_4 : MULT_AND
    port map (
      I0 => p1_y_paddle1(5),
      I1 => reset_IBUF_1,
      LO => p1_Mcount_y_paddle1_mand5
    );
  p1_Mcount_y_paddle1_xor_4_Q : XORCY
    port map (
      CI => p1_Mcount_y_paddle1_cy(3),
      LI => p1_Mcount_y_paddle1_lut(4),
      O => p1_Mcount_y_paddle15
    );
  p1_Mcount_y_paddle1_cy_4_Q : MUXCY
    port map (
      CI => p1_Mcount_y_paddle1_cy(3),
      DI => p1_Mcount_y_paddle1_mand4,
      S => p1_Mcount_y_paddle1_lut(4),
      O => p1_Mcount_y_paddle1_cy(4)
    );
  p1_Mcount_y_paddle1_lut_4_Q : LUT4
    generic map(
      INIT => X"D782"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => p1_y_paddle1(4),
      I2 => p1_button_GND_7_o_AND_12_o_inv_744,
      I3 => b1_dx_0_Q,
      O => p1_Mcount_y_paddle1_lut(4)
    );
  p1_Mcount_y_paddle1_mand_3 : MULT_AND
    port map (
      I0 => p1_y_paddle1(4),
      I1 => reset_IBUF_1,
      LO => p1_Mcount_y_paddle1_mand4
    );
  p1_Mcount_y_paddle1_xor_3_Q : XORCY
    port map (
      CI => p1_Mcount_y_paddle1_cy(2),
      LI => p1_Mcount_y_paddle1_lut(3),
      O => p1_Mcount_y_paddle14
    );
  p1_Mcount_y_paddle1_cy_3_Q : MUXCY
    port map (
      CI => p1_Mcount_y_paddle1_cy(2),
      DI => p1_Mcount_y_paddle1_mand3,
      S => p1_Mcount_y_paddle1_lut(3),
      O => p1_Mcount_y_paddle1_cy(3)
    );
  p1_Mcount_y_paddle1_lut_3_Q : LUT4
    generic map(
      INIT => X"D782"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => p1_y_paddle1(3),
      I2 => p1_button_GND_7_o_AND_12_o_inv_744,
      I3 => b1_Madd_n0153_cy(9),
      O => p1_Mcount_y_paddle1_lut(3)
    );
  p1_Mcount_y_paddle1_mand_2 : MULT_AND
    port map (
      I0 => p1_y_paddle1(3),
      I1 => reset_IBUF_1,
      LO => p1_Mcount_y_paddle1_mand3
    );
  p1_Mcount_y_paddle1_xor_2_Q : XORCY
    port map (
      CI => p1_Mcount_y_paddle1_cy(1),
      LI => p1_Mcount_y_paddle1_lut(2),
      O => p1_Mcount_y_paddle13
    );
  p1_Mcount_y_paddle1_cy_2_Q : MUXCY
    port map (
      CI => p1_Mcount_y_paddle1_cy(1),
      DI => p1_Mcount_y_paddle1_mand2,
      S => p1_Mcount_y_paddle1_lut(2),
      O => p1_Mcount_y_paddle1_cy(2)
    );
  p1_Mcount_y_paddle1_lut_2_Q : LUT4
    generic map(
      INIT => X"D782"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => p1_y_paddle1(2),
      I2 => p1_button_GND_7_o_AND_12_o_inv_744,
      I3 => b1_Madd_n0153_cy(9),
      O => p1_Mcount_y_paddle1_lut(2)
    );
  p1_Mcount_y_paddle1_mand_1 : MULT_AND
    port map (
      I0 => p1_y_paddle1(2),
      I1 => reset_IBUF_1,
      LO => p1_Mcount_y_paddle1_mand2
    );
  p1_Mcount_y_paddle1_xor_1_Q : XORCY
    port map (
      CI => p1_Mcount_y_paddle1_cy(0),
      LI => p1_Mcount_y_paddle1_lut(1),
      O => p1_Mcount_y_paddle12
    );
  p1_Mcount_y_paddle1_cy_1_Q : MUXCY
    port map (
      CI => p1_Mcount_y_paddle1_cy(0),
      DI => p1_Mcount_y_paddle1_mand1,
      S => p1_Mcount_y_paddle1_lut(1),
      O => p1_Mcount_y_paddle1_cy(1)
    );
  p1_Mcount_y_paddle1_lut_1_Q : LUT4
    generic map(
      INIT => X"D782"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => p1_y_paddle1(1),
      I2 => p1_button_GND_7_o_AND_12_o_inv_744,
      I3 => b1_Madd_n0153_cy(9),
      O => p1_Mcount_y_paddle1_lut(1)
    );
  p1_Mcount_y_paddle1_mand_0 : MULT_AND
    port map (
      I0 => p1_y_paddle1(1),
      I1 => reset_IBUF_1,
      LO => p1_Mcount_y_paddle1_mand1
    );
  p1_Mcount_y_paddle1_xor_0_Q : XORCY
    port map (
      CI => p1_Mcount_y_paddle1_742,
      LI => p1_Mcount_y_paddle1_lut(0),
      O => p1_Mcount_y_paddle11
    );
  p1_Mcount_y_paddle1_cy_0_Q : MUXCY
    port map (
      CI => p1_Mcount_y_paddle1_742,
      DI => p1_Mcount_y_paddle1_mand_741,
      S => p1_Mcount_y_paddle1_lut(0),
      O => p1_Mcount_y_paddle1_cy(0)
    );
  p1_Mcount_y_paddle1_lut_0_Q : LUT4
    generic map(
      INIT => X"7D28"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => p1_y_paddle1(0),
      I2 => p1_button_GND_7_o_AND_12_o_inv_744,
      I3 => b1_Madd_n0153_cy(9),
      O => p1_Mcount_y_paddle1_lut(0)
    );
  p1_Mcount_y_paddle1_mand : MULT_AND
    port map (
      I0 => p1_y_paddle1(0),
      I1 => reset_IBUF_1,
      LO => p1_Mcount_y_paddle1_mand_741
    );
  v1_pixel_tick_GND_2_o_AND_1_o1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v1_pixel_reg_86,
      I1 => v1_GND_2_o_GND_2_o_equal_9_o,
      O => v1_pixel_tick_GND_2_o_AND_1_o
    );
  Q_i000001_p1_score_3_GND_8_o_equal_2_o1 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => b1_p1_score(3),
      I1 => b1_p1_score(2),
      I2 => b1_p1_score(1),
      I3 => b1_p1_score(0),
      O => Q_i000001_p1_score_3_GND_8_o_equal_2_o
    );
  Q_i000002_Mmux_seg251 : LUT5
    generic map(
      INIT => X"FFDFFF8F"
    )
    port map (
      I0 => b1_p1_score(1),
      I1 => b1_p1_score(3),
      I2 => reset_IBUF_1,
      I3 => b1_p1_score(0),
      I4 => b1_p1_score(2),
      O => seg2_4_OBUF_52
    );
  Q_i000002_Mmux_seg151 : LUT5
    generic map(
      INIT => X"FFDFFF8F"
    )
    port map (
      I0 => b1_p2_score(1),
      I1 => b1_p2_score(3),
      I2 => reset_IBUF_1,
      I3 => b1_p2_score(0),
      I4 => b1_p2_score(2),
      O => seg1_4_OBUF_45
    );
  v1_hsync_next_norst1 : LUT6
    generic map(
      INIT => X"15555555FFFFFFFF"
    )
    port map (
      I0 => v1_h_count_reg(8),
      I1 => v1_h_count_reg(7),
      I2 => v1_h_count_reg(4),
      I3 => v1_h_count_reg(5),
      I4 => v1_h_count_reg(6),
      I5 => v1_h_count_reg(9),
      O => v1_hsync_next_norst
    );
  v1_PWR_2_o_h_count_reg_9_LessThan_14_o_inv1 : LUT6
    generic map(
      INIT => X"11111115FFFFFFFF"
    )
    port map (
      I0 => v1_h_count_reg(8),
      I1 => v1_h_count_reg(7),
      I2 => v1_h_count_reg(6),
      I3 => v1_h_count_reg(4),
      I4 => v1_h_count_reg(5),
      I5 => v1_h_count_reg(9),
      O => v1_PWR_2_o_h_count_reg_9_LessThan_14_o_inv
    );
  Q_i000002_Mmux_seg261 : LUT5
    generic map(
      INIT => X"EEB2FFFF"
    )
    port map (
      I0 => b1_p1_score(1),
      I1 => b1_p1_score(2),
      I2 => b1_p1_score(0),
      I3 => b1_p1_score(3),
      I4 => reset_IBUF_1,
      O => seg2_5_OBUF_51
    );
  Q_i000002_Mmux_seg161 : LUT5
    generic map(
      INIT => X"EEB2FFFF"
    )
    port map (
      I0 => b1_p2_score(1),
      I1 => b1_p2_score(2),
      I2 => b1_p2_score(0),
      I3 => b1_p2_score(3),
      I4 => reset_IBUF_1,
      O => seg1_5_OBUF_44
    );
  v1_PWR_2_o_v_count_reg_9_LessThan_16_o_inv11 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v1_v_count_reg(5),
      I1 => v1_v_count_reg(3),
      I2 => v1_v_count_reg(4),
      I3 => v1_v_count_reg(2),
      O => v1_PWR_2_o_v_count_reg_9_LessThan_16_o_inv1_178
    );
  v1_vsync_next_norst11 : LUT5
    generic map(
      INIT => X"0888FFFF"
    )
    port map (
      I0 => v1_PWR_2_o_v_count_reg_9_LessThan_16_o_inv1_178,
      I1 => v1_PWR_2_o_v_count_reg_9_LessThan_16_o_inv2,
      I2 => v1_v_count_reg(1),
      I3 => v1_v_count_reg(0),
      I4 => v1_v_count_reg(9),
      O => v1_vsync_next_norst
    );
  v1_PWR_2_o_v_count_reg_9_LessThan_16_o_inv21 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => v1_v_count_reg(6),
      I1 => v1_v_count_reg(7),
      I2 => v1_v_count_reg(8),
      O => v1_PWR_2_o_v_count_reg_9_LessThan_16_o_inv2
    );
  v1_PWR_2_o_v_count_reg_9_LessThan_16_o_inv1 : LUT5
    generic map(
      INIT => X"0200FFFF"
    )
    port map (
      I0 => v1_PWR_2_o_v_count_reg_9_LessThan_16_o_inv2,
      I1 => v1_v_count_reg(1),
      I2 => v1_v_count_reg(0),
      I3 => v1_PWR_2_o_v_count_reg_9_LessThan_16_o_inv1_178,
      I4 => v1_v_count_reg(9),
      O => v1_PWR_2_o_v_count_reg_9_LessThan_16_o_inv
    );
  Q_i000002_Mmux_seg211 : LUT5
    generic map(
      INIT => X"FA14FFFF"
    )
    port map (
      I0 => b1_p1_score(1),
      I1 => b1_p1_score(0),
      I2 => b1_p1_score(2),
      I3 => b1_p1_score(3),
      I4 => reset_IBUF_1,
      O => seg2_0_OBUF_56
    );
  Q_i000002_Mmux_seg241 : LUT5
    generic map(
      INIT => X"E9CAFFFF"
    )
    port map (
      I0 => b1_p1_score(2),
      I1 => b1_p1_score(3),
      I2 => b1_p1_score(1),
      I3 => b1_p1_score(0),
      I4 => reset_IBUF_1,
      O => seg2_3_OBUF_53
    );
  Q_i000002_Mmux_seg111 : LUT5
    generic map(
      INIT => X"FA14FFFF"
    )
    port map (
      I0 => b1_p2_score(1),
      I1 => b1_p2_score(0),
      I2 => b1_p2_score(2),
      I3 => b1_p2_score(3),
      I4 => reset_IBUF_1,
      O => seg1_0_OBUF_49
    );
  Q_i000002_Mmux_seg141 : LUT5
    generic map(
      INIT => X"E9CAFFFF"
    )
    port map (
      I0 => b1_p2_score(2),
      I1 => b1_p2_score(3),
      I2 => b1_p2_score(1),
      I3 => b1_p2_score(0),
      I4 => reset_IBUF_1,
      O => seg1_3_OBUF_46
    );
  Q_i000002_Mmux_seg131 : LUT5
    generic map(
      INIT => X"A8B8FFFF"
    )
    port map (
      I0 => b1_p2_score(3),
      I1 => b1_p2_score(2),
      I2 => b1_p2_score(1),
      I3 => b1_p2_score(0),
      I4 => reset_IBUF_1,
      O => seg1_2_OBUF_47
    );
  Q_i000002_Mmux_seg121 : LUT5
    generic map(
      INIT => X"CAE8FFFF"
    )
    port map (
      I0 => b1_p2_score(2),
      I1 => b1_p2_score(3),
      I2 => b1_p2_score(1),
      I3 => b1_p2_score(0),
      I4 => reset_IBUF_1,
      O => seg1_1_OBUF_48
    );
  Q_i000002_Mmux_seg171 : LUT5
    generic map(
      INIT => X"E9C9FFFF"
    )
    port map (
      I0 => b1_p2_score(2),
      I1 => b1_p2_score(3),
      I2 => b1_p2_score(1),
      I3 => b1_p2_score(0),
      I4 => reset_IBUF_1,
      O => seg1_6_OBUF_43
    );
  Q_i000002_Mmux_seg231 : LUT5
    generic map(
      INIT => X"A8B8FFFF"
    )
    port map (
      I0 => b1_p1_score(3),
      I1 => b1_p1_score(2),
      I2 => b1_p1_score(1),
      I3 => b1_p1_score(0),
      I4 => reset_IBUF_1,
      O => seg2_2_OBUF_54
    );
  Q_i000002_Mmux_seg221 : LUT5
    generic map(
      INIT => X"CAE8FFFF"
    )
    port map (
      I0 => b1_p1_score(2),
      I1 => b1_p1_score(3),
      I2 => b1_p1_score(1),
      I3 => b1_p1_score(0),
      I4 => reset_IBUF_1,
      O => seg2_1_OBUF_55
    );
  Q_i000002_Mmux_seg271 : LUT5
    generic map(
      INIT => X"E9C9FFFF"
    )
    port map (
      I0 => b1_p1_score(2),
      I1 => b1_p1_score(3),
      I2 => b1_p1_score(1),
      I3 => b1_p1_score(0),
      I4 => reset_IBUF_1,
      O => seg2_6_OBUF_50
    );
  r1_Mmux_GND_3_o_GND_3_o_mux_9_OUT61 : LUT5
    generic map(
      INIT => X"FFFF8A88"
    )
    port map (
      I0 => Q_i000001_game_state(0),
      I1 => Q_i000001_game_state(1),
      I2 => paddle1_on,
      I3 => paddle2_on,
      I4 => r1_Mmux_GND_3_o_GND_3_o_mux_9_OUT15_180,
      O => r1_GND_3_o_GND_3_o_mux_9_OUT_3_Q
    );
  r1_Mmux_GND_3_o_GND_3_o_mux_9_OUT31 : LUT4
    generic map(
      INIT => X"FF64"
    )
    port map (
      I0 => Q_i000001_game_state(0),
      I1 => Q_i000001_game_state(1),
      I2 => paddle1_on,
      I3 => r1_Mmux_GND_3_o_GND_3_o_mux_9_OUT15_180,
      O => r1_GND_3_o_GND_3_o_mux_9_OUT_11_Q
    );
  r1_Mmux_rgb13 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => video_on,
      I1 => r1_rgb_reg_3_Q,
      O => rgb_0_OBUF_31
    );
  r1_Mmux_rgb21 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => video_on,
      I1 => r1_rgb_reg_11_Q,
      O => rgb_10_OBUF_29
    );
  r1_Mmux_rgb71 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => video_on,
      I1 => r1_rgb_reg_7_Q,
      O => rgb_4_OBUF_30
    );
  b1_Madd_n0169_xor_7_11 : LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => b1_x_ball(7),
      I1 => b1_x_ball(3),
      I2 => b1_x_ball(4),
      I3 => b1_x_ball(5),
      I4 => b1_x_ball(6),
      O => b1_n0169(7)
    );
  b1_Madd_n0169_xor_6_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => b1_x_ball(6),
      I1 => b1_x_ball(3),
      I2 => b1_x_ball(4),
      I3 => b1_x_ball(5),
      O => b1_n0169(6)
    );
  b1_Madd_n0174_xor_6_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => b1_y_ball(6),
      I1 => b1_y_ball(3),
      I2 => b1_y_ball(4),
      I3 => b1_y_ball(5),
      O => b1_n0174(6)
    );
  b1_Msub_GND_5_o_GND_5_o_sub_64_OUT_xor_6_12 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => b1_x_ball(6),
      I1 => b1_x_ball(3),
      I2 => b1_x_ball(4),
      I3 => b1_x_ball(5),
      O => b1_GND_5_o_GND_5_o_sub_64_OUT(6)
    );
  b1_Msub_GND_5_o_GND_5_o_sub_19_OUT_xor_7_111 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => p1_y_paddle1(5),
      I1 => p1_y_paddle1(3),
      I2 => p1_y_paddle1(4),
      I3 => p1_y_paddle1(6),
      O => b1_Msub_GND_5_o_GND_5_o_sub_19_OUT_xor_7_11_187
    );
  b1_Msub_GND_5_o_GND_5_o_sub_11_OUT_xor_7_121 : LUT5
    generic map(
      INIT => X"01010111"
    )
    port map (
      I0 => p1_y_paddle2(7),
      I1 => p1_y_paddle2(6),
      I2 => p1_y_paddle2(5),
      I3 => p1_y_paddle2(4),
      I4 => p1_y_paddle2(3),
      O => b1_Msub_GND_5_o_GND_5_o_sub_11_OUT_xor_7_12
    );
  b1_Msub_GND_5_o_GND_5_o_sub_11_OUT_xor_7_111 : LUT4
    generic map(
      INIT => X"EEEA"
    )
    port map (
      I0 => p1_y_paddle2(6),
      I1 => p1_y_paddle2(5),
      I2 => p1_y_paddle2(4),
      I3 => p1_y_paddle2(3),
      O => b1_Msub_GND_5_o_GND_5_o_sub_11_OUT_xor_7_11_188
    );
  b1_Msub_GND_5_o_GND_5_o_sub_64_OUT_xor_5_11 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => b1_x_ball(5),
      I1 => b1_x_ball(3),
      I2 => b1_x_ball(4),
      O => b1_GND_5_o_GND_5_o_sub_64_OUT(5)
    );
  b1_Msub_GND_5_o_GND_5_o_sub_19_OUT_xor_6_11 : LUT4
    generic map(
      INIT => X"9995"
    )
    port map (
      I0 => p1_y_paddle1(6),
      I1 => p1_y_paddle1(5),
      I2 => p1_y_paddle1(3),
      I3 => p1_y_paddle1(4),
      O => b1_GND_5_o_GND_5_o_sub_19_OUT(6)
    );
  b1_Msub_GND_5_o_GND_5_o_sub_11_OUT_xor_6_11 : LUT4
    generic map(
      INIT => X"9995"
    )
    port map (
      I0 => p1_y_paddle2(6),
      I1 => p1_y_paddle2(5),
      I2 => p1_y_paddle2(3),
      I3 => p1_y_paddle2(4),
      O => b1_GND_5_o_GND_5_o_sub_11_OUT(6)
    );
  b1_Madd_n0153_xor_5_11 : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => p1_y_paddle2(5),
      I1 => p1_y_paddle2(4),
      I2 => p1_y_paddle2(3),
      O => b1_n0153_5_Q
    );
  b1_Madd_n0160_xor_5_11 : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => p1_y_paddle1(5),
      I1 => p1_y_paddle1(4),
      I2 => p1_y_paddle1(3),
      O => b1_n0160_5_Q
    );
  b1_Msub_GND_5_o_GND_5_o_sub_19_OUT_xor_5_11 : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => p1_y_paddle1(5),
      I1 => p1_y_paddle1(4),
      I2 => p1_y_paddle1(3),
      O => b1_GND_5_o_GND_5_o_sub_19_OUT(5)
    );
  b1_Msub_GND_5_o_GND_5_o_sub_11_OUT_xor_5_11 : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => p1_y_paddle2(5),
      I1 => p1_y_paddle2(4),
      I2 => p1_y_paddle2(3),
      O => b1_GND_5_o_GND_5_o_sub_11_OUT(5)
    );
  b1_Msub_GND_5_o_GND_5_o_sub_68_OUT_xor_8_11 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
    port map (
      I0 => b1_y_ball(8),
      I1 => b1_y_ball(3),
      I2 => b1_y_ball(4),
      I3 => b1_y_ball(5),
      I4 => b1_y_ball(6),
      I5 => b1_y_ball(7),
      O => b1_GND_5_o_GND_5_o_sub_68_OUT(8)
    );
  b1_Msub_GND_5_o_GND_5_o_sub_68_OUT_xor_6_12 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => b1_y_ball(6),
      I1 => b1_y_ball(3),
      I2 => b1_y_ball(4),
      I3 => b1_y_ball(5),
      O => b1_GND_5_o_GND_5_o_sub_68_OUT(6)
    );
  b1_Msub_GND_5_o_GND_5_o_sub_68_OUT_xor_5_11 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => b1_y_ball(5),
      I1 => b1_y_ball(3),
      I2 => b1_y_ball(4),
      O => b1_GND_5_o_GND_5_o_sub_68_OUT(5)
    );
  b1_Mcount_p2_score_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => b1_p2_score(2),
      I1 => b1_p2_score(0),
      I2 => b1_p2_score(1),
      O => b1_Result_2_1
    );
  b1_Mcount_p1_score_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => b1_p1_score(2),
      I1 => b1_p1_score(0),
      I2 => b1_p1_score(1),
      O => b1_Result(2)
    );
  b1_Madd_n0169_xor_5_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => b1_x_ball(5),
      I1 => b1_x_ball(3),
      I2 => b1_x_ball(4),
      O => b1_n0169(5)
    );
  b1_Madd_n0174_xor_5_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => b1_y_ball(5),
      I1 => b1_y_ball(3),
      I2 => b1_y_ball(4),
      O => b1_n0174(5)
    );
  b1_Mcount_p2_score_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => b1_p2_score(3),
      I1 => b1_p2_score(0),
      I2 => b1_p2_score(1),
      I3 => b1_p2_score(2),
      O => b1_Result_3_1
    );
  b1_Mcount_p1_score_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => b1_p1_score(3),
      I1 => b1_p1_score(0),
      I2 => b1_p1_score(1),
      I3 => b1_p1_score(2),
      O => b1_Result(3)
    );
  b1_Msub_GND_5_o_GND_5_o_sub_64_OUT_xor_6_111 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b1_x_ball(5),
      I1 => b1_x_ball(6),
      I2 => b1_x_ball(3),
      I3 => b1_x_ball(4),
      O => b1_Msub_GND_5_o_GND_5_o_sub_64_OUT_xor_6_11
    );
  b1_n0236_inv1 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => Q_i000001_game_state(1),
      I1 => Q_i000001_game_state(0),
      I2 => b1_GND_5_o_GND_5_o_equal_25_o,
      I3 => b1_GND_5_o_GND_5_o_equal_29_o,
      O => b1_n0236_inv
    );
  b1_n0229_inv1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => b1_GND_5_o_GND_5_o_equal_25_o,
      I1 => Q_i000001_game_state(0),
      I2 => Q_i000001_game_state(1),
      O => b1_n0229_inv
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_A1101 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_cy(4),
      I1 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_cy(4),
      I2 => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_cy(4),
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_0_mand
    );
  b1_n0216_inv1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_i000001_game_state(0),
      I1 => reset_IBUF_1,
      I2 => Q_i000001_game_state(1),
      O => b1_n0216_inv
    );
  b1_n0211_inv1 : LUT3
    generic map(
      INIT => X"75"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => Q_i000001_game_state(1),
      I2 => Q_i000001_game_state(0),
      O => b1_n0211_inv
    );
  b1_Mmux_x_ball_9_GND_5_o_mux_51_OUT71 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => b1_GND_5_o_GND_5_o_equal_25_o,
      I2 => b1_GND_5_o_GND_5_o_equal_29_o,
      I3 => b1_n0114(6),
      O => b1_x_ball_9_GND_5_o_mux_51_OUT_6_Q
    );
  b1_Mmux_x_ball_9_GND_5_o_mux_51_OUT91 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => b1_GND_5_o_GND_5_o_equal_25_o,
      I2 => b1_GND_5_o_GND_5_o_equal_29_o,
      I3 => b1_n0114(8),
      O => b1_x_ball_9_GND_5_o_mux_51_OUT_8_Q
    );
  b1_Mmux_y_ball_9_GND_5_o_mux_52_OUT51 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => b1_GND_5_o_GND_5_o_equal_25_o,
      I2 => b1_GND_5_o_GND_5_o_equal_29_o,
      I3 => b1_GND_5_o_dy_31_sub_34_OUT_4_Q,
      O => b1_y_ball_9_GND_5_o_mux_52_OUT_4_Q
    );
  b1_Mmux_y_ball_9_GND_5_o_mux_52_OUT61 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => b1_GND_5_o_GND_5_o_equal_25_o,
      I2 => b1_GND_5_o_GND_5_o_equal_29_o,
      I3 => b1_GND_5_o_dy_31_sub_34_OUT_5_Q,
      O => b1_y_ball_9_GND_5_o_mux_52_OUT_5_Q
    );
  b1_Mmux_y_ball_9_GND_5_o_mux_52_OUT71 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => b1_GND_5_o_GND_5_o_equal_25_o,
      I2 => b1_GND_5_o_GND_5_o_equal_29_o,
      I3 => b1_GND_5_o_dy_31_sub_34_OUT_6_Q,
      O => b1_y_ball_9_GND_5_o_mux_52_OUT_6_Q
    );
  b1_Mmux_y_ball_9_GND_5_o_mux_52_OUT81 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => b1_GND_5_o_GND_5_o_equal_25_o,
      I2 => b1_GND_5_o_GND_5_o_equal_29_o,
      I3 => b1_GND_5_o_dy_31_sub_34_OUT_7_Q,
      O => b1_y_ball_9_GND_5_o_mux_52_OUT_7_Q
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_8_mand1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b1_dy(9),
      I1 => b1_GND_5_o_GND_5_o_equal_3_o,
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_8_mand1_315
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_7_mand1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b1_dy(9),
      I1 => b1_GND_5_o_GND_5_o_equal_3_o,
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_7_mand1_318
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_6_mand1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b1_dy(9),
      I1 => b1_GND_5_o_GND_5_o_equal_3_o,
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_6_mand1_321
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_5_mand1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b1_dy(9),
      I1 => b1_GND_5_o_GND_5_o_equal_3_o,
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_5_mand1_324
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_4_mand1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b1_dy(9),
      I1 => b1_GND_5_o_GND_5_o_equal_3_o,
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_4_mand1_327
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_3_mand1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b1_dy(9),
      I1 => b1_GND_5_o_GND_5_o_equal_3_o,
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_3_mand1_330
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_2_mand1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b1_dy(9),
      I1 => b1_GND_5_o_GND_5_o_equal_3_o,
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_2_mand1_333
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_1_mand1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b1_dy(9),
      I1 => b1_GND_5_o_GND_5_o_equal_3_o,
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_1_mand1_336
    );
  b1_Mcount_p2_score_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b1_p2_score(1),
      I1 => b1_p2_score(0),
      O => b1_Result_1_1
    );
  b1_Mcount_p1_score_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b1_p1_score(1),
      I1 => b1_p1_score(0),
      O => b1_Result(1)
    );
  b1_Msub_GND_5_o_GND_5_o_sub_64_OUT_xor_4_11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b1_x_ball(4),
      I1 => b1_x_ball(3),
      O => b1_GND_5_o_GND_5_o_sub_64_OUT(4)
    );
  b1_Msub_GND_5_o_GND_5_o_sub_68_OUT_xor_4_11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => b1_y_ball(4),
      I1 => b1_y_ball(3),
      O => b1_GND_5_o_GND_5_o_sub_68_OUT(4)
    );
  b1_Madd_n0153_xor_4_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => p1_y_paddle2(4),
      I1 => p1_y_paddle2(3),
      O => b1_n0153_4_Q
    );
  b1_Madd_n0160_xor_4_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => p1_y_paddle1(4),
      I1 => p1_y_paddle1(3),
      O => b1_n0160_4_Q
    );
  p1_Madd_n0106_xor_7_11 : LUT5
    generic map(
      INIT => X"666A6A6A"
    )
    port map (
      I0 => p1_y_paddle2(7),
      I1 => p1_y_paddle2(6),
      I2 => p1_y_paddle2(5),
      I3 => p1_y_paddle2(4),
      I4 => p1_y_paddle2(3),
      O => p1_n0106(7)
    );
  p1_Madd_n0093_xor_7_11 : LUT5
    generic map(
      INIT => X"5666AAAA"
    )
    port map (
      I0 => p1_y_paddle1(7),
      I1 => p1_y_paddle1(5),
      I2 => p1_y_paddle1(3),
      I3 => p1_y_paddle1(4),
      I4 => p1_y_paddle1(6),
      O => p1_n0093(7)
    );
  p1_Msub_GND_7_o_GND_7_o_sub_41_OUT_xor_8_11 : LUT5
    generic map(
      INIT => X"A8B9A8A8"
    )
    port map (
      I0 => p1_y_paddle2(8),
      I1 => p1_y_paddle2(7),
      I2 => b1_Msub_GND_5_o_GND_5_o_sub_11_OUT_xor_7_11_188,
      I3 => p1_y_paddle2(6),
      I4 => p1_Msub_GND_7_o_GND_7_o_sub_41_OUT_xor_9_11,
      O => p1_GND_7_o_GND_7_o_sub_41_OUT_8_Q
    );
  p1_Madd_n0106_xor_6_11 : LUT4
    generic map(
      INIT => X"5666"
    )
    port map (
      I0 => p1_y_paddle2(6),
      I1 => p1_y_paddle2(5),
      I2 => p1_y_paddle2(3),
      I3 => p1_y_paddle2(4),
      O => p1_n0106(6)
    );
  p1_Msub_GND_7_o_GND_7_o_sub_18_OUT_xor_8_11 : LUT5
    generic map(
      INIT => X"A8B9A8A8"
    )
    port map (
      I0 => p1_y_paddle1(8),
      I1 => p1_y_paddle1(7),
      I2 => b1_Msub_GND_5_o_GND_5_o_sub_19_OUT_xor_7_11_187,
      I3 => p1_y_paddle1(6),
      I4 => p1_Msub_GND_7_o_GND_7_o_sub_18_OUT_xor_9_11,
      O => p1_GND_7_o_GND_7_o_sub_18_OUT_8_Q
    );
  p1_Madd_n0093_xor_6_11 : LUT4
    generic map(
      INIT => X"5666"
    )
    port map (
      I0 => p1_y_paddle1(6),
      I1 => p1_y_paddle1(5),
      I2 => p1_y_paddle1(3),
      I3 => p1_y_paddle1(4),
      O => p1_n0093(6)
    );
  p1_Msub_GND_7_o_GND_7_o_sub_41_OUT_xor_9_111 : LUT3
    generic map(
      INIT => X"1F"
    )
    port map (
      I0 => p1_y_paddle2(4),
      I1 => p1_y_paddle2(3),
      I2 => p1_y_paddle2(5),
      O => p1_Msub_GND_7_o_GND_7_o_sub_41_OUT_xor_9_11
    );
  p1_Msub_GND_7_o_GND_7_o_sub_18_OUT_xor_9_111 : LUT3
    generic map(
      INIT => X"1F"
    )
    port map (
      I0 => p1_y_paddle1(4),
      I1 => p1_y_paddle1(3),
      I2 => p1_y_paddle1(5),
      O => p1_Msub_GND_7_o_GND_7_o_sub_18_OUT_xor_9_11
    );
  p1_GND_7_o_GND_7_o_sub_41_OUT_4_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => p1_y_paddle2(4),
      I1 => p1_y_paddle2(3),
      O => p1_GND_7_o_GND_7_o_sub_41_OUT_4_Q
    );
  p1_GND_7_o_GND_7_o_sub_18_OUT_4_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => p1_y_paddle1(3),
      I1 => p1_y_paddle1(4),
      O => p1_GND_7_o_GND_7_o_sub_18_OUT_4_Q
    );
  v1_GND_2_o_GND_2_o_equal_9_o_9_SW0 : LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
    port map (
      I0 => v1_h_count_reg(6),
      I1 => v1_h_count_reg(7),
      I2 => v1_h_count_reg(4),
      I3 => v1_h_count_reg(9),
      I4 => v1_h_count_reg(8),
      O => N6
    );
  v1_GND_2_o_GND_2_o_equal_9_o_9_Q : LUT6
    generic map(
      INIT => X"0000000000008000"
    )
    port map (
      I0 => v1_h_count_reg(3),
      I1 => v1_h_count_reg(2),
      I2 => v1_h_count_reg(1),
      I3 => v1_h_count_reg(0),
      I4 => v1_h_count_reg(5),
      I5 => N6,
      O => v1_GND_2_o_GND_2_o_equal_9_o
    );
  c1_GND_4_o_GND_4_o_equal_2_o_27_1 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => c1_i(13),
      I1 => c1_i(11),
      I2 => c1_i(16),
      I3 => c1_i(15),
      I4 => c1_i(14),
      O => c1_GND_4_o_GND_4_o_equal_2_o_1(27)
    );
  c1_GND_4_o_GND_4_o_equal_2_o_27_2 : LUT6
    generic map(
      INIT => X"0001000000000000"
    )
    port map (
      I0 => c1_i(3),
      I1 => c1_i(4),
      I2 => c1_i(5),
      I3 => c1_i(7),
      I4 => c1_i(1),
      I5 => v1_pixel_reg_86,
      O => c1_GND_4_o_GND_4_o_equal_2_o_27_1_758
    );
  c1_GND_4_o_GND_4_o_equal_2_o_27_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => c1_i(9),
      I1 => c1_i(8),
      I2 => c1_i(10),
      I3 => c1_i(12),
      O => c1_GND_4_o_GND_4_o_equal_2_o_27_2_759
    );
  c1_GND_4_o_GND_4_o_equal_2_o_27_4 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => c1_i(6),
      I1 => c1_i(2),
      I2 => c1_GND_4_o_GND_4_o_equal_2_o_1(27),
      I3 => c1_GND_4_o_GND_4_o_equal_2_o_27_1_758,
      I4 => c1_GND_4_o_GND_4_o_equal_2_o_27_2_759,
      O => c1_GND_4_o_GND_4_o_equal_2_o
    );
  v1_n0069_SW0 : LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
    port map (
      I0 => v1_pixel_reg_86,
      I1 => v1_v_count_reg(9),
      I2 => v1_v_count_reg(5),
      I3 => v1_GND_2_o_GND_2_o_equal_9_o,
      I4 => v1_v_count_reg(4),
      O => N8
    );
  v1_n0069 : LUT6
    generic map(
      INIT => X"0000000002000000"
    )
    port map (
      I0 => v1_PWR_2_o_v_count_reg_9_LessThan_16_o_inv2,
      I1 => v1_v_count_reg(1),
      I2 => v1_v_count_reg(0),
      I3 => v1_v_count_reg(3),
      I4 => v1_v_count_reg(2),
      I5 => N8,
      O => v1_n0069_82
    );
  v1_video_on_SW0 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => v1_h_count_reg(9),
      I1 => v1_h_count_reg(7),
      I2 => v1_h_count_reg(8),
      O => N10
    );
  v1_video_on : LUT6
    generic map(
      INIT => X"0111111111111111"
    )
    port map (
      I0 => v1_v_count_reg(9),
      I1 => N10,
      I2 => v1_v_count_reg(6),
      I3 => v1_v_count_reg(5),
      I4 => v1_v_count_reg(8),
      I5 => v1_v_count_reg(7),
      O => video_on
    );
  r1_Mmux_GND_3_o_GND_3_o_mux_9_OUT15_SW0 : LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => Q_i000001_game_state(1),
      I1 => b1_GND_5_o_BUS_0007_LessThan_67_o,
      I2 => Q_i000001_game_state(0),
      O => N12
    );
  r1_Mmux_GND_3_o_GND_3_o_mux_9_OUT15 : LUT6
    generic map(
      INIT => X"0000000002000000"
    )
    port map (
      I0 => b1_GND_5_o_GND_5_o_LessThan_65_o,
      I1 => paddle2_on,
      I2 => paddle1_on,
      I3 => b1_GND_5_o_BUS_0008_LessThan_71_o,
      I4 => b1_GND_5_o_GND_5_o_LessThan_69_o,
      I5 => N12,
      O => r1_Mmux_GND_3_o_GND_3_o_mux_9_OUT15_180
    );
  b1_GND_5_o_GND_5_o_equal_25_o_9_SW0 : LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
    port map (
      I0 => b1_x_ball(8),
      I1 => b1_x_ball(7),
      I2 => b1_x_ball(4),
      I3 => b1_x_ball(6),
      I4 => b1_x_ball(9),
      O => N14
    );
  b1_GND_5_o_GND_5_o_equal_25_o_9_Q : LUT6
    generic map(
      INIT => X"0001000000000000"
    )
    port map (
      I0 => b1_y_ball(0),
      I1 => b1_x_ball(1),
      I2 => b1_x_ball(2),
      I3 => N14,
      I4 => b1_x_ball(5),
      I5 => b1_x_ball(3),
      O => b1_GND_5_o_GND_5_o_equal_25_o
    );
  b1_GND_5_o_GND_5_o_equal_29_o_9_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => b1_x_ball(9),
      I1 => b1_x_ball(8),
      O => N16
    );
  b1_GND_5_o_GND_5_o_equal_29_o_9_Q : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => b1_Msub_GND_5_o_GND_5_o_sub_64_OUT_xor_6_11,
      I1 => b1_y_ball(0),
      I2 => b1_x_ball(1),
      I3 => b1_x_ball(2),
      I4 => b1_x_ball(7),
      I5 => N16,
      O => b1_GND_5_o_GND_5_o_equal_29_o
    );
  b1_GND_5_o_GND_5_o_equal_3_o_9_SW0 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => b1_y_ball(9),
      I1 => b1_y_ball(8),
      I2 => b1_y_ball(7),
      I3 => b1_y_ball(6),
      I4 => b1_y_ball(4),
      O => N18
    );
  b1_GND_5_o_GND_5_o_equal_3_o_9_Q : LUT6
    generic map(
      INIT => X"0000000001000000"
    )
    port map (
      I0 => b1_y_ball(2),
      I1 => b1_y_ball(1),
      I2 => b1_y_ball(5),
      I3 => b1_y_ball(3),
      I4 => b1_y_ball(0),
      I5 => N18,
      O => b1_GND_5_o_GND_5_o_equal_3_o
    );
  b1_GND_5_o_GND_5_o_equal_6_o_9_SW0 : LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
    port map (
      I0 => b1_y_ball(4),
      I1 => b1_y_ball(7),
      I2 => b1_y_ball(9),
      I3 => b1_y_ball(6),
      I4 => b1_y_ball(8),
      O => N20
    );
  b1_GND_5_o_GND_5_o_equal_6_o_9_Q : LUT6
    generic map(
      INIT => X"0000000002000000"
    )
    port map (
      I0 => b1_y_ball(2),
      I1 => b1_y_ball(3),
      I2 => b1_y_ball(5),
      I3 => b1_y_ball(1),
      I4 => b1_y_ball(0),
      I5 => N20,
      O => b1_GND_5_o_GND_5_o_equal_6_o
    );
  p1_button2_GND_7_o_AND_17_o_inv_SW0 : LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => p1_y_paddle2(8),
      I1 => p1_y_paddle2(5),
      I2 => p1_y_paddle2(1),
      I3 => p1_y_paddle2(0),
      I4 => p1_y_paddle2(2),
      O => N22
    );
  p1_button2_GND_7_o_AND_17_o_inv : LUT6
    generic map(
      INIT => X"FFFFFFFF01000000"
    )
    port map (
      I0 => p1_y_paddle2(6),
      I1 => p1_y_paddle2(7),
      I2 => p1_y_paddle2(4),
      I3 => p1_y_paddle2(3),
      I4 => N22,
      I5 => button2_IBUF_4,
      O => p1_button2_GND_7_o_AND_17_o_inv_707
    );
  p1_button_GND_7_o_AND_12_o_inv_SW0 : LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => p1_y_paddle1(8),
      I1 => p1_y_paddle1(5),
      I2 => p1_y_paddle1(1),
      I3 => p1_y_paddle1(0),
      I4 => p1_y_paddle1(2),
      O => N24
    );
  p1_button_GND_7_o_AND_12_o_inv : LUT6
    generic map(
      INIT => X"FFFFFFFF01000000"
    )
    port map (
      I0 => p1_y_paddle1(6),
      I1 => p1_y_paddle1(7),
      I2 => p1_y_paddle1(4),
      I3 => p1_y_paddle1(3),
      I4 => N24,
      I5 => button_IBUF_2,
      O => p1_button_GND_7_o_AND_12_o_inv_744
    );
  p1_n0140_inv1 : LUT6
    generic map(
      INIT => X"1555FFFFFFFFFFFF"
    )
    port map (
      I0 => p1_y_paddle2(6),
      I1 => p1_y_paddle2(5),
      I2 => p1_y_paddle2(3),
      I3 => p1_y_paddle2(4),
      I4 => button2_IBUF_4,
      I5 => p1_y_paddle2(8),
      O => p1_n0140_inv1_769
    );
  p1_n0140_inv2 : LUT5
    generic map(
      INIT => X"0BBBFFFF"
    )
    port map (
      I0 => p1_n0140_inv1_769,
      I1 => p1_y_paddle2(7),
      I2 => p1_button2_GND_7_o_AND_17_o_inv_707,
      I3 => button3_IBUF_5,
      I4 => reset_IBUF_1,
      O => p1_n0140_inv
    );
  p1_n0136_inv1 : LUT6
    generic map(
      INIT => X"1555FFFFFFFFFFFF"
    )
    port map (
      I0 => p1_y_paddle1(6),
      I1 => p1_y_paddle1(5),
      I2 => p1_y_paddle1(3),
      I3 => p1_y_paddle1(4),
      I4 => button_IBUF_2,
      I5 => p1_y_paddle1(8),
      O => p1_n0136_inv1_770
    );
  p1_n0136_inv2 : LUT5
    generic map(
      INIT => X"0BBBFFFF"
    )
    port map (
      I0 => p1_n0136_inv1_770,
      I1 => p1_y_paddle1(7),
      I2 => button1_IBUF_3,
      I3 => p1_button_GND_7_o_AND_12_o_inv_744,
      I4 => reset_IBUF_1,
      O => p1_n0136_inv
    );
  p1_GND_7_o_GND_7_o_AND_16_o11 : LUT6
    generic map(
      INIT => X"FFFFFFFF00044444"
    )
    port map (
      I0 => v1_h_count_reg(3),
      I1 => v1_h_count_reg(5),
      I2 => v1_h_count_reg(1),
      I3 => v1_h_count_reg(0),
      I4 => v1_h_count_reg(2),
      I5 => v1_h_count_reg(4),
      O => p1_GND_7_o_GND_7_o_AND_16_o1
    );
  p1_GND_7_o_GND_7_o_AND_16_o12 : LUT6
    generic map(
      INIT => X"0101010011111111"
    )
    port map (
      I0 => v1_h_count_reg(9),
      I1 => v1_h_count_reg(8),
      I2 => v1_h_count_reg(5),
      I3 => v1_h_count_reg(2),
      I4 => v1_h_count_reg(3),
      I5 => v1_h_count_reg(4),
      O => p1_GND_7_o_GND_7_o_AND_16_o11_772
    );
  p1_GND_7_o_GND_7_o_AND_16_o13 : LUT6
    generic map(
      INIT => X"0000000002000000"
    )
    port map (
      I0 => p1_GND_7_o_GND_7_o_AND_16_o11_772,
      I1 => v1_h_count_reg(6),
      I2 => v1_h_count_reg(7),
      I3 => p1_GND_7_o_GND_7_o_LessThan_19_o,
      I4 => p1_GND_7_o_GND_7_o_AND_16_o1,
      I5 => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_cy(4),
      O => paddle1_on
    );
  p1_GND_7_o_GND_7_o_AND_21_o11 : LUT6
    generic map(
      INIT => X"FFFFFFFF222AAAAA"
    )
    port map (
      I0 => v1_h_count_reg(5),
      I1 => v1_h_count_reg(2),
      I2 => v1_h_count_reg(1),
      I3 => v1_h_count_reg(0),
      I4 => v1_h_count_reg(3),
      I5 => v1_h_count_reg(4),
      O => p1_GND_7_o_GND_7_o_AND_21_o1
    );
  p1_GND_7_o_GND_7_o_AND_21_o12 : LUT6
    generic map(
      INIT => X"0888080808080808"
    )
    port map (
      I0 => v1_h_count_reg(6),
      I1 => v1_h_count_reg(9),
      I2 => v1_h_count_reg(4),
      I3 => v1_h_count_reg(5),
      I4 => v1_h_count_reg(3),
      I5 => v1_h_count_reg(2),
      O => p1_GND_7_o_GND_7_o_AND_21_o11_774
    );
  p1_GND_7_o_GND_7_o_AND_21_o13 : LUT6
    generic map(
      INIT => X"0000000002000000"
    )
    port map (
      I0 => p1_GND_7_o_GND_7_o_AND_21_o11_774,
      I1 => v1_h_count_reg(7),
      I2 => v1_h_count_reg(8),
      I3 => p1_GND_7_o_GND_7_o_LessThan_42_o,
      I4 => p1_GND_7_o_GND_7_o_AND_21_o1,
      I5 => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_cy(4),
      O => paddle2_on
    );
  p1_Mcount_y_paddle2_SW0 : LUT6
    generic map(
      INIT => X"0001000000000000"
    )
    port map (
      I0 => p1_y_paddle2(8),
      I1 => p1_y_paddle2(1),
      I2 => p1_y_paddle2(0),
      I3 => p1_y_paddle2(2),
      I4 => p1_y_paddle2(5),
      I5 => p1_y_paddle2(3),
      O => N26
    );
  p1_Mcount_y_paddle2 : LUT6
    generic map(
      INIT => X"2222222022222222"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => button2_IBUF_4,
      I2 => p1_y_paddle2(6),
      I3 => p1_y_paddle2(7),
      I4 => p1_y_paddle2(4),
      I5 => N26,
      O => p1_Mcount_y_paddle2_705
    );
  p1_Mcount_y_paddle1_SW0 : LUT6
    generic map(
      INIT => X"0001000000000000"
    )
    port map (
      I0 => p1_y_paddle1(8),
      I1 => p1_y_paddle1(1),
      I2 => p1_y_paddle1(0),
      I3 => p1_y_paddle1(2),
      I4 => p1_y_paddle1(3),
      I5 => p1_y_paddle1(5),
      O => N28
    );
  p1_Mcount_y_paddle1 : LUT6
    generic map(
      INIT => X"2222222022222222"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => button_IBUF_2,
      I2 => p1_y_paddle1(6),
      I3 => p1_y_paddle1(7),
      I4 => p1_y_paddle1(4),
      I5 => N28,
      O => p1_Mcount_y_paddle1_742
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_1
    );
  button_IBUF : IBUF
    port map (
      I => button,
      O => button_IBUF_2
    );
  button1_IBUF : IBUF
    port map (
      I => button1,
      O => button1_IBUF_3
    );
  button2_IBUF : IBUF
    port map (
      I => button2,
      O => button2_IBUF_4
    );
  button3_IBUF : IBUF
    port map (
      I => button3,
      O => button3_IBUF_5
    );
  rgb_11_OBUF : OBUF
    port map (
      I => rgb_10_OBUF_29,
      O => rgb(11)
    );
  rgb_10_OBUF : OBUF
    port map (
      I => rgb_10_OBUF_29,
      O => rgb(10)
    );
  rgb_9_OBUF : OBUF
    port map (
      I => rgb_10_OBUF_29,
      O => rgb(9)
    );
  rgb_8_OBUF : OBUF
    port map (
      I => rgb_10_OBUF_29,
      O => rgb(8)
    );
  rgb_7_OBUF : OBUF
    port map (
      I => rgb_4_OBUF_30,
      O => rgb(7)
    );
  rgb_6_OBUF : OBUF
    port map (
      I => rgb_4_OBUF_30,
      O => rgb(6)
    );
  rgb_5_OBUF : OBUF
    port map (
      I => rgb_4_OBUF_30,
      O => rgb(5)
    );
  rgb_4_OBUF : OBUF
    port map (
      I => rgb_4_OBUF_30,
      O => rgb(4)
    );
  rgb_3_OBUF : OBUF
    port map (
      I => rgb_0_OBUF_31,
      O => rgb(3)
    );
  rgb_2_OBUF : OBUF
    port map (
      I => rgb_0_OBUF_31,
      O => rgb(2)
    );
  rgb_1_OBUF : OBUF
    port map (
      I => rgb_0_OBUF_31,
      O => rgb(1)
    );
  rgb_0_OBUF : OBUF
    port map (
      I => rgb_0_OBUF_31,
      O => rgb(0)
    );
  seg1_6_OBUF : OBUF
    port map (
      I => seg1_6_OBUF_43,
      O => seg1(6)
    );
  seg1_5_OBUF : OBUF
    port map (
      I => seg1_5_OBUF_44,
      O => seg1(5)
    );
  seg1_4_OBUF : OBUF
    port map (
      I => seg1_4_OBUF_45,
      O => seg1(4)
    );
  seg1_3_OBUF : OBUF
    port map (
      I => seg1_3_OBUF_46,
      O => seg1(3)
    );
  seg1_2_OBUF : OBUF
    port map (
      I => seg1_2_OBUF_47,
      O => seg1(2)
    );
  seg1_1_OBUF : OBUF
    port map (
      I => seg1_1_OBUF_48,
      O => seg1(1)
    );
  seg1_0_OBUF : OBUF
    port map (
      I => seg1_0_OBUF_49,
      O => seg1(0)
    );
  seg2_6_OBUF : OBUF
    port map (
      I => seg2_6_OBUF_50,
      O => seg2(6)
    );
  seg2_5_OBUF : OBUF
    port map (
      I => seg2_5_OBUF_51,
      O => seg2(5)
    );
  seg2_4_OBUF : OBUF
    port map (
      I => seg2_4_OBUF_52,
      O => seg2(4)
    );
  seg2_3_OBUF : OBUF
    port map (
      I => seg2_3_OBUF_53,
      O => seg2(3)
    );
  seg2_2_OBUF : OBUF
    port map (
      I => seg2_2_OBUF_54,
      O => seg2(2)
    );
  seg2_1_OBUF : OBUF
    port map (
      I => seg2_1_OBUF_55,
      O => seg2(1)
    );
  seg2_0_OBUF : OBUF
    port map (
      I => seg2_0_OBUF_56,
      O => seg2(0)
    );
  hsync_OBUF : OBUF
    port map (
      I => v1_hsync_reg_26,
      O => hsync
    );
  vsync_OBUF : OBUF
    port map (
      I => v1_vsync_reg_27,
      O => vsync
    );
  Q_i000001_game_state_1 : FDR
    port map (
      C => clk_BUFGP_0,
      D => Q_i000001_game_state_1_glue_set_811,
      R => Q_i000001_reset_inv,
      Q => Q_i000001_game_state(1)
    );
  Q_i000001_game_state_0 : FDR
    port map (
      C => clk_BUFGP_0,
      D => Q_i000001_game_state_0_glue_set_812,
      R => Q_i000001_reset_inv,
      Q => Q_i000001_game_state(0)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lut_4_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b1_x_ball(9),
      I1 => b1_x_ball(8),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lut(4)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lut_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b1_x_ball(2),
      I1 => b1_x_ball(3),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lut(1)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lutdi11 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => b1_x_ball(2),
      I1 => b1_x_ball(3),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lutdi1
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lut_0_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => b1_x_ball(1),
      I1 => b1_y_ball(0),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lut(0)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lut_4_1 : LUT4
    generic map(
      INIT => X"1001"
    )
    port map (
      I0 => b1_y_ball(9),
      I1 => b1_GND_5_o_GND_5_o_sub_19_OUT(9),
      I2 => b1_y_ball(8),
      I3 => b1_GND_5_o_GND_5_o_sub_19_OUT(8),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lut(4)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lutdi41 : LUT4
    generic map(
      INIT => X"F1F0"
    )
    port map (
      I0 => b1_y_ball(9),
      I1 => b1_y_ball(8),
      I2 => b1_GND_5_o_GND_5_o_sub_19_OUT(9),
      I3 => b1_GND_5_o_GND_5_o_sub_19_OUT(8),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_lutdi4
    );
  b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lut_3_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => b1_x_ball(6),
      I1 => b1_x_ball(7),
      O => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lut(3)
    );
  b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lutdi31 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => b1_x_ball(7),
      I1 => b1_x_ball(6),
      O => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lutdi3
    );
  b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lut_0_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => b1_y_ball(0),
      I1 => b1_x_ball(1),
      O => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lut(0)
    );
  b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lutdi1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => b1_x_ball(1),
      I1 => b1_y_ball(0),
      O => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_lutdi
    );
  c1_Mcount_i_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => c1_i(1),
      O => c1_Mcount_i_cy_1_rt_813
    );
  c1_Mcount_i_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => c1_i(2),
      O => c1_Mcount_i_cy_2_rt_814
    );
  c1_Mcount_i_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => c1_i(3),
      O => c1_Mcount_i_cy_3_rt_815
    );
  c1_Mcount_i_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => c1_i(4),
      O => c1_Mcount_i_cy_4_rt_816
    );
  c1_Mcount_i_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => c1_i(5),
      O => c1_Mcount_i_cy_5_rt_817
    );
  c1_Mcount_i_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => c1_i(6),
      O => c1_Mcount_i_cy_6_rt_818
    );
  c1_Mcount_i_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => c1_i(7),
      O => c1_Mcount_i_cy_7_rt_819
    );
  c1_Mcount_i_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => c1_i(8),
      O => c1_Mcount_i_cy_8_rt_820
    );
  c1_Mcount_i_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => c1_i(9),
      O => c1_Mcount_i_cy_9_rt_821
    );
  c1_Mcount_i_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => c1_i(10),
      O => c1_Mcount_i_cy_10_rt_822
    );
  c1_Mcount_i_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => c1_i(11),
      O => c1_Mcount_i_cy_11_rt_823
    );
  c1_Mcount_i_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => c1_i(12),
      O => c1_Mcount_i_cy_12_rt_824
    );
  c1_Mcount_i_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => c1_i(13),
      O => c1_Mcount_i_cy_13_rt_825
    );
  c1_Mcount_i_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => c1_i(14),
      O => c1_Mcount_i_cy_14_rt_826
    );
  c1_Mcount_i_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => c1_i(15),
      O => c1_Mcount_i_cy_15_rt_827
    );
  v1_Mcount_h_count_reg_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v1_h_count_reg(1),
      O => v1_Mcount_h_count_reg_cy_1_rt_828
    );
  v1_Mcount_h_count_reg_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v1_h_count_reg(2),
      O => v1_Mcount_h_count_reg_cy_2_rt_829
    );
  v1_Mcount_h_count_reg_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v1_h_count_reg(3),
      O => v1_Mcount_h_count_reg_cy_3_rt_830
    );
  v1_Mcount_h_count_reg_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v1_h_count_reg(4),
      O => v1_Mcount_h_count_reg_cy_4_rt_831
    );
  v1_Mcount_h_count_reg_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v1_h_count_reg(5),
      O => v1_Mcount_h_count_reg_cy_5_rt_832
    );
  v1_Mcount_h_count_reg_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v1_h_count_reg(6),
      O => v1_Mcount_h_count_reg_cy_6_rt_833
    );
  v1_Mcount_h_count_reg_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v1_h_count_reg(7),
      O => v1_Mcount_h_count_reg_cy_7_rt_834
    );
  v1_Mcount_h_count_reg_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v1_h_count_reg(8),
      O => v1_Mcount_h_count_reg_cy_8_rt_835
    );
  v1_Mcount_v_count_reg_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v1_v_count_reg(1),
      O => v1_Mcount_v_count_reg_cy_1_rt_836
    );
  v1_Mcount_v_count_reg_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v1_v_count_reg(2),
      O => v1_Mcount_v_count_reg_cy_2_rt_837
    );
  v1_Mcount_v_count_reg_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v1_v_count_reg(3),
      O => v1_Mcount_v_count_reg_cy_3_rt_838
    );
  v1_Mcount_v_count_reg_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v1_v_count_reg(4),
      O => v1_Mcount_v_count_reg_cy_4_rt_839
    );
  v1_Mcount_v_count_reg_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v1_v_count_reg(5),
      O => v1_Mcount_v_count_reg_cy_5_rt_840
    );
  v1_Mcount_v_count_reg_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v1_v_count_reg(6),
      O => v1_Mcount_v_count_reg_cy_6_rt_841
    );
  v1_Mcount_v_count_reg_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v1_v_count_reg(7),
      O => v1_Mcount_v_count_reg_cy_7_rt_842
    );
  v1_Mcount_v_count_reg_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v1_v_count_reg(8),
      O => v1_Mcount_v_count_reg_cy_8_rt_843
    );
  c1_Mcount_i_xor_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => c1_i(16),
      O => c1_Mcount_i_xor_16_rt_844
    );
  v1_Mcount_h_count_reg_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v1_h_count_reg(9),
      O => v1_Mcount_h_count_reg_xor_9_rt_845
    );
  v1_Mcount_v_count_reg_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v1_v_count_reg(9),
      O => v1_Mcount_v_count_reg_xor_9_rt_846
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_1_mand1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => b1_dx_9_Q,
      I1 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_cy(4),
      I2 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_cy(4),
      I3 => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_cy(4),
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_1_mand1_309
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_2_mand1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => b1_dx_9_Q,
      I1 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_cy(4),
      I2 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_cy(4),
      I3 => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_cy(4),
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_2_mand1_306
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_3_mand1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => b1_dx_9_Q,
      I1 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_cy(4),
      I2 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_cy(4),
      I3 => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_cy(4),
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_3_mand1_303
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_4_mand1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => b1_dx_9_Q,
      I1 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_cy(4),
      I2 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_cy(4),
      I3 => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_cy(4),
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_4_mand1_300
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_5_mand1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => b1_dx_9_Q,
      I1 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_cy(4),
      I2 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_cy(4),
      I3 => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_cy(4),
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_5_mand1_297
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_6_mand1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => b1_dx_9_Q,
      I1 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_cy(4),
      I2 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_cy(4),
      I3 => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_cy(4),
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_6_mand1_294
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_7_mand1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => b1_dx_9_Q,
      I1 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_cy(4),
      I2 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_cy(4),
      I3 => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_cy(4),
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_7_mand1_291
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_8_mand1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => b1_dx_9_Q,
      I1 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_cy(4),
      I2 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_cy(4),
      I3 => b1_Mcompar_GND_5_o_BUS_0001_LessThan_14_o_cy(4),
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_A_8_mand1_288
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lut_4_1 : LUT6
    generic map(
      INIT => X"0A000A0508020807"
    )
    port map (
      I0 => p1_y_paddle2(8),
      I1 => p1_y_paddle2(7),
      I2 => b1_y_ball(9),
      I3 => b1_y_ball(8),
      I4 => b1_Msub_GND_5_o_GND_5_o_sub_11_OUT_xor_7_12,
      I5 => b1_Msub_GND_5_o_GND_5_o_sub_11_OUT_xor_7_11_188,
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lut(4)
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lutdi41 : LUT6
    generic map(
      INIT => X"555F000A555D0008"
    )
    port map (
      I0 => p1_y_paddle2(8),
      I1 => p1_y_paddle2(7),
      I2 => b1_y_ball(9),
      I3 => b1_y_ball(8),
      I4 => b1_Msub_GND_5_o_GND_5_o_sub_11_OUT_xor_7_12,
      I5 => b1_Msub_GND_5_o_GND_5_o_sub_11_OUT_xor_7_11_188,
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_12_o_lutdi4
    );
  b1_Msub_GND_5_o_GND_5_o_sub_11_OUT_xor_7_11 : LUT5
    generic map(
      INIT => X"AAAA9995"
    )
    port map (
      I0 => p1_y_paddle2(7),
      I1 => p1_y_paddle2(5),
      I2 => p1_y_paddle2(4),
      I3 => p1_y_paddle2(3),
      I4 => p1_y_paddle2(6),
      O => b1_GND_5_o_GND_5_o_sub_11_OUT(7)
    );
  b1_Madd_n0153_xor_8_11 : LUT6
    generic map(
      INIT => X"6A6A6AAA6AAA6AAA"
    )
    port map (
      I0 => p1_y_paddle2(8),
      I1 => p1_y_paddle2(7),
      I2 => p1_y_paddle2(6),
      I3 => p1_y_paddle2(5),
      I4 => p1_y_paddle2(4),
      I5 => p1_y_paddle2(3),
      O => b1_n0153_8_Q
    );
  b1_Madd_n0153_xor_9_11 : LUT6
    generic map(
      INIT => X"8080800080008000"
    )
    port map (
      I0 => p1_y_paddle2(8),
      I1 => p1_y_paddle2(7),
      I2 => p1_y_paddle2(6),
      I3 => p1_y_paddle2(5),
      I4 => p1_y_paddle2(4),
      I5 => p1_y_paddle2(3),
      O => b1_n0153_9_Q
    );
  b1_Mmux_x_ball_9_GND_5_o_mux_51_OUT101 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => b1_GND_5_o_GND_5_o_equal_25_o,
      I2 => b1_GND_5_o_GND_5_o_equal_29_o,
      I3 => b1_n0114(9),
      O => b1_x_ball_9_GND_5_o_mux_51_OUT_9_Q
    );
  b1_Mmux_x_ball_9_GND_5_o_mux_51_OUT81 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => b1_GND_5_o_GND_5_o_equal_25_o,
      I2 => b1_GND_5_o_GND_5_o_equal_29_o,
      I3 => b1_n0114(7),
      O => b1_x_ball_9_GND_5_o_mux_51_OUT_7_Q
    );
  b1_Mmux_x_ball_9_GND_5_o_mux_51_OUT61 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => b1_GND_5_o_GND_5_o_equal_25_o,
      I2 => b1_GND_5_o_GND_5_o_equal_29_o,
      I3 => b1_n0114(5),
      O => b1_x_ball_9_GND_5_o_mux_51_OUT_5_Q
    );
  b1_Mmux_x_ball_9_GND_5_o_mux_51_OUT51 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => b1_GND_5_o_GND_5_o_equal_25_o,
      I2 => b1_GND_5_o_GND_5_o_equal_29_o,
      I3 => b1_n0114(4),
      O => b1_x_ball_9_GND_5_o_mux_51_OUT_4_Q
    );
  b1_Mmux_x_ball_9_GND_5_o_mux_51_OUT41 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => b1_GND_5_o_GND_5_o_equal_25_o,
      I2 => b1_GND_5_o_GND_5_o_equal_29_o,
      I3 => b1_n0114(3),
      O => b1_x_ball_9_GND_5_o_mux_51_OUT_3_Q
    );
  b1_Mmux_x_ball_9_GND_5_o_mux_51_OUT31 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => b1_GND_5_o_GND_5_o_equal_25_o,
      I2 => b1_GND_5_o_GND_5_o_equal_29_o,
      I3 => b1_n0114(2),
      O => b1_x_ball_9_GND_5_o_mux_51_OUT_2_Q
    );
  b1_Mmux_x_ball_9_GND_5_o_mux_51_OUT21 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => b1_GND_5_o_GND_5_o_equal_25_o,
      I2 => b1_GND_5_o_GND_5_o_equal_29_o,
      I3 => b1_n0114(1),
      O => b1_x_ball_9_GND_5_o_mux_51_OUT_1_Q
    );
  b1_Mmux_dx_31_dx_31_mux_42_OUT321 : LUT6
    generic map(
      INIT => X"FEFFFEEE10111000"
    )
    port map (
      I0 => b1_GND_5_o_GND_5_o_equal_25_o,
      I1 => b1_GND_5_o_GND_5_o_equal_29_o,
      I2 => b1_dx_31_dx_31_mux_15_OUT_9_Q,
      I3 => b1_Mmux_dx_31_dx_31_mux_42_OUT11,
      I4 => b1_dx_31_unary_minus_23_OUT_9_Q,
      I5 => b1_dx_31_unary_minus_31_OUT_9_Q,
      O => b1_dx_31_dx_31_mux_42_OUT_9_Q
    );
  b1_Msub_dy_31_unary_minus_30_OUT_lut_9_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => b1_GND_5_o_GND_5_o_equal_6_o,
      I1 => b1_dy_31_dy_31_mux_4_OUT_9_Q,
      I2 => b1_dy_31_unary_minus_7_OUT_9_Q,
      O => b1_Msub_dy_31_unary_minus_30_OUT_lut_9_Q_210
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_9_Q : LUT4
    generic map(
      INIT => X"A965"
    )
    port map (
      I0 => b1_y_ball(9),
      I1 => b1_GND_5_o_GND_5_o_equal_6_o,
      I2 => b1_dy_31_dy_31_mux_4_OUT_9_Q,
      I3 => b1_dy_31_unary_minus_7_OUT_9_Q,
      O => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_9_Q_216
    );
  b1_Msub_dy_31_unary_minus_30_OUT_lut_8_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => b1_GND_5_o_GND_5_o_equal_6_o,
      I1 => b1_dy_31_dy_31_mux_4_OUT_8_Q,
      I2 => b1_dy_31_unary_minus_7_OUT_8_Q,
      O => b1_Msub_dy_31_unary_minus_30_OUT_lut_8_Q_212
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_8_Q : LUT4
    generic map(
      INIT => X"A965"
    )
    port map (
      I0 => b1_y_ball(8),
      I1 => b1_GND_5_o_GND_5_o_equal_6_o,
      I2 => b1_dy_31_dy_31_mux_4_OUT_8_Q,
      I3 => b1_dy_31_unary_minus_7_OUT_8_Q,
      O => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_8_Q_218
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_7_Q : LUT4
    generic map(
      INIT => X"A965"
    )
    port map (
      I0 => b1_y_ball(7),
      I1 => b1_GND_5_o_GND_5_o_equal_6_o,
      I2 => b1_dy_31_dy_31_mux_4_OUT_7_Q,
      I3 => b1_dy_31_unary_minus_7_OUT_7_Q,
      O => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_7_Q_220
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_6_Q : LUT4
    generic map(
      INIT => X"A965"
    )
    port map (
      I0 => b1_y_ball(6),
      I1 => b1_GND_5_o_GND_5_o_equal_6_o,
      I2 => b1_dy_31_dy_31_mux_4_OUT_6_Q,
      I3 => b1_dy_31_unary_minus_7_OUT_6_Q,
      O => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_6_Q_222
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_5_Q : LUT4
    generic map(
      INIT => X"A965"
    )
    port map (
      I0 => b1_y_ball(5),
      I1 => b1_GND_5_o_GND_5_o_equal_6_o,
      I2 => b1_dy_31_dy_31_mux_4_OUT_5_Q,
      I3 => b1_dy_31_unary_minus_7_OUT_5_Q,
      O => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_5_Q_224
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_4_Q : LUT4
    generic map(
      INIT => X"A965"
    )
    port map (
      I0 => b1_y_ball(4),
      I1 => b1_GND_5_o_GND_5_o_equal_6_o,
      I2 => b1_dy_31_dy_31_mux_4_OUT_4_Q,
      I3 => b1_dy_31_unary_minus_7_OUT_4_Q,
      O => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_4_Q_226
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_3_Q : LUT4
    generic map(
      INIT => X"A965"
    )
    port map (
      I0 => b1_y_ball(3),
      I1 => b1_GND_5_o_GND_5_o_equal_6_o,
      I2 => b1_dy_31_dy_31_mux_4_OUT_3_Q,
      I3 => b1_dy_31_unary_minus_7_OUT_3_Q,
      O => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_3_Q_228
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_2_Q : LUT4
    generic map(
      INIT => X"A965"
    )
    port map (
      I0 => b1_y_ball(2),
      I1 => b1_GND_5_o_GND_5_o_equal_6_o,
      I2 => b1_dy_31_dy_31_mux_4_OUT_2_Q,
      I3 => b1_dy_31_unary_minus_7_OUT_2_Q,
      O => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_2_Q_230
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_1_Q : LUT4
    generic map(
      INIT => X"A965"
    )
    port map (
      I0 => b1_y_ball(1),
      I1 => b1_GND_5_o_GND_5_o_equal_6_o,
      I2 => b1_dy_31_dy_31_mux_4_OUT_1_Q,
      I3 => b1_dy_31_unary_minus_7_OUT_1_Q,
      O => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_lut_1_Q_232
    );
  b1_Mmux_y_ball_9_GND_5_o_mux_52_OUT101 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => b1_GND_5_o_GND_5_o_equal_25_o,
      I2 => b1_GND_5_o_GND_5_o_equal_29_o,
      I3 => b1_GND_5_o_dy_31_sub_34_OUT_9_Q,
      O => b1_y_ball_9_GND_5_o_mux_52_OUT_9_Q
    );
  b1_Mmux_y_ball_9_GND_5_o_mux_52_OUT91 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => b1_GND_5_o_GND_5_o_equal_25_o,
      I2 => b1_GND_5_o_GND_5_o_equal_29_o,
      I3 => b1_GND_5_o_dy_31_sub_34_OUT_8_Q,
      O => b1_y_ball_9_GND_5_o_mux_52_OUT_8_Q
    );
  b1_Mmux_y_ball_9_GND_5_o_mux_52_OUT41 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => b1_GND_5_o_GND_5_o_equal_25_o,
      I2 => b1_GND_5_o_GND_5_o_equal_29_o,
      I3 => b1_GND_5_o_dy_31_sub_34_OUT_3_Q,
      O => b1_y_ball_9_GND_5_o_mux_52_OUT_3_Q
    );
  b1_Mmux_y_ball_9_GND_5_o_mux_52_OUT31 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => reset_IBUF_1,
      I1 => b1_GND_5_o_GND_5_o_equal_25_o,
      I2 => b1_GND_5_o_GND_5_o_equal_29_o,
      I3 => b1_GND_5_o_dy_31_sub_34_OUT_2_Q,
      O => b1_y_ball_9_GND_5_o_mux_52_OUT_2_Q
    );
  b1_Mmux_y_ball_9_GND_5_o_mux_52_OUT21 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => b1_GND_5_o_GND_5_o_equal_25_o,
      I1 => b1_GND_5_o_dy_31_sub_34_OUT_1_Q,
      I2 => b1_GND_5_o_GND_5_o_equal_29_o,
      I3 => reset_IBUF_1,
      O => b1_y_ball_9_GND_5_o_mux_52_OUT_1_Q
    );
  b1_Madd_n0114_Madd_lut_9_Q : LUT6
    generic map(
      INIT => X"5555AAA95556AAAA"
    )
    port map (
      I0 => b1_x_ball(9),
      I1 => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy(4),
      I2 => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy(4),
      I3 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy(4),
      I4 => b1_dx_31_dx_31_mux_15_OUT_9_Q,
      I5 => b1_dx_31_unary_minus_23_OUT_9_Q,
      O => b1_Madd_n0114_Madd_lut(9)
    );
  b1_Msub_dx_31_unary_minus_31_OUT_lut_9_Q : LUT5
    generic map(
      INIT => X"55545557"
    )
    port map (
      I0 => b1_dx_31_dx_31_mux_15_OUT_9_Q,
      I1 => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy(4),
      I2 => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy(4),
      I3 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy(4),
      I4 => b1_dx_31_unary_minus_23_OUT_9_Q,
      O => b1_Msub_dx_31_unary_minus_31_OUT_lut_9_Q_213
    );
  b1_Madd_n0114_Madd_lut_8_Q : LUT6
    generic map(
      INIT => X"5555AAA95556AAAA"
    )
    port map (
      I0 => b1_x_ball(8),
      I1 => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy(4),
      I2 => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy(4),
      I3 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy(4),
      I4 => b1_dx_31_dx_31_mux_15_OUT_8_Q,
      I5 => b1_dx_31_unary_minus_23_OUT_8_Q,
      O => b1_Madd_n0114_Madd_lut(8)
    );
  b1_Msub_dx_31_unary_minus_31_OUT_lut_8_Q : LUT5
    generic map(
      INIT => X"55545557"
    )
    port map (
      I0 => b1_dx_31_dx_31_mux_15_OUT_8_Q,
      I1 => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy(4),
      I2 => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy(4),
      I3 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy(4),
      I4 => b1_dx_31_unary_minus_23_OUT_8_Q,
      O => b1_Msub_dx_31_unary_minus_31_OUT_lut_8_Q_215
    );
  b1_Madd_n0114_Madd_lut_7_Q : LUT6
    generic map(
      INIT => X"5555AAA95556AAAA"
    )
    port map (
      I0 => b1_x_ball(7),
      I1 => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy(4),
      I2 => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy(4),
      I3 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy(4),
      I4 => b1_dx_31_dx_31_mux_15_OUT_7_Q,
      I5 => b1_dx_31_unary_minus_23_OUT_7_Q,
      O => b1_Madd_n0114_Madd_lut(7)
    );
  b1_Madd_n0114_Madd_lut_6_Q : LUT6
    generic map(
      INIT => X"5555AAA95556AAAA"
    )
    port map (
      I0 => b1_x_ball(6),
      I1 => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy(4),
      I2 => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy(4),
      I3 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy(4),
      I4 => b1_dx_31_dx_31_mux_15_OUT_6_Q,
      I5 => b1_dx_31_unary_minus_23_OUT_6_Q,
      O => b1_Madd_n0114_Madd_lut(6)
    );
  b1_Madd_n0114_Madd_lut_5_Q : LUT6
    generic map(
      INIT => X"5555AAA95556AAAA"
    )
    port map (
      I0 => b1_x_ball(5),
      I1 => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy(4),
      I2 => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy(4),
      I3 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy(4),
      I4 => b1_dx_31_dx_31_mux_15_OUT_5_Q,
      I5 => b1_dx_31_unary_minus_23_OUT_5_Q,
      O => b1_Madd_n0114_Madd_lut(5)
    );
  b1_Madd_n0114_Madd_lut_4_Q : LUT6
    generic map(
      INIT => X"5555AAA95556AAAA"
    )
    port map (
      I0 => b1_x_ball(4),
      I1 => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy(4),
      I2 => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy(4),
      I3 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy(4),
      I4 => b1_dx_31_dx_31_mux_15_OUT_4_Q,
      I5 => b1_dx_31_unary_minus_23_OUT_4_Q,
      O => b1_Madd_n0114_Madd_lut(4)
    );
  b1_Madd_n0114_Madd_lut_3_Q : LUT6
    generic map(
      INIT => X"5555AAA95556AAAA"
    )
    port map (
      I0 => b1_x_ball(3),
      I1 => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy(4),
      I2 => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy(4),
      I3 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy(4),
      I4 => b1_dx_31_dx_31_mux_15_OUT_3_Q,
      I5 => b1_dx_31_unary_minus_23_OUT_3_Q,
      O => b1_Madd_n0114_Madd_lut(3)
    );
  b1_Madd_n0114_Madd_lut_2_Q : LUT6
    generic map(
      INIT => X"5555AAA95556AAAA"
    )
    port map (
      I0 => b1_x_ball(2),
      I1 => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy(4),
      I2 => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy(4),
      I3 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy(4),
      I4 => b1_dx_31_dx_31_mux_15_OUT_2_Q,
      I5 => b1_dx_31_unary_minus_23_OUT_2_Q,
      O => b1_Madd_n0114_Madd_lut(2)
    );
  b1_Madd_n0114_Madd_lut_1_Q : LUT6
    generic map(
      INIT => X"5555AAA95556AAAA"
    )
    port map (
      I0 => b1_x_ball(1),
      I1 => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy(4),
      I2 => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy(4),
      I3 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy(4),
      I4 => b1_dx_31_dx_31_mux_15_OUT_1_Q,
      I5 => b1_dx_31_unary_minus_23_OUT_1_Q,
      O => b1_Madd_n0114_Madd_lut(1)
    );
  b1_Mmux_dy_31_dy_31_mux_41_OUT321 : LUT6
    generic map(
      INIT => X"FFFEFDFC03020100"
    )
    port map (
      I0 => b1_GND_5_o_GND_5_o_equal_6_o,
      I1 => b1_GND_5_o_GND_5_o_equal_25_o,
      I2 => b1_GND_5_o_GND_5_o_equal_29_o,
      I3 => b1_dy_31_dy_31_mux_4_OUT_9_Q,
      I4 => b1_dy_31_unary_minus_7_OUT_9_Q,
      I5 => b1_dy_31_unary_minus_30_OUT_9_Q,
      O => b1_dy_31_dy_31_mux_41_OUT_9_Q
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_0_mand1 : LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
    port map (
      I0 => b1_y_ball(2),
      I1 => b1_y_ball(1),
      I2 => b1_y_ball(5),
      I3 => b1_y_ball(3),
      I4 => b1_y_ball(0),
      I5 => N18,
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_A_0_mand
    );
  b1_Mmux_y_ball_9_GND_5_o_mux_52_OUT11 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => b1_GND_5_o_GND_5_o_equal_25_o,
      I1 => b1_GND_5_o_dy_31_sub_34_OUT_0_Q,
      I2 => b1_GND_5_o_GND_5_o_equal_29_o,
      I3 => reset_IBUF_1,
      O => b1_y_ball_9_GND_5_o_mux_52_OUT_0_Q
    );
  p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_cy_4_Q : LUT5
    generic map(
      INIT => X"D0FD40F4"
    )
    port map (
      I0 => b1_n0160_8_Q,
      I1 => v1_v_count_reg(8),
      I2 => v1_v_count_reg(9),
      I3 => b1_n0160_9_Q,
      I4 => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_cy(3),
      O => p1_Mcompar_GND_7_o_BUS_0004_LessThan_21_o_cy(4)
    );
  p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_cy_4_Q : LUT5
    generic map(
      INIT => X"D0FD40F4"
    )
    port map (
      I0 => b1_n0153_8_Q,
      I1 => v1_v_count_reg(8),
      I2 => v1_v_count_reg(9),
      I3 => b1_n0153_9_Q,
      I4 => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_cy(3),
      O => p1_Mcompar_GND_7_o_BUS_0008_LessThan_44_o_cy(4)
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_cy_4_Q : LUT5
    generic map(
      INIT => X"55555110"
    )
    port map (
      I0 => p1_GND_7_o_GND_7_o_sub_41_OUT_10_Q,
      I1 => p1_GND_7_o_GND_7_o_sub_41_OUT_8_Q,
      I2 => v1_v_count_reg(8),
      I3 => p1_Mcompar_GND_7_o_GND_7_o_LessThan_42_o_cy(3),
      I4 => v1_v_count_reg(9),
      O => p1_GND_7_o_GND_7_o_LessThan_42_o
    );
  p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_cy_4_Q : LUT5
    generic map(
      INIT => X"55555110"
    )
    port map (
      I0 => b1_GND_5_o_GND_5_o_sub_19_OUT(9),
      I1 => p1_GND_7_o_GND_7_o_sub_18_OUT_8_Q,
      I2 => v1_v_count_reg(8),
      I3 => p1_Mcompar_GND_7_o_GND_7_o_LessThan_19_o_cy(3),
      I4 => v1_v_count_reg(9),
      O => p1_GND_7_o_GND_7_o_LessThan_19_o
    );
  b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy_4_Q : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => b1_x_ball(8),
      I1 => b1_x_ball(9),
      I2 => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy(3),
      O => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy(4)
    );
  b1_Madd_n0160_xor_8_11 : LUT6
    generic map(
      INIT => X"5666AAAAAAAAAAAA"
    )
    port map (
      I0 => p1_y_paddle1(8),
      I1 => p1_y_paddle1(5),
      I2 => p1_y_paddle1(3),
      I3 => p1_y_paddle1(4),
      I4 => p1_y_paddle1(7),
      I5 => p1_y_paddle1(6),
      O => b1_n0160_8_Q
    );
  b1_Madd_n0160_xor_9_11 : LUT6
    generic map(
      INIT => X"8080800080008000"
    )
    port map (
      I0 => p1_y_paddle1(6),
      I1 => p1_y_paddle1(7),
      I2 => p1_y_paddle1(8),
      I3 => p1_y_paddle1(5),
      I4 => p1_y_paddle1(3),
      I5 => p1_y_paddle1(4),
      O => b1_n0160_9_Q
    );
  b1_Msub_GND_5_o_GND_5_o_sub_19_OUT_xor_9_11 : LUT6
    generic map(
      INIT => X"0001000100010101"
    )
    port map (
      I0 => p1_y_paddle1(8),
      I1 => p1_y_paddle1(6),
      I2 => p1_y_paddle1(7),
      I3 => p1_y_paddle1(5),
      I4 => p1_y_paddle1(3),
      I5 => p1_y_paddle1(4),
      O => b1_GND_5_o_GND_5_o_sub_19_OUT(9)
    );
  b1_Madd_n0174_xor_7_12 : LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => b1_y_ball(7),
      I1 => b1_y_ball(6),
      I2 => b1_y_ball(5),
      I3 => b1_y_ball(3),
      I4 => b1_y_ball(4),
      O => b1_n0174(7)
    );
  Q_i000001_game_state_1_glue_set : LUT5
    generic map(
      INIT => X"AABAAAAA"
    )
    port map (
      I0 => Q_i000001_p1_score_3_GND_8_o_equal_2_o,
      I1 => b1_p2_score(3),
      I2 => b1_p2_score(2),
      I3 => b1_p2_score(1),
      I4 => b1_p2_score(0),
      O => Q_i000001_game_state_1_glue_set_811
    );
  b1_Madd_n0169_xor_8_11 : LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => b1_x_ball(8),
      I1 => b1_x_ball(7),
      I2 => b1_x_ball(5),
      I3 => b1_x_ball(3),
      I4 => b1_x_ball(4),
      I5 => b1_x_ball(6),
      O => b1_n0169(8)
    );
  b1_Msub_GND_5_o_GND_5_o_sub_64_OUT_xor_8_11 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
    port map (
      I0 => b1_x_ball(8),
      I1 => b1_x_ball(7),
      I2 => b1_x_ball(5),
      I3 => b1_x_ball(6),
      I4 => b1_x_ball(3),
      I5 => b1_x_ball(4),
      O => b1_GND_5_o_GND_5_o_sub_64_OUT(8)
    );
  b1_Madd_n0174_xor_8_11 : LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => b1_y_ball(8),
      I1 => b1_y_ball(5),
      I2 => b1_y_ball(3),
      I3 => b1_y_ball(4),
      I4 => b1_y_ball(6),
      I5 => b1_y_ball(7),
      O => b1_n0174(8)
    );
  b1_Msub_GND_5_o_GND_5_o_sub_68_OUT_xor_7_11 : LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
    port map (
      I0 => b1_y_ball(7),
      I1 => b1_y_ball(5),
      I2 => b1_y_ball(6),
      I3 => b1_y_ball(3),
      I4 => b1_y_ball(4),
      O => b1_GND_5_o_GND_5_o_sub_68_OUT(7)
    );
  b1_Madd_n0169_xor_4_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b1_x_ball(4),
      I1 => b1_x_ball(3),
      O => b1_n0169(4)
    );
  b1_Madd_n0174_xor_4_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b1_y_ball(4),
      I1 => b1_y_ball(3),
      O => b1_n0174(4)
    );
  b1_Msub_GND_5_o_GND_5_o_sub_64_OUT_xor_7_11 : LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
    port map (
      I0 => b1_x_ball(7),
      I1 => b1_x_ball(5),
      I2 => b1_x_ball(6),
      I3 => b1_x_ball(3),
      I4 => b1_x_ball(4),
      O => b1_GND_5_o_GND_5_o_sub_64_OUT(7)
    );
  p1_Msub_GND_7_o_GND_7_o_sub_41_OUT_xor_10_11 : LUT6
    generic map(
      INIT => X"0001000100010101"
    )
    port map (
      I0 => p1_y_paddle2(6),
      I1 => p1_y_paddle2(7),
      I2 => p1_y_paddle2(8),
      I3 => p1_y_paddle2(5),
      I4 => p1_y_paddle2(4),
      I5 => p1_y_paddle2(3),
      O => p1_GND_7_o_GND_7_o_sub_41_OUT_10_Q
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_cy_4_SW0 : LUT3
    generic map(
      INIT => X"B2"
    )
    port map (
      I0 => v1_h_count_reg(8),
      I1 => b1_GND_5_o_GND_5_o_sub_64_OUT(8),
      I2 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_cy(3),
      O => N32
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_65_o_cy_4_Q : LUT6
    generic map(
      INIT => X"DDDDDDDA44444448"
    )
    port map (
      I0 => b1_x_ball(9),
      I1 => v1_h_count_reg(9),
      I2 => b1_Msub_GND_5_o_GND_5_o_sub_64_OUT_xor_6_11,
      I3 => b1_x_ball(7),
      I4 => b1_x_ball(8),
      I5 => N32,
      O => b1_GND_5_o_GND_5_o_LessThan_65_o
    );
  b1_Mmux_dx_31_dx_31_mux_42_OUT111 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_20_o_cy(4),
      I1 => b1_x_ball(8),
      I2 => b1_x_ball(9),
      I3 => b1_Mcompar_GND_5_o_BUS_0002_LessThan_18_o_cy(3),
      I4 => b1_Mcompar_GND_5_o_BUS_0003_LessThan_22_o_cy(4),
      O => b1_Mmux_dx_31_dx_31_mux_42_OUT11
    );
  b1_Msub_GND_5_o_GND_5_o_sub_19_OUT_xor_7_11 : LUT5
    generic map(
      INIT => X"AAAA9995"
    )
    port map (
      I0 => p1_y_paddle1(7),
      I1 => p1_y_paddle1(5),
      I2 => p1_y_paddle1(4),
      I3 => p1_y_paddle1(3),
      I4 => p1_y_paddle1(6),
      O => b1_GND_5_o_GND_5_o_sub_19_OUT(7)
    );
  b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_cy_4_SW1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => b1_y_ball(3),
      I1 => b1_y_ball(4),
      I2 => b1_y_ball(5),
      I3 => b1_y_ball(6),
      I4 => b1_y_ball(7),
      I5 => b1_y_ball(8),
      O => N38
    );
  b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_cy_4_Q : LUT6
    generic map(
      INIT => X"FFBFBF0BFF2F2F02"
    )
    port map (
      I0 => b1_Mcompar_GND_5_o_BUS_0008_LessThan_71_o_cy(3),
      I1 => v1_v_count_reg(8),
      I2 => v1_v_count_reg(9),
      I3 => N38,
      I4 => b1_y_ball(9),
      I5 => b1_n0174(8),
      O => b1_GND_5_o_BUS_0008_LessThan_71_o
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_cy_4_SW1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => b1_y_ball(3),
      I1 => b1_y_ball(4),
      I2 => b1_y_ball(5),
      I3 => b1_y_ball(6),
      I4 => b1_y_ball(7),
      I5 => b1_y_ball(8),
      O => N40
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_cy_4_Q : LUT6
    generic map(
      INIT => X"FD33C431DC334010"
    )
    port map (
      I0 => b1_GND_5_o_GND_5_o_sub_68_OUT(8),
      I1 => N40,
      I2 => b1_Mcompar_GND_5_o_GND_5_o_LessThan_69_o_cy(3),
      I3 => b1_y_ball(9),
      I4 => v1_v_count_reg(9),
      I5 => v1_v_count_reg(8),
      O => b1_GND_5_o_GND_5_o_LessThan_69_o
    );
  b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_cy_4_SW1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => b1_x_ball(3),
      I1 => b1_x_ball(4),
      I2 => b1_x_ball(5),
      I3 => b1_x_ball(6),
      I4 => b1_x_ball(7),
      I5 => b1_x_ball(8),
      O => N42
    );
  b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_cy_4_Q : LUT6
    generic map(
      INIT => X"FFBFBF0BFF2F2F02"
    )
    port map (
      I0 => b1_Mcompar_GND_5_o_BUS_0007_LessThan_67_o_cy(3),
      I1 => v1_h_count_reg(8),
      I2 => v1_h_count_reg(9),
      I3 => N42,
      I4 => b1_x_ball(9),
      I5 => b1_n0169(8),
      O => b1_GND_5_o_BUS_0007_LessThan_67_o
    );
  Q_i000001_game_state_0_glue_set : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => b1_p1_score(2),
      I1 => b1_p1_score(1),
      I2 => b1_p1_score(0),
      I3 => b1_p1_score(3),
      O => Q_i000001_game_state_0_glue_set_812
    );
  b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => b1_y_ball(0),
      O => b1_Msub_GND_5_o_dy_31_sub_34_OUT_9_0_cy_0_rt_851
    );
  b1_Msub_GND_5_o_GND_5_o_sub_19_OUT_xor_8_11 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA9995"
    )
    port map (
      I0 => p1_y_paddle1(8),
      I1 => p1_y_paddle1(5),
      I2 => p1_y_paddle1(4),
      I3 => p1_y_paddle1(3),
      I4 => p1_y_paddle1(7),
      I5 => p1_y_paddle1(6),
      O => b1_GND_5_o_GND_5_o_sub_19_OUT(8)
    );
  c1_clk_1ms_BUFG : BUFG
    port map (
      O => c1_clk_1ms_BUFG_32,
      I => c1_clk_1ms_852
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_0
    );
  c1_Mcount_i_lut_0_INV_0 : INV
    port map (
      I => v1_pixel_reg_86,
      O => Result
    );
  v1_Mcount_h_count_reg_lut_0_INV_0 : INV
    port map (
      I => v1_h_count_reg(0),
      O => v1_Mcount_h_count_reg_lut(0)
    );
  v1_Mcount_v_count_reg_lut_0_INV_0 : INV
    port map (
      I => v1_v_count_reg(0),
      O => v1_Mcount_v_count_reg_lut(0)
    );
  b1_Msub_dx_31_unary_minus_23_OUT_lut_9_INV_0 : INV
    port map (
      I => b1_dx_31_dx_31_mux_15_OUT_9_Q,
      O => b1_Msub_dx_31_unary_minus_23_OUT_lut_9_Q
    );
  b1_Msub_dx_31_unary_minus_23_OUT_lut_8_INV_0 : INV
    port map (
      I => b1_dx_31_dx_31_mux_15_OUT_8_Q,
      O => b1_Msub_dx_31_unary_minus_23_OUT_lut_8_Q
    );
  b1_Msub_dx_31_unary_minus_23_OUT_lut_7_INV_0 : INV
    port map (
      I => b1_dx_31_dx_31_mux_15_OUT_7_Q,
      O => b1_Msub_dx_31_unary_minus_23_OUT_lut_7_Q
    );
  b1_Msub_dx_31_unary_minus_23_OUT_lut_6_INV_0 : INV
    port map (
      I => b1_dx_31_dx_31_mux_15_OUT_6_Q,
      O => b1_Msub_dx_31_unary_minus_23_OUT_lut_6_Q
    );
  b1_Msub_dx_31_unary_minus_23_OUT_lut_5_INV_0 : INV
    port map (
      I => b1_dx_31_dx_31_mux_15_OUT_5_Q,
      O => b1_Msub_dx_31_unary_minus_23_OUT_lut_5_Q
    );
  b1_Msub_dx_31_unary_minus_23_OUT_lut_4_INV_0 : INV
    port map (
      I => b1_dx_31_dx_31_mux_15_OUT_4_Q,
      O => b1_Msub_dx_31_unary_minus_23_OUT_lut_4_Q
    );
  b1_Msub_dx_31_unary_minus_23_OUT_lut_3_INV_0 : INV
    port map (
      I => b1_dx_31_dx_31_mux_15_OUT_3_Q,
      O => b1_Msub_dx_31_unary_minus_23_OUT_lut_3_Q
    );
  b1_Msub_dx_31_unary_minus_23_OUT_lut_2_INV_0 : INV
    port map (
      I => b1_dx_31_dx_31_mux_15_OUT_2_Q,
      O => b1_Msub_dx_31_unary_minus_23_OUT_lut_2_Q
    );
  b1_Msub_dx_31_unary_minus_23_OUT_lut_1_INV_0 : INV
    port map (
      I => b1_dx_31_dx_31_mux_15_OUT_1_Q,
      O => b1_Msub_dx_31_unary_minus_23_OUT_lut_1_Q
    );
  b1_Msub_dy_31_unary_minus_7_OUT_lut_9_INV_0 : INV
    port map (
      I => b1_dy_31_dy_31_mux_4_OUT_9_Q,
      O => b1_Msub_dy_31_unary_minus_7_OUT_lut_9_Q
    );
  b1_Msub_dy_31_unary_minus_7_OUT_lut_8_INV_0 : INV
    port map (
      I => b1_dy_31_dy_31_mux_4_OUT_8_Q,
      O => b1_Msub_dy_31_unary_minus_7_OUT_lut_8_Q
    );
  b1_Msub_dy_31_unary_minus_7_OUT_lut_7_INV_0 : INV
    port map (
      I => b1_dy_31_dy_31_mux_4_OUT_7_Q,
      O => b1_Msub_dy_31_unary_minus_7_OUT_lut_7_Q
    );
  b1_Msub_dy_31_unary_minus_7_OUT_lut_6_INV_0 : INV
    port map (
      I => b1_dy_31_dy_31_mux_4_OUT_6_Q,
      O => b1_Msub_dy_31_unary_minus_7_OUT_lut_6_Q
    );
  b1_Msub_dy_31_unary_minus_7_OUT_lut_5_INV_0 : INV
    port map (
      I => b1_dy_31_dy_31_mux_4_OUT_5_Q,
      O => b1_Msub_dy_31_unary_minus_7_OUT_lut_5_Q
    );
  b1_Msub_dy_31_unary_minus_7_OUT_lut_4_INV_0 : INV
    port map (
      I => b1_dy_31_dy_31_mux_4_OUT_4_Q,
      O => b1_Msub_dy_31_unary_minus_7_OUT_lut_4_Q
    );
  b1_Msub_dy_31_unary_minus_7_OUT_lut_3_INV_0 : INV
    port map (
      I => b1_dy_31_dy_31_mux_4_OUT_3_Q,
      O => b1_Msub_dy_31_unary_minus_7_OUT_lut_3_Q
    );
  b1_Msub_dy_31_unary_minus_7_OUT_lut_2_INV_0 : INV
    port map (
      I => b1_dy_31_dy_31_mux_4_OUT_2_Q,
      O => b1_Msub_dy_31_unary_minus_7_OUT_lut_2_Q
    );
  b1_Msub_dy_31_unary_minus_7_OUT_lut_1_INV_0 : INV
    port map (
      I => b1_dy_31_dy_31_mux_4_OUT_1_Q,
      O => b1_Msub_dy_31_unary_minus_7_OUT_lut_1_Q
    );
  c1_clk_1ms_INV_4_o1_INV_0 : INV
    port map (
      I => c1_clk_1ms_852,
      O => c1_clk_1ms_INV_4_o
    );
  Q_i000001_reset_inv1_INV_0 : INV
    port map (
      I => reset_IBUF_1,
      O => Q_i000001_reset_inv
    );
  b1_Mcount_p2_score_xor_0_11_INV_0 : INV
    port map (
      I => b1_p2_score(0),
      O => b1_Result_0_1
    );
  b1_Mcount_p1_score_xor_0_11_INV_0 : INV
    port map (
      I => b1_p1_score(0),
      O => b1_Result(0)
    );
  b1_n0169_3_1_INV_0 : INV
    port map (
      I => b1_x_ball(3),
      O => b1_n0169(3)
    );
  b1_n0174_3_1_INV_0 : INV
    port map (
      I => b1_y_ball(3),
      O => b1_n0174(3)
    );
  b1_n0153_3_1_INV_0 : INV
    port map (
      I => p1_y_paddle2(3),
      O => b1_n0153_3_Q
    );
  b1_n0160_3_1_INV_0 : INV
    port map (
      I => p1_y_paddle1(3),
      O => b1_n0160_3_Q
    );
  b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lutdi41_INV_0 : INV
    port map (
      I => b1_x_ball(9),
      O => b1_Mcompar_GND_5_o_GND_5_o_LessThan_10_o_lutdi4
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_1_INV_0 : INV
    port map (
      I => b1_dx_9_Q,
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_1_Q
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_2_INV_0 : INV
    port map (
      I => b1_dx_9_Q,
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_2_Q
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_3_INV_0 : INV
    port map (
      I => b1_dx_9_Q,
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_3_Q
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_4_INV_0 : INV
    port map (
      I => b1_dx_9_Q,
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_4_Q
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_5_INV_0 : INV
    port map (
      I => b1_dx_9_Q,
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_5_Q
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_6_INV_0 : INV
    port map (
      I => b1_dx_9_Q,
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_6_Q
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_7_INV_0 : INV
    port map (
      I => b1_dx_9_Q,
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_7_Q
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_8_INV_0 : INV
    port map (
      I => b1_dx_9_Q,
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_8_Q
    );
  b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_9_INV_0 : INV
    port map (
      I => b1_dx_9_Q,
      O => b1_Mmux_dx_31_dx_31_mux_15_OUT_rs_lut_9_Q
    );
  b1_Madd_n0114_Madd_lut_0_1_INV_0 : INV
    port map (
      I => b1_y_ball(0),
      O => b1_Madd_n0114_Madd_lut(0)
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_1_INV_0 : INV
    port map (
      I => b1_dy(9),
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_1_Q
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_2_INV_0 : INV
    port map (
      I => b1_dy(9),
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_2_Q
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_3_INV_0 : INV
    port map (
      I => b1_dy(9),
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_3_Q
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_4_INV_0 : INV
    port map (
      I => b1_dy(9),
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_4_Q
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_5_INV_0 : INV
    port map (
      I => b1_dy(9),
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_5_Q
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_6_INV_0 : INV
    port map (
      I => b1_dy(9),
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_6_Q
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_7_INV_0 : INV
    port map (
      I => b1_dy(9),
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_7_Q
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_8_INV_0 : INV
    port map (
      I => b1_dy(9),
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_8_Q
    );
  b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_9_INV_0 : INV
    port map (
      I => b1_dy(9),
      O => b1_Mmux_dy_31_dy_31_mux_4_OUT_rs_lut_9_Q
    );

end Structure;

