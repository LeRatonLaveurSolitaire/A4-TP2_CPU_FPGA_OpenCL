-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 18.1 (Release Build #625)
-- 
-- Legal Notice: Copyright 2018 Intel Corporation.  All rights reserved.
-- Your use of  Intel Corporation's design tools,  logic functions and other
-- software and  tools, and its AMPP partner logic functions, and any output
-- files any  of the foregoing (including  device programming  or simulation
-- files), and  any associated  documentation  or information  are expressly
-- subject  to the terms and  conditions of the  Intel FPGA Software License
-- Agreement, Intel MegaCore Function License Agreement, or other applicable
-- license agreement,  including,  without limitation,  that your use is for
-- the  sole  purpose of  programming  logic devices  manufactured by  Intel
-- and  sold by Intel  or its authorized  distributors. Please refer  to the
-- applicable agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from i_sfc_logic_c1_for_cond_preheader_gradient_c1_enter_gradient50
-- VHDL created on Mon Feb 10 15:02:28 2025


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY altera_lnsim;
USE altera_lnsim.altera_lnsim_components.altera_syncram;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity i_sfc_logic_c1_for_cond_preheader_gradient_c1_enter_gradient50 is
    port (
        in_c1_eni5_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_eni5_1 : in std_logic_vector(9 downto 0);  -- ufix10
        in_c1_eni5_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_eni5_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_eni5_4 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_eni5_5 : in std_logic_vector(31 downto 0);  -- ufix32
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exi1_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exi1_1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c1_for_cond_preheader_gradient_c1_enter_gradient50;

architecture normal of i_sfc_logic_c1_for_cond_preheader_gradient_c1_enter_gradient50 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pop_i32_coalesced_pop3_gradient59 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_pop9_gradient131 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_9 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_rows_0_0_pop8_gradient65 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_8 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_rows_1_0_pop7_gradient55 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient53 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_4 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_rows_298_0_pop6_gradient69 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_6 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_rows_299_0_pop5_gradient61 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_coalesced_push3_gradient63 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_push9_gradient133 is
        port (
            in_c1_ene3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_9 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_rows_0_0_push8_gradient75 is
        port (
            in_c1_ene3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_8 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_rows_1_0_push7_gradient67 is
        port (
            in_c1_ene3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_rows_297_0_coalesced_push4_gradient57 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_4 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_rows_298_0_push6_gradient71 is
        port (
            in_c1_ene3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_6 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_rows_299_0_push5_gradient73 is
        port (
            in_c1_ene3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_add43_add960_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add43_add992_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul21_117_add248_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul21_1_1_add372_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul21_1_2_add620_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul21_1_add124_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul21_2_1_add496_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul22_118_add186_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul22_1_1_add310_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul22_1_2_add558_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul22_1_add62_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul22_2_1_add434_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul24_119_add688_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul24_119_add744_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul24_1_1_add750_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul24_1_1_add806_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul24_1_2_add874_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul24_1_2_add930_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul24_1_add626_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul24_1_add682_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul24_2_1_add812_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul24_2_1_add868_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_gradient_0_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_gradient_10_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_gradient_11_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_gradient_12_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_gradient_13_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_gradient_14_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_gradient_15_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_gradient_16_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_gradient_17_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_gradient_18_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_gradient_1_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_gradient_2_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_gradient_3_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_gradient_4_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_gradient_5_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_gradient_6_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_gradient_7_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_gradient_8_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_gradient_9_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_unnamed_gradient170_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient170_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_gradient170_multconst_x_q : STD_LOGIC_VECTOR (21 downto 0);
    signal c_i10_1gr_q : STD_LOGIC_VECTOR (9 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_128_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_gradient_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_gradient_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_coalesced_pop3_gradient_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_coalesced_pop3_gradient_out_feedback_stall_out_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_pop9_gradient_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_pop9_gradient_out_feedback_stall_out_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_rows_0_0_pop8_gradient_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_rows_0_0_pop8_gradient_out_feedback_stall_out_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_rows_1_0_pop7_gradient_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_rows_1_0_pop7_gradient_out_feedback_stall_out_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient_out_feedback_stall_out_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_rows_298_0_pop6_gradient_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_rows_298_0_pop6_gradient_out_feedback_stall_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_rows_299_0_pop5_gradient_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_rows_299_0_pop5_gradient_out_feedback_stall_out_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_coalesced_push3_gradient_out_feedback_out_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_coalesced_push3_gradient_out_feedback_valid_out_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_push9_gradient_out_feedback_out_9 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_push9_gradient_out_feedback_valid_out_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_rows_0_0_push8_gradient_out_feedback_out_8 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_rows_0_0_push8_gradient_out_feedback_valid_out_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_rows_1_0_push7_gradient_out_feedback_out_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_rows_1_0_push7_gradient_out_feedback_valid_out_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_rows_297_0_coalesced_push4_gradient_out_feedback_out_4 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_rows_297_0_coalesced_push4_gradient_out_feedback_valid_out_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_rows_298_0_push6_gradient_out_feedback_out_6 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_rows_298_0_push6_gradient_out_feedback_valid_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_rows_299_0_push5_gradient_out_feedback_out_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_rows_299_0_push5_gradient_out_feedback_valid_out_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add43_add960_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add43_add960_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add43_add960_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add43_add960_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add43_add992_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add43_add992_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add43_add992_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add43_add992_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul21_117_add248_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul21_117_add248_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul21_117_add248_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul21_117_add248_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul21_117_add248_gradient_vt_const_31_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul21_117_add248_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul21_117_add248_gradient_vt_select_14_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul21_1_1_add372_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul21_1_1_add372_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul21_1_1_add372_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul21_1_1_add372_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul21_1_1_add372_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul21_1_1_add372_gradient_vt_select_14_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul21_1_2_add620_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul21_1_2_add620_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul21_1_2_add620_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul21_1_2_add620_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul21_1_2_add620_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul21_1_2_add620_gradient_vt_select_14_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul21_1_add124_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul21_1_add124_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul21_1_add124_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul21_1_add124_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul21_1_add124_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul21_1_add124_gradient_vt_select_14_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul21_2_1_add496_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul21_2_1_add496_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul21_2_1_add496_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul21_2_1_add496_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul21_2_1_add496_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul21_2_1_add496_gradient_vt_select_14_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul22_118_add186_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul22_118_add186_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul22_118_add186_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul22_118_add186_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul22_118_add186_gradient_vt_const_31_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul22_118_add186_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul22_118_add186_gradient_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul22_118_masked_gradient_vt_const_31_q : STD_LOGIC_VECTOR (23 downto 0);
    signal i_mul22_118_masked_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul22_118_masked_gradient_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul22_1_1_add310_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul22_1_1_add310_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul22_1_1_add310_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul22_1_1_add310_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul22_1_1_add310_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul22_1_1_add310_gradient_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul22_1_1_masked_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul22_1_1_masked_gradient_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul22_1_2_add558_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul22_1_2_add558_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul22_1_2_add558_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul22_1_2_add558_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul22_1_2_add558_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul22_1_2_add558_gradient_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul22_1_2_masked_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul22_1_2_masked_gradient_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul22_1_add62_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul22_1_add62_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul22_1_add62_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul22_1_add62_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul22_1_add62_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul22_1_add62_gradient_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul22_1_masked_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul22_1_masked_gradient_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul22_2_1_add434_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul22_2_1_add434_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul22_2_1_add434_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul22_2_1_add434_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul22_2_1_add434_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul22_2_1_add434_gradient_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul22_2_1_masked_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul22_2_1_masked_gradient_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul24_119_add688_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_119_add688_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_119_add688_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_119_add688_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_119_add688_gradient_vt_const_31_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_mul24_119_add688_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul24_119_add688_gradient_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul24_119_add744_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_119_add744_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_119_add744_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_119_add744_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_119_add744_gradient_vt_const_31_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul24_119_add744_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul24_119_add744_gradient_vt_select_12_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_mul24_1_1_add750_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_1_1_add750_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_1_1_add750_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_1_1_add750_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_1_1_add750_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul24_1_1_add750_gradient_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul24_1_1_add806_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_1_1_add806_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_1_1_add806_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_1_1_add806_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_1_1_add806_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul24_1_1_add806_gradient_vt_select_12_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_mul24_1_2_add874_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_1_2_add874_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_1_2_add874_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_1_2_add874_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_1_2_add874_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul24_1_2_add874_gradient_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul24_1_2_add930_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_1_2_add930_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_1_2_add930_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_1_2_add930_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_1_2_add930_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul24_1_2_add930_gradient_vt_select_12_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_mul24_1_add626_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_1_add626_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_1_add626_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_1_add626_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_1_add626_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul24_1_add626_gradient_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul24_1_add682_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_1_add682_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_1_add682_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_1_add682_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_1_add682_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul24_1_add682_gradient_vt_select_12_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_mul24_2_1_add812_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_2_1_add812_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_2_1_add812_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_2_1_add812_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_2_1_add812_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul24_2_1_add812_gradient_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul24_2_1_add868_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_2_1_add868_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_2_1_add868_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_2_1_add868_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul24_2_1_add868_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul24_2_1_add868_gradient_vt_select_12_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_not_select999_gradient_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_not_select999_gradient_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_not_select999_gradient_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_not_select999_gradient_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_gradient_0_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_0_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_0_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_0_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_0_gradient_vt_const_31_q : STD_LOGIC_VECTOR (14 downto 0);
    signal i_reduction_gradient_0_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_gradient_0_gradient_vt_select_16_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_reduction_gradient_10_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_10_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_10_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_10_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_10_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_gradient_10_gradient_vt_select_15_b : STD_LOGIC_VECTOR (14 downto 0);
    signal i_reduction_gradient_11_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_11_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_11_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_11_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_11_gradient_vt_const_31_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_reduction_gradient_11_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_gradient_11_gradient_vt_select_17_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_reduction_gradient_12_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_12_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_12_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_12_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_12_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_gradient_12_gradient_vt_select_16_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_reduction_gradient_13_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_13_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_13_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_13_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_13_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_gradient_13_gradient_vt_select_15_b : STD_LOGIC_VECTOR (14 downto 0);
    signal i_reduction_gradient_14_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_14_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_14_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_14_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_14_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_gradient_14_gradient_vt_select_17_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_reduction_gradient_15_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_15_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_15_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_15_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_15_gradient_vt_const_31_q : STD_LOGIC_VECTOR (20 downto 0);
    signal i_reduction_gradient_15_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_gradient_15_gradient_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_reduction_gradient_16_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_16_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_16_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_16_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_16_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_gradient_16_gradient_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_reduction_gradient_17_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_17_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_17_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_17_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_17_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_gradient_17_gradient_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_reduction_gradient_18_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_18_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_18_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_18_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_1_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_1_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_1_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_1_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_1_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_gradient_1_gradient_vt_select_15_b : STD_LOGIC_VECTOR (14 downto 0);
    signal i_reduction_gradient_2_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_2_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_2_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_2_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_2_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_gradient_2_gradient_vt_select_17_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_reduction_gradient_3_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_3_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_3_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_3_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_3_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_gradient_3_gradient_vt_select_16_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_reduction_gradient_4_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_4_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_4_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_4_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_4_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_gradient_4_gradient_vt_select_15_b : STD_LOGIC_VECTOR (14 downto 0);
    signal i_reduction_gradient_5_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_5_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_5_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_5_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_5_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_gradient_5_gradient_vt_select_17_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_reduction_gradient_6_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_6_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_6_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_6_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_6_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_gradient_6_gradient_vt_select_16_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_reduction_gradient_7_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_7_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_7_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_7_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_7_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_gradient_7_gradient_vt_select_15_b : STD_LOGIC_VECTOR (14 downto 0);
    signal i_reduction_gradient_8_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_8_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_8_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_8_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_8_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_gradient_8_gradient_vt_select_17_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_reduction_gradient_9_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_9_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_9_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_9_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_gradient_9_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_gradient_9_gradient_vt_select_16_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_shr17_114_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr17_114_gradient_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shr17_1_1_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr17_1_1_gradient_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shr17_1_2_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr17_1_2_gradient_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shr17_1_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr17_1_gradient_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shr17_2_1_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr17_2_1_gradient_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shr19_116_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr19_116_gradient_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_shr19_1_1_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr19_1_1_gradient_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_shr19_1_2_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr19_1_2_gradient_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_shr19_1_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr19_1_gradient_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_shr19_2_1_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr19_2_1_gradient_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_shr27_123_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr27_123_gradient_vt_select_9_b : STD_LOGIC_VECTOR (9 downto 0);
    signal i_shr27_1_1_gradient_vt_select_9_b : STD_LOGIC_VECTOR (9 downto 0);
    signal i_shr27_1_2_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr27_1_2_gradient_vt_select_9_b : STD_LOGIC_VECTOR (9 downto 0);
    signal i_shr27_1_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr27_1_gradient_vt_select_9_b : STD_LOGIC_VECTOR (9 downto 0);
    signal i_shr27_2_1_gradient_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr27_2_1_gradient_vt_select_9_b : STD_LOGIC_VECTOR (9 downto 0);
    signal i_unnamed_gradient101_vt_const_3_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_gradient101_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient101_vt_select_11_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient104_vt_const_31_q : STD_LOGIC_VECTOR (8 downto 0);
    signal i_unnamed_gradient104_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient104_vt_select_22_b : STD_LOGIC_VECTOR (22 downto 0);
    signal i_unnamed_gradient106_vt_const_6_q : STD_LOGIC_VECTOR (6 downto 0);
    signal i_unnamed_gradient106_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient106_vt_select_14_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient107_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient107_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_unnamed_gradient109_vt_const_2_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_unnamed_gradient109_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient109_vt_select_10_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient110_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient110_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_unnamed_gradient112_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient112_vt_select_11_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient116_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient116_vt_select_24_b : STD_LOGIC_VECTOR (24 downto 0);
    signal i_unnamed_gradient118_vt_const_31_q : STD_LOGIC_VECTOR (22 downto 0);
    signal i_unnamed_gradient118_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient118_vt_select_8_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient119_vt_const_31_q : STD_LOGIC_VECTOR (1 downto 0);
    signal i_unnamed_gradient119_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient119_vt_select_29_b : STD_LOGIC_VECTOR (29 downto 0);
    signal i_unnamed_gradient121_vt_const_31_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_unnamed_gradient121_vt_const_5_q : STD_LOGIC_VECTOR (5 downto 0);
    signal i_unnamed_gradient121_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient121_vt_select_13_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient122_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient122_vt_select_22_b : STD_LOGIC_VECTOR (22 downto 0);
    signal i_unnamed_gradient124_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient124_vt_select_14_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient125_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient125_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_unnamed_gradient127_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient127_vt_select_10_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient128_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient128_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_unnamed_gradient130_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient130_vt_select_11_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient137_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient137_vt_select_24_b : STD_LOGIC_VECTOR (24 downto 0);
    signal i_unnamed_gradient139_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient139_vt_select_8_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient140_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient140_vt_select_29_b : STD_LOGIC_VECTOR (29 downto 0);
    signal i_unnamed_gradient142_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient142_vt_select_13_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient143_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient143_vt_select_22_b : STD_LOGIC_VECTOR (22 downto 0);
    signal i_unnamed_gradient145_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient145_vt_select_14_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient146_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient146_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_unnamed_gradient148_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient148_vt_select_10_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient149_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient149_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_unnamed_gradient151_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient151_vt_select_11_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient153_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient153_vt_select_24_b : STD_LOGIC_VECTOR (24 downto 0);
    signal i_unnamed_gradient155_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient155_vt_select_8_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient156_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient156_vt_select_29_b : STD_LOGIC_VECTOR (29 downto 0);
    signal i_unnamed_gradient158_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient158_vt_select_13_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient159_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient159_vt_select_22_b : STD_LOGIC_VECTOR (22 downto 0);
    signal i_unnamed_gradient161_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient161_vt_select_14_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient163_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient163_vt_select_24_b : STD_LOGIC_VECTOR (24 downto 0);
    signal i_unnamed_gradient165_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient165_vt_select_8_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient166_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient166_vt_select_29_b : STD_LOGIC_VECTOR (29 downto 0);
    signal i_unnamed_gradient168_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient168_vt_select_13_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient170_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient170_vt_select_31_b : STD_LOGIC_VECTOR (29 downto 0);
    signal i_unnamed_gradient172_vt_const_7_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient172_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient172_vt_select_31_b : STD_LOGIC_VECTOR (23 downto 0);
    signal i_unnamed_gradient174_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient174_vt_select_31_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_unnamed_gradient79_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient79_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_unnamed_gradient81_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient81_vt_select_10_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient82_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient82_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_unnamed_gradient84_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient84_vt_select_11_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient85_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient85_vt_select_22_b : STD_LOGIC_VECTOR (22 downto 0);
    signal i_unnamed_gradient87_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient87_vt_select_14_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient90_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient90_vt_select_24_b : STD_LOGIC_VECTOR (24 downto 0);
    signal i_unnamed_gradient92_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient92_vt_select_8_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient93_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient93_vt_select_29_b : STD_LOGIC_VECTOR (29 downto 0);
    signal i_unnamed_gradient95_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient95_vt_select_13_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient96_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient96_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_unnamed_gradient98_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient98_vt_select_10_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient99_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient99_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal rightShiftStage0Idx1Rng16_uid753_i_shr17_114_gradient_gradient88_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid755_i_shr17_114_gradient_gradient88_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid757_i_shr17_114_gradient_gradient88_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid757_i_shr17_114_gradient_gradient88_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng16_uid762_i_shr17_1_1_gradient_gradient102_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid764_i_shr17_1_1_gradient_gradient102_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid766_i_shr17_1_1_gradient_gradient102_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid766_i_shr17_1_1_gradient_gradient102_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng16_uid771_i_shr17_1_2_gradient_gradient136_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid773_i_shr17_1_2_gradient_gradient136_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid775_i_shr17_1_2_gradient_gradient136_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid775_i_shr17_1_2_gradient_gradient136_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng16_uid780_i_shr17_1_gradient_gradient78_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid782_i_shr17_1_gradient_gradient78_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid784_i_shr17_1_gradient_gradient78_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid784_i_shr17_1_gradient_gradient78_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng16_uid789_i_shr17_2_1_gradient_gradient113_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid791_i_shr17_2_1_gradient_gradient113_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid793_i_shr17_2_1_gradient_gradient113_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid793_i_shr17_2_1_gradient_gradient113_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng8_uid803_i_shr19_116_gradient_gradient89_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid805_i_shr19_116_gradient_gradient89_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid807_i_shr19_116_gradient_gradient89_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid807_i_shr19_116_gradient_gradient89_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng8_uid817_i_shr19_1_1_gradient_gradient103_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid819_i_shr19_1_1_gradient_gradient103_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid821_i_shr19_1_1_gradient_gradient103_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid821_i_shr19_1_1_gradient_gradient103_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng8_uid831_i_shr19_1_2_gradient_gradient135_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid833_i_shr19_1_2_gradient_gradient135_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid835_i_shr19_1_2_gradient_gradient135_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid835_i_shr19_1_2_gradient_gradient135_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng8_uid845_i_shr19_1_gradient_gradient77_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid847_i_shr19_1_gradient_gradient77_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid849_i_shr19_1_gradient_gradient77_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid849_i_shr19_1_gradient_gradient77_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng8_uid859_i_shr19_2_1_gradient_gradient114_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid861_i_shr19_2_1_gradient_gradient114_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid863_i_shr19_2_1_gradient_gradient114_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid863_i_shr19_2_1_gradient_gradient114_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng8_uid868_i_shr27_123_gradient_gradient152_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx1_uid870_i_shr27_123_gradient_gradient152_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid872_i_shr27_123_gradient_gradient152_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid872_i_shr27_123_gradient_gradient152_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng8_uid877_i_shr27_1_1_gradient_gradient162_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx1_uid879_i_shr27_1_1_gradient_gradient162_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid881_i_shr27_1_1_gradient_gradient162_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid881_i_shr27_1_1_gradient_gradient162_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng8_uid886_i_shr27_1_2_gradient_gradient171_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx1_uid888_i_shr27_1_2_gradient_gradient171_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid890_i_shr27_1_2_gradient_gradient171_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid890_i_shr27_1_2_gradient_gradient171_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng8_uid895_i_shr27_1_gradient_gradient115_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx1_uid897_i_shr27_1_gradient_gradient115_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid899_i_shr27_1_gradient_gradient115_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid899_i_shr27_1_gradient_gradient115_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng8_uid904_i_shr27_2_1_gradient_gradient169_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx1_uid906_i_shr27_2_1_gradient_gradient169_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid908_i_shr27_2_1_gradient_gradient169_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid908_i_shr27_2_1_gradient_gradient169_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng4_uid918_i_unnamed_gradient100_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage1Idx1_uid920_i_unnamed_gradient100_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid922_i_unnamed_gradient100_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid922_i_unnamed_gradient100_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng8_uid927_i_unnamed_gradient105_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx1_uid929_i_unnamed_gradient105_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid931_i_unnamed_gradient105_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid931_i_unnamed_gradient105_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng1_uid932_i_unnamed_gradient105_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage1Idx1_uid934_i_unnamed_gradient105_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid936_i_unnamed_gradient105_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid936_i_unnamed_gradient105_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng4_uid946_i_unnamed_gradient108_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage1Idx1_uid948_i_unnamed_gradient108_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid950_i_unnamed_gradient108_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid950_i_unnamed_gradient108_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2Idx1Rng1_uid951_i_unnamed_gradient108_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage2Idx1_uid953_i_unnamed_gradient108_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid955_i_unnamed_gradient108_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid955_i_unnamed_gradient108_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng4_uid974_i_unnamed_gradient117_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage0Idx1_uid976_i_unnamed_gradient117_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid978_i_unnamed_gradient117_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid978_i_unnamed_gradient117_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng2_uid979_i_unnamed_gradient117_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage1Idx1_uid981_i_unnamed_gradient117_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid983_i_unnamed_gradient117_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid983_i_unnamed_gradient117_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2Idx1Rng1_uid984_i_unnamed_gradient117_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage2Idx1_uid986_i_unnamed_gradient117_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid988_i_unnamed_gradient117_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid988_i_unnamed_gradient117_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng2_uid993_i_unnamed_gradient120_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage0Idx1_uid995_i_unnamed_gradient120_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid997_i_unnamed_gradient120_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid997_i_unnamed_gradient120_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng8_uid1002_i_unnamed_gradient123_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx1_uid1004_i_unnamed_gradient123_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1006_i_unnamed_gradient123_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1006_i_unnamed_gradient123_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng1_uid1007_i_unnamed_gradient123_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage1Idx1_uid1009_i_unnamed_gradient123_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1011_i_unnamed_gradient123_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1011_i_unnamed_gradient123_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng4_uid1021_i_unnamed_gradient126_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage1Idx1_uid1023_i_unnamed_gradient126_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1025_i_unnamed_gradient126_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1025_i_unnamed_gradient126_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2Idx1Rng1_uid1026_i_unnamed_gradient126_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage2Idx1_uid1028_i_unnamed_gradient126_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1030_i_unnamed_gradient126_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1030_i_unnamed_gradient126_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng4_uid1049_i_unnamed_gradient138_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage0Idx1_uid1051_i_unnamed_gradient138_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1053_i_unnamed_gradient138_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1053_i_unnamed_gradient138_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng2_uid1054_i_unnamed_gradient138_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage1Idx1_uid1056_i_unnamed_gradient138_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1058_i_unnamed_gradient138_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1058_i_unnamed_gradient138_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2Idx1Rng1_uid1059_i_unnamed_gradient138_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage2Idx1_uid1061_i_unnamed_gradient138_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1063_i_unnamed_gradient138_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1063_i_unnamed_gradient138_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng2_uid1068_i_unnamed_gradient141_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage0Idx1_uid1070_i_unnamed_gradient141_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1072_i_unnamed_gradient141_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1072_i_unnamed_gradient141_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng8_uid1077_i_unnamed_gradient144_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx1_uid1079_i_unnamed_gradient144_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1081_i_unnamed_gradient144_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1081_i_unnamed_gradient144_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng1_uid1082_i_unnamed_gradient144_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage1Idx1_uid1084_i_unnamed_gradient144_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1086_i_unnamed_gradient144_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1086_i_unnamed_gradient144_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng4_uid1096_i_unnamed_gradient147_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage1Idx1_uid1098_i_unnamed_gradient147_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1100_i_unnamed_gradient147_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1100_i_unnamed_gradient147_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2Idx1Rng1_uid1101_i_unnamed_gradient147_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage2Idx1_uid1103_i_unnamed_gradient147_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1105_i_unnamed_gradient147_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1105_i_unnamed_gradient147_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng4_uid1124_i_unnamed_gradient154_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage0Idx1_uid1126_i_unnamed_gradient154_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1128_i_unnamed_gradient154_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1128_i_unnamed_gradient154_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng2_uid1129_i_unnamed_gradient154_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage1Idx1_uid1131_i_unnamed_gradient154_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1133_i_unnamed_gradient154_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1133_i_unnamed_gradient154_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2Idx1Rng1_uid1134_i_unnamed_gradient154_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage2Idx1_uid1136_i_unnamed_gradient154_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1138_i_unnamed_gradient154_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1138_i_unnamed_gradient154_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng2_uid1143_i_unnamed_gradient157_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage0Idx1_uid1145_i_unnamed_gradient157_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1147_i_unnamed_gradient157_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1147_i_unnamed_gradient157_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng8_uid1152_i_unnamed_gradient160_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx1_uid1154_i_unnamed_gradient160_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1156_i_unnamed_gradient160_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1156_i_unnamed_gradient160_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng1_uid1157_i_unnamed_gradient160_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage1Idx1_uid1159_i_unnamed_gradient160_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1161_i_unnamed_gradient160_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1161_i_unnamed_gradient160_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng4_uid1166_i_unnamed_gradient164_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage0Idx1_uid1168_i_unnamed_gradient164_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1170_i_unnamed_gradient164_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1170_i_unnamed_gradient164_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng2_uid1171_i_unnamed_gradient164_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage1Idx1_uid1173_i_unnamed_gradient164_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1175_i_unnamed_gradient164_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1175_i_unnamed_gradient164_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2Idx1Rng1_uid1176_i_unnamed_gradient164_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage2Idx1_uid1178_i_unnamed_gradient164_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1180_i_unnamed_gradient164_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1180_i_unnamed_gradient164_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng2_uid1185_i_unnamed_gradient167_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage0Idx1_uid1187_i_unnamed_gradient167_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1189_i_unnamed_gradient167_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1189_i_unnamed_gradient167_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1195_i_unnamed_gradient173_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1195_i_unnamed_gradient173_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid1196_i_unnamed_gradient173_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1198_i_unnamed_gradient173_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1198_i_unnamed_gradient173_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1204_i_unnamed_gradient175_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1204_i_unnamed_gradient175_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1205_i_unnamed_gradient175_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1207_i_unnamed_gradient175_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1207_i_unnamed_gradient175_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng4_uid1217_i_unnamed_gradient80_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage1Idx1_uid1219_i_unnamed_gradient80_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1221_i_unnamed_gradient80_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1221_i_unnamed_gradient80_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2Idx1Rng1_uid1222_i_unnamed_gradient80_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage2Idx1_uid1224_i_unnamed_gradient80_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1226_i_unnamed_gradient80_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1226_i_unnamed_gradient80_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng8_uid1245_i_unnamed_gradient86_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx1_uid1247_i_unnamed_gradient86_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1249_i_unnamed_gradient86_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1249_i_unnamed_gradient86_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng1_uid1250_i_unnamed_gradient86_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage1Idx1_uid1252_i_unnamed_gradient86_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1254_i_unnamed_gradient86_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1254_i_unnamed_gradient86_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng4_uid1259_i_unnamed_gradient91_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage0Idx1_uid1261_i_unnamed_gradient91_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1263_i_unnamed_gradient91_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1263_i_unnamed_gradient91_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng2_uid1264_i_unnamed_gradient91_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage1Idx1_uid1266_i_unnamed_gradient91_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1268_i_unnamed_gradient91_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1268_i_unnamed_gradient91_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2Idx1Rng1_uid1269_i_unnamed_gradient91_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage2Idx1_uid1271_i_unnamed_gradient91_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1273_i_unnamed_gradient91_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1273_i_unnamed_gradient91_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng2_uid1278_i_unnamed_gradient94_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage0Idx1_uid1280_i_unnamed_gradient94_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1282_i_unnamed_gradient94_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1282_i_unnamed_gradient94_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2Idx1Rng1_uid1297_i_unnamed_gradient97_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage2Idx1_uid1299_i_unnamed_gradient97_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1301_i_unnamed_gradient97_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1301_i_unnamed_gradient97_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul22_118_masked_gradient_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul22_118_masked_gradient_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul22_1_1_masked_gradient_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul22_1_1_masked_gradient_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul22_1_2_masked_gradient_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul22_1_2_masked_gradient_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul22_1_masked_gradient_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul22_1_masked_gradient_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul22_2_1_masked_gradient_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul22_2_1_masked_gradient_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient101_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient101_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient106_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient106_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient109_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient109_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient112_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient112_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient118_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient118_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient121_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient121_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient124_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient124_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient127_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient127_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient130_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient130_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient139_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient139_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient142_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient142_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient145_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient145_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient148_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient148_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient151_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient151_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient155_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient155_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient158_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient158_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient161_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient161_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient165_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient165_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient168_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient168_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient170_align_7_q : STD_LOGIC_VECTOR (41 downto 0);
    signal i_unnamed_gradient170_align_7_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal i_unnamed_gradient170_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal i_unnamed_gradient170_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal i_unnamed_gradient170_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal i_unnamed_gradient170_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal i_unnamed_gradient81_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient81_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient84_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient84_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient87_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient87_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient92_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient92_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient95_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient95_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient98_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_gradient98_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient170_im0_shift0_q : STD_LOGIC_VECTOR (25 downto 0);
    signal i_unnamed_gradient170_im0_shift0_qint : STD_LOGIC_VECTOR (25 downto 0);
    signal i_unnamed_gradient170_im0_sub_1_a : STD_LOGIC_VECTOR (26 downto 0);
    signal i_unnamed_gradient170_im0_sub_1_b : STD_LOGIC_VECTOR (26 downto 0);
    signal i_unnamed_gradient170_im0_sub_1_o : STD_LOGIC_VECTOR (26 downto 0);
    signal i_unnamed_gradient170_im0_sub_1_q : STD_LOGIC_VECTOR (26 downto 0);
    signal i_unnamed_gradient170_im0_shift2_q : STD_LOGIC_VECTOR (28 downto 0);
    signal i_unnamed_gradient170_im0_shift2_qint : STD_LOGIC_VECTOR (28 downto 0);
    signal i_unnamed_gradient170_im3_shift0_q : STD_LOGIC_VECTOR (23 downto 0);
    signal i_unnamed_gradient170_im3_shift0_qint : STD_LOGIC_VECTOR (23 downto 0);
    signal i_unnamed_gradient170_im3_sub_1_a : STD_LOGIC_VECTOR (24 downto 0);
    signal i_unnamed_gradient170_im3_sub_1_b : STD_LOGIC_VECTOR (24 downto 0);
    signal i_unnamed_gradient170_im3_sub_1_o : STD_LOGIC_VECTOR (24 downto 0);
    signal i_unnamed_gradient170_im3_sub_1_q : STD_LOGIC_VECTOR (24 downto 0);
    signal redist0_i_unnamed_gradient87_BitSelect_for_a_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist1_i_unnamed_gradient84_BitSelect_for_a_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist2_i_unnamed_gradient161_BitSelect_for_a_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist3_i_unnamed_gradient151_BitSelect_for_a_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist4_i_unnamed_gradient145_BitSelect_for_a_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist5_i_unnamed_gradient130_BitSelect_for_a_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist6_i_unnamed_gradient124_BitSelect_for_a_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist7_i_unnamed_gradient112_BitSelect_for_a_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist8_i_unnamed_gradient101_BitSelect_for_a_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist9_i_mul22_2_1_masked_gradient_BitSelect_for_a_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist10_i_mul22_1_masked_gradient_BitSelect_for_a_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist11_i_mul22_1_2_masked_gradient_BitSelect_for_a_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist12_i_mul22_1_1_masked_gradient_BitSelect_for_a_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist13_i_mul22_118_masked_gradient_BitSelect_for_a_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist14_i_unnamed_gradient174_vt_select_31_b_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist15_i_unnamed_gradient170_vt_select_31_b_1_q : STD_LOGIC_VECTOR (29 downto 0);
    signal redist16_i_unnamed_gradient106_vt_select_14_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist17_i_shr27_2_1_gradient_vt_select_9_b_1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist18_i_shr27_1_gradient_vt_select_9_b_1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist19_i_shr27_1_2_gradient_vt_select_9_b_1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist20_i_shr27_1_1_gradient_vt_select_9_b_1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist21_i_shr27_123_gradient_vt_select_9_b_1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist22_i_reduction_gradient_9_gradient_vt_select_16_b_1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal redist23_i_reduction_gradient_7_gradient_vt_select_15_b_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist24_i_reduction_gradient_6_gradient_vt_select_16_b_1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal redist25_i_reduction_gradient_4_gradient_vt_select_15_b_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist26_i_reduction_gradient_3_gradient_vt_select_16_b_1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal redist27_i_reduction_gradient_1_gradient_vt_select_15_b_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist28_i_reduction_gradient_17_gradient_vt_select_11_b_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal redist29_i_reduction_gradient_16_gradient_vt_select_10_b_1_q : STD_LOGIC_VECTOR (10 downto 0);
    signal redist30_i_reduction_gradient_15_gradient_vt_select_10_b_1_q : STD_LOGIC_VECTOR (10 downto 0);
    signal redist31_i_reduction_gradient_13_gradient_vt_select_15_b_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist32_i_reduction_gradient_12_gradient_vt_select_16_b_1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal redist33_i_reduction_gradient_10_gradient_vt_select_15_b_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist34_i_reduction_gradient_0_gradient_vt_select_16_b_1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal redist35_i_mul24_2_1_add868_gradient_vt_select_12_b_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal redist36_i_mul24_2_1_add812_gradient_vt_select_11_b_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal redist37_i_mul24_1_add682_gradient_vt_select_12_b_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal redist38_i_mul24_1_add626_gradient_vt_select_11_b_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal redist39_i_mul24_1_2_add930_gradient_vt_select_12_b_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal redist40_i_mul24_1_2_add874_gradient_vt_select_11_b_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal redist41_i_mul24_1_1_add806_gradient_vt_select_12_b_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal redist42_i_mul24_1_1_add750_gradient_vt_select_11_b_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal redist43_i_mul24_119_add744_gradient_vt_select_12_b_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal redist44_i_mul24_119_add688_gradient_vt_select_11_b_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal redist45_i_mul22_2_1_add434_gradient_vt_select_15_b_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist46_i_mul22_1_add62_gradient_vt_select_15_b_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist47_i_mul22_1_2_add558_gradient_vt_select_15_b_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist48_i_mul22_1_1_add310_gradient_vt_select_15_b_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist49_i_mul22_118_add186_gradient_vt_select_15_b_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist50_i_mul21_2_1_add496_gradient_vt_select_14_b_2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal redist51_i_mul21_1_add124_gradient_vt_select_14_b_2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal redist52_i_mul21_1_2_add620_gradient_vt_select_14_b_2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal redist53_i_mul21_1_1_add372_gradient_vt_select_14_b_2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal redist54_i_mul21_117_add248_gradient_vt_select_14_b_2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal redist55_i_acl_pop_i32_rows_299_0_pop5_gradient_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist56_i_acl_pop_i32_rows_298_0_pop6_gradient_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist57_i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist58_i_acl_pop_i32_rows_1_0_pop7_gradient_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist59_i_acl_pop_i32_rows_0_0_pop8_gradient_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist60_i_acl_pop_i32_pop9_gradient_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist61_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist62_sync_in_aunroll_x_in_i_valid_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist63_bgTrunc_i_reduction_gradient_18_gradient_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist64_bgTrunc_i_add43_add960_gradient_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist61_sync_in_aunroll_x_in_i_valid_1(DELAY,1480)
    redist61_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist61_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist62_sync_in_aunroll_x_in_i_valid_9(DELAY,1481)
    redist62_sync_in_aunroll_x_in_i_valid_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist61_sync_in_aunroll_x_in_i_valid_1_q, xout => redist62_sync_in_aunroll_x_in_i_valid_9_q, clk => clock, aclr => resetn );

    -- leftShiftStage0Idx1Rng16_uid1204_i_unnamed_gradient175_shift_x(BITSELECT,1203)@17
    leftShiftStage0Idx1Rng16_uid1204_i_unnamed_gradient175_shift_x_in <= redist63_bgTrunc_i_reduction_gradient_18_gradient_sel_x_b_1_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1204_i_unnamed_gradient175_shift_x_b <= leftShiftStage0Idx1Rng16_uid1204_i_unnamed_gradient175_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1205_i_unnamed_gradient175_shift_x(BITJOIN,1204)@17
    leftShiftStage0Idx1_uid1205_i_unnamed_gradient175_shift_x_q <= leftShiftStage0Idx1Rng16_uid1204_i_unnamed_gradient175_shift_x_b & i_mul22_118_add186_gradient_vt_const_31_q;

    -- i_mul24_119_add688_gradient_vt_const_31(CONSTANT,374)
    i_mul24_119_add688_gradient_vt_const_31_q <= "00000000000000000000";

    -- i_reduction_gradient_15_gradient_vt_const_31(CONSTANT,441)
    i_reduction_gradient_15_gradient_vt_const_31_q <= "000000000000000000000";

    -- i_unnamed_gradient170_multconst_x(CONSTANT,194)
    i_unnamed_gradient170_multconst_x_q <= "0000000000000000000000";

    -- i_unnamed_gradient172_vt_const_7(CONSTANT,690)
    i_unnamed_gradient172_vt_const_7_q <= "00000000";

    -- rightShiftStage0Idx1Rng8_uid895_i_shr27_1_gradient_gradient115_shift_x(BITSELECT,894)@13
    rightShiftStage0Idx1Rng8_uid895_i_shr27_1_gradient_gradient115_shift_x_b <= i_reduction_gradient_2_gradient_vt_join_q(31 downto 8);

    -- rightShiftStage0Idx1_uid897_i_shr27_1_gradient_gradient115_shift_x(BITJOIN,896)@13
    rightShiftStage0Idx1_uid897_i_shr27_1_gradient_gradient115_shift_x_q <= i_unnamed_gradient172_vt_const_7_q & rightShiftStage0Idx1Rng8_uid895_i_shr27_1_gradient_gradient115_shift_x_b;

    -- i_reduction_gradient_11_gradient_vt_const_31(CONSTANT,424)
    i_reduction_gradient_11_gradient_vt_const_31_q <= "00000000000000";

    -- c_i32_128(CONSTANT,274)
    c_i32_128_q <= "00000000000000000000000010000000";

    -- i_mul21_117_add248_gradient_vt_const_31(CONSTANT,310)
    i_mul21_117_add248_gradient_vt_const_31_q <= "00000000000000000";

    -- i_unnamed_gradient121_vt_const_31(CONSTANT,578)
    i_unnamed_gradient121_vt_const_31_q <= "000000000000000000";

    -- i_unnamed_gradient119_vt_const_31(CONSTANT,574)
    i_unnamed_gradient119_vt_const_31_q <= "00";

    -- rightShiftStage0Idx1Rng2_uid1278_i_unnamed_gradient94_shift_x(BITSELECT,1277)@10
    rightShiftStage0Idx1Rng2_uid1278_i_unnamed_gradient94_shift_x_b <= redist59_i_acl_pop_i32_rows_0_0_pop8_gradient_out_data_out_1_q(31 downto 2);

    -- rightShiftStage0Idx1_uid1280_i_unnamed_gradient94_shift_x(BITJOIN,1279)@10
    rightShiftStage0Idx1_uid1280_i_unnamed_gradient94_shift_x_q <= i_unnamed_gradient119_vt_const_31_q & rightShiftStage0Idx1Rng2_uid1278_i_unnamed_gradient94_shift_x_b;

    -- i_acl_gradient(MUX,291)@9
    i_acl_gradient_s <= in_c1_eni5_4;
    i_acl_gradient_combproc: PROCESS (i_acl_gradient_s, c_i32_0gr_q, in_c1_eni5_5)
    BEGIN
        CASE (i_acl_gradient_s) IS
            WHEN "0" => i_acl_gradient_q <= c_i32_0gr_q;
            WHEN "1" => i_acl_gradient_q <= in_c1_eni5_5;
            WHEN OTHERS => i_acl_gradient_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_push_i32_rows_0_0_push8_gradient(BLACKBOX,301)@9
    -- out out_feedback_out_8@20000000
    -- out out_feedback_valid_out_8@20000000
    thei_acl_push_i32_rows_0_0_push8_gradient : i_acl_push_i32_rows_0_0_push8_gradient75
    PORT MAP (
        in_c1_ene3 => in_c1_eni5_3,
        in_data_in => i_acl_gradient_q,
        in_feedback_stall_in_8 => i_acl_pop_i32_rows_0_0_pop8_gradient_out_feedback_stall_out_8,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_8 => i_acl_push_i32_rows_0_0_push8_gradient_out_feedback_out_8,
        out_feedback_valid_out_8 => i_acl_push_i32_rows_0_0_push8_gradient_out_feedback_valid_out_8,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_0gr(CONSTANT,273)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_acl_pop_i32_rows_0_0_pop8_gradient(BLACKBOX,294)@9
    -- out out_feedback_stall_out_8@20000000
    thei_acl_pop_i32_rows_0_0_pop8_gradient : i_acl_pop_i32_rows_0_0_pop8_gradient65
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => in_c1_eni5_2,
        in_feedback_in_8 => i_acl_push_i32_rows_0_0_push8_gradient_out_feedback_out_8,
        in_feedback_valid_in_8 => i_acl_push_i32_rows_0_0_push8_gradient_out_feedback_valid_out_8,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_rows_0_0_pop8_gradient_out_data_out,
        out_feedback_stall_out_8 => i_acl_pop_i32_rows_0_0_pop8_gradient_out_feedback_stall_out_8,
        clock => clock,
        resetn => resetn
    );

    -- redist59_i_acl_pop_i32_rows_0_0_pop8_gradient_out_data_out_1(DELAY,1478)
    redist59_i_acl_pop_i32_rows_0_0_pop8_gradient_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_rows_0_0_pop8_gradient_out_data_out, xout => redist59_i_acl_pop_i32_rows_0_0_pop8_gradient_out_data_out_1_q, clk => clock, aclr => resetn );

    -- rightShiftStage0_uid1282_i_unnamed_gradient94_shift_x(MUX,1281)@10
    rightShiftStage0_uid1282_i_unnamed_gradient94_shift_x_s <= VCC_q;
    rightShiftStage0_uid1282_i_unnamed_gradient94_shift_x_combproc: PROCESS (rightShiftStage0_uid1282_i_unnamed_gradient94_shift_x_s, redist59_i_acl_pop_i32_rows_0_0_pop8_gradient_out_data_out_1_q, rightShiftStage0Idx1_uid1280_i_unnamed_gradient94_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1282_i_unnamed_gradient94_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1282_i_unnamed_gradient94_shift_x_q <= redist59_i_acl_pop_i32_rows_0_0_pop8_gradient_out_data_out_1_q;
            WHEN "1" => rightShiftStage0_uid1282_i_unnamed_gradient94_shift_x_q <= rightShiftStage0Idx1_uid1280_i_unnamed_gradient94_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1282_i_unnamed_gradient94_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient93_vt_select_29(BITSELECT,730)@10
    i_unnamed_gradient93_vt_select_29_b <= rightShiftStage0_uid1282_i_unnamed_gradient94_shift_x_q(29 downto 0);

    -- i_unnamed_gradient93_vt_join(BITJOIN,729)@10
    i_unnamed_gradient93_vt_join_q <= i_unnamed_gradient119_vt_const_31_q & i_unnamed_gradient93_vt_select_29_b;

    -- i_unnamed_gradient95_BitSelect_for_a(BITSELECT,1410)@10
    i_unnamed_gradient95_BitSelect_for_a_b <= i_unnamed_gradient93_vt_join_q(13 downto 6);

    -- i_unnamed_gradient95_join(BITJOIN,1411)@10
    i_unnamed_gradient95_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_unnamed_gradient95_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_unnamed_gradient95_vt_select_13(BITSELECT,735)@10
    i_unnamed_gradient95_vt_select_13_b <= i_unnamed_gradient95_join_q(13 downto 6);

    -- i_unnamed_gradient121_vt_const_5(CONSTANT,579)
    i_unnamed_gradient121_vt_const_5_q <= "000000";

    -- i_unnamed_gradient95_vt_join(BITJOIN,734)@10
    i_unnamed_gradient95_vt_join_q <= i_unnamed_gradient121_vt_const_31_q & i_unnamed_gradient95_vt_select_13_b & i_unnamed_gradient121_vt_const_5_q;

    -- i_unnamed_gradient118_vt_const_31(CONSTANT,571)
    i_unnamed_gradient118_vt_const_31_q <= "00000000000000000000000";

    -- i_unnamed_gradient106_vt_const_6(CONSTANT,547)
    i_unnamed_gradient106_vt_const_6_q <= "0000000";

    -- rightShiftStage2Idx1Rng1_uid1269_i_unnamed_gradient91_shift_x(BITSELECT,1268)@10
    rightShiftStage2Idx1Rng1_uid1269_i_unnamed_gradient91_shift_x_b <= rightShiftStage1_uid1268_i_unnamed_gradient91_shift_x_q(31 downto 1);

    -- rightShiftStage2Idx1_uid1271_i_unnamed_gradient91_shift_x(BITJOIN,1270)@10
    rightShiftStage2Idx1_uid1271_i_unnamed_gradient91_shift_x_q <= GND_q & rightShiftStage2Idx1Rng1_uid1269_i_unnamed_gradient91_shift_x_b;

    -- rightShiftStage1Idx1Rng2_uid1264_i_unnamed_gradient91_shift_x(BITSELECT,1263)@10
    rightShiftStage1Idx1Rng2_uid1264_i_unnamed_gradient91_shift_x_b <= rightShiftStage0_uid1263_i_unnamed_gradient91_shift_x_q(31 downto 2);

    -- rightShiftStage1Idx1_uid1266_i_unnamed_gradient91_shift_x(BITJOIN,1265)@10
    rightShiftStage1Idx1_uid1266_i_unnamed_gradient91_shift_x_q <= i_unnamed_gradient119_vt_const_31_q & rightShiftStage1Idx1Rng2_uid1264_i_unnamed_gradient91_shift_x_b;

    -- i_unnamed_gradient101_vt_const_3(CONSTANT,538)
    i_unnamed_gradient101_vt_const_3_q <= "0000";

    -- rightShiftStage0Idx1Rng4_uid1259_i_unnamed_gradient91_shift_x(BITSELECT,1258)@10
    rightShiftStage0Idx1Rng4_uid1259_i_unnamed_gradient91_shift_x_b <= redist59_i_acl_pop_i32_rows_0_0_pop8_gradient_out_data_out_1_q(31 downto 4);

    -- rightShiftStage0Idx1_uid1261_i_unnamed_gradient91_shift_x(BITJOIN,1260)@10
    rightShiftStage0Idx1_uid1261_i_unnamed_gradient91_shift_x_q <= i_unnamed_gradient101_vt_const_3_q & rightShiftStage0Idx1Rng4_uid1259_i_unnamed_gradient91_shift_x_b;

    -- rightShiftStage0_uid1263_i_unnamed_gradient91_shift_x(MUX,1262)@10
    rightShiftStage0_uid1263_i_unnamed_gradient91_shift_x_s <= VCC_q;
    rightShiftStage0_uid1263_i_unnamed_gradient91_shift_x_combproc: PROCESS (rightShiftStage0_uid1263_i_unnamed_gradient91_shift_x_s, redist59_i_acl_pop_i32_rows_0_0_pop8_gradient_out_data_out_1_q, rightShiftStage0Idx1_uid1261_i_unnamed_gradient91_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1263_i_unnamed_gradient91_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1263_i_unnamed_gradient91_shift_x_q <= redist59_i_acl_pop_i32_rows_0_0_pop8_gradient_out_data_out_1_q;
            WHEN "1" => rightShiftStage0_uid1263_i_unnamed_gradient91_shift_x_q <= rightShiftStage0Idx1_uid1261_i_unnamed_gradient91_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1263_i_unnamed_gradient91_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1268_i_unnamed_gradient91_shift_x(MUX,1267)@10
    rightShiftStage1_uid1268_i_unnamed_gradient91_shift_x_s <= VCC_q;
    rightShiftStage1_uid1268_i_unnamed_gradient91_shift_x_combproc: PROCESS (rightShiftStage1_uid1268_i_unnamed_gradient91_shift_x_s, rightShiftStage0_uid1263_i_unnamed_gradient91_shift_x_q, rightShiftStage1Idx1_uid1266_i_unnamed_gradient91_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1268_i_unnamed_gradient91_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1268_i_unnamed_gradient91_shift_x_q <= rightShiftStage0_uid1263_i_unnamed_gradient91_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1268_i_unnamed_gradient91_shift_x_q <= rightShiftStage1Idx1_uid1266_i_unnamed_gradient91_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1268_i_unnamed_gradient91_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1273_i_unnamed_gradient91_shift_x(MUX,1272)@10
    rightShiftStage2_uid1273_i_unnamed_gradient91_shift_x_s <= VCC_q;
    rightShiftStage2_uid1273_i_unnamed_gradient91_shift_x_combproc: PROCESS (rightShiftStage2_uid1273_i_unnamed_gradient91_shift_x_s, rightShiftStage1_uid1268_i_unnamed_gradient91_shift_x_q, rightShiftStage2Idx1_uid1271_i_unnamed_gradient91_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1273_i_unnamed_gradient91_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1273_i_unnamed_gradient91_shift_x_q <= rightShiftStage1_uid1268_i_unnamed_gradient91_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1273_i_unnamed_gradient91_shift_x_q <= rightShiftStage2Idx1_uid1271_i_unnamed_gradient91_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1273_i_unnamed_gradient91_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient90_vt_select_24(BITSELECT,722)@10
    i_unnamed_gradient90_vt_select_24_b <= rightShiftStage2_uid1273_i_unnamed_gradient91_shift_x_q(24 downto 0);

    -- i_unnamed_gradient90_vt_join(BITJOIN,721)@10
    i_unnamed_gradient90_vt_join_q <= i_unnamed_gradient106_vt_const_6_q & i_unnamed_gradient90_vt_select_24_b;

    -- i_unnamed_gradient92_BitSelect_for_a(BITSELECT,1408)@10
    i_unnamed_gradient92_BitSelect_for_a_b <= i_unnamed_gradient90_vt_join_q(8 downto 1);

    -- i_unnamed_gradient92_join(BITJOIN,1409)@10
    i_unnamed_gradient92_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_unnamed_gradient92_BitSelect_for_a_b & GND_q;

    -- i_unnamed_gradient92_vt_select_8(BITSELECT,727)@10
    i_unnamed_gradient92_vt_select_8_b <= i_unnamed_gradient92_join_q(8 downto 1);

    -- i_unnamed_gradient92_vt_join(BITJOIN,726)@10
    i_unnamed_gradient92_vt_join_q <= i_unnamed_gradient118_vt_const_31_q & i_unnamed_gradient92_vt_select_8_b & GND_q;

    -- i_mul21_1_add124_gradient(ADD,323)@10
    i_mul21_1_add124_gradient_a <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient92_vt_join_q);
    i_mul21_1_add124_gradient_b <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient95_vt_join_q);
    i_mul21_1_add124_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul21_1_add124_gradient_a) + UNSIGNED(i_mul21_1_add124_gradient_b));
    i_mul21_1_add124_gradient_q <= i_mul21_1_add124_gradient_o(32 downto 0);

    -- bgTrunc_i_mul21_1_add124_gradient_sel_x(BITSELECT,7)@10
    bgTrunc_i_mul21_1_add124_gradient_sel_x_b <= i_mul21_1_add124_gradient_q(31 downto 0);

    -- i_mul21_1_add124_gradient_vt_select_14(BITSELECT,327)@10
    i_mul21_1_add124_gradient_vt_select_14_b <= bgTrunc_i_mul21_1_add124_gradient_sel_x_b(14 downto 1);

    -- redist51_i_mul21_1_add124_gradient_vt_select_14_b_2(DELAY,1470)
    redist51_i_mul21_1_add124_gradient_vt_select_14_b_2 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul21_1_add124_gradient_vt_select_14_b, xout => redist51_i_mul21_1_add124_gradient_vt_select_14_b_2_q, clk => clock, aclr => resetn );

    -- i_mul21_1_add124_gradient_vt_join(BITJOIN,326)@12
    i_mul21_1_add124_gradient_vt_join_q <= i_mul21_117_add248_gradient_vt_const_31_q & redist51_i_mul21_1_add124_gradient_vt_select_14_b_2_q & GND_q;

    -- i_reduction_gradient_1_gradient(ADD,453)@12
    i_reduction_gradient_1_gradient_a <= STD_LOGIC_VECTOR("0" & i_mul21_1_add124_gradient_vt_join_q);
    i_reduction_gradient_1_gradient_b <= STD_LOGIC_VECTOR("0" & c_i32_128_q);
    i_reduction_gradient_1_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_gradient_1_gradient_a) + UNSIGNED(i_reduction_gradient_1_gradient_b));
    i_reduction_gradient_1_gradient_q <= i_reduction_gradient_1_gradient_o(32 downto 0);

    -- bgTrunc_i_reduction_gradient_1_gradient_sel_x(BITSELECT,34)@12
    bgTrunc_i_reduction_gradient_1_gradient_sel_x_b <= i_reduction_gradient_1_gradient_q(31 downto 0);

    -- i_reduction_gradient_1_gradient_vt_select_15(BITSELECT,457)@12
    i_reduction_gradient_1_gradient_vt_select_15_b <= bgTrunc_i_reduction_gradient_1_gradient_sel_x_b(15 downto 1);

    -- redist27_i_reduction_gradient_1_gradient_vt_select_15_b_1(DELAY,1446)
    redist27_i_reduction_gradient_1_gradient_vt_select_15_b_1 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_gradient_1_gradient_vt_select_15_b, xout => redist27_i_reduction_gradient_1_gradient_vt_select_15_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_gradient_1_gradient_vt_join(BITJOIN,456)@13
    i_reduction_gradient_1_gradient_vt_join_q <= i_mul22_118_add186_gradient_vt_const_31_q & redist27_i_reduction_gradient_1_gradient_vt_select_15_b_1_q & GND_q;

    -- i_reduction_gradient_0_gradient_vt_const_31(CONSTANT,415)
    i_reduction_gradient_0_gradient_vt_const_31_q <= "000000000000000";

    -- i_unnamed_gradient104_vt_const_31(CONSTANT,542)
    i_unnamed_gradient104_vt_const_31_q <= "000000000";

    -- rightShiftStage1Idx1Rng1_uid1250_i_unnamed_gradient86_shift_x(BITSELECT,1249)@10
    rightShiftStage1Idx1Rng1_uid1250_i_unnamed_gradient86_shift_x_b <= rightShiftStage0_uid1249_i_unnamed_gradient86_shift_x_q(31 downto 1);

    -- rightShiftStage1Idx1_uid1252_i_unnamed_gradient86_shift_x(BITJOIN,1251)@10
    rightShiftStage1Idx1_uid1252_i_unnamed_gradient86_shift_x_q <= GND_q & rightShiftStage1Idx1Rng1_uid1250_i_unnamed_gradient86_shift_x_b;

    -- rightShiftStage0Idx1Rng8_uid1245_i_unnamed_gradient86_shift_x(BITSELECT,1244)@10
    rightShiftStage0Idx1Rng8_uid1245_i_unnamed_gradient86_shift_x_b <= redist59_i_acl_pop_i32_rows_0_0_pop8_gradient_out_data_out_1_q(31 downto 8);

    -- rightShiftStage0Idx1_uid1247_i_unnamed_gradient86_shift_x(BITJOIN,1246)@10
    rightShiftStage0Idx1_uid1247_i_unnamed_gradient86_shift_x_q <= i_unnamed_gradient172_vt_const_7_q & rightShiftStage0Idx1Rng8_uid1245_i_unnamed_gradient86_shift_x_b;

    -- rightShiftStage0_uid1249_i_unnamed_gradient86_shift_x(MUX,1248)@10
    rightShiftStage0_uid1249_i_unnamed_gradient86_shift_x_s <= VCC_q;
    rightShiftStage0_uid1249_i_unnamed_gradient86_shift_x_combproc: PROCESS (rightShiftStage0_uid1249_i_unnamed_gradient86_shift_x_s, redist59_i_acl_pop_i32_rows_0_0_pop8_gradient_out_data_out_1_q, rightShiftStage0Idx1_uid1247_i_unnamed_gradient86_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1249_i_unnamed_gradient86_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1249_i_unnamed_gradient86_shift_x_q <= redist59_i_acl_pop_i32_rows_0_0_pop8_gradient_out_data_out_1_q;
            WHEN "1" => rightShiftStage0_uid1249_i_unnamed_gradient86_shift_x_q <= rightShiftStage0Idx1_uid1247_i_unnamed_gradient86_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1249_i_unnamed_gradient86_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1254_i_unnamed_gradient86_shift_x(MUX,1253)@10
    rightShiftStage1_uid1254_i_unnamed_gradient86_shift_x_s <= VCC_q;
    rightShiftStage1_uid1254_i_unnamed_gradient86_shift_x_combproc: PROCESS (rightShiftStage1_uid1254_i_unnamed_gradient86_shift_x_s, rightShiftStage0_uid1249_i_unnamed_gradient86_shift_x_q, rightShiftStage1Idx1_uid1252_i_unnamed_gradient86_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1254_i_unnamed_gradient86_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1254_i_unnamed_gradient86_shift_x_q <= rightShiftStage0_uid1249_i_unnamed_gradient86_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1254_i_unnamed_gradient86_shift_x_q <= rightShiftStage1Idx1_uid1252_i_unnamed_gradient86_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1254_i_unnamed_gradient86_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient85_vt_select_22(BITSELECT,714)@10
    i_unnamed_gradient85_vt_select_22_b <= rightShiftStage1_uid1254_i_unnamed_gradient86_shift_x_q(22 downto 0);

    -- i_unnamed_gradient85_vt_join(BITJOIN,713)@10
    i_unnamed_gradient85_vt_join_q <= i_unnamed_gradient104_vt_const_31_q & i_unnamed_gradient85_vt_select_22_b;

    -- i_unnamed_gradient87_BitSelect_for_a(BITSELECT,1406)@10
    i_unnamed_gradient87_BitSelect_for_a_b <= i_unnamed_gradient85_vt_join_q(14 downto 7);

    -- redist0_i_unnamed_gradient87_BitSelect_for_a_b_1(DELAY,1419)
    redist0_i_unnamed_gradient87_BitSelect_for_a_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_gradient87_BitSelect_for_a_b, xout => redist0_i_unnamed_gradient87_BitSelect_for_a_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_gradient87_join(BITJOIN,1407)@11
    i_unnamed_gradient87_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & redist0_i_unnamed_gradient87_BitSelect_for_a_b_1_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_unnamed_gradient87_vt_select_14(BITSELECT,719)@11
    i_unnamed_gradient87_vt_select_14_b <= i_unnamed_gradient87_join_q(14 downto 7);

    -- i_unnamed_gradient87_vt_join(BITJOIN,718)@11
    i_unnamed_gradient87_vt_join_q <= i_mul21_117_add248_gradient_vt_const_31_q & i_unnamed_gradient87_vt_select_14_b & i_unnamed_gradient106_vt_const_6_q;

    -- i_mul22_118_masked_gradient_vt_const_31(CONSTANT,338)
    i_mul22_118_masked_gradient_vt_const_31_q <= "000000000000000000000000";

    -- rightShiftStage0Idx1Rng16_uid780_i_shr17_1_gradient_gradient78_shift_x(BITSELECT,779)@10
    rightShiftStage0Idx1Rng16_uid780_i_shr17_1_gradient_gradient78_shift_x_b <= redist59_i_acl_pop_i32_rows_0_0_pop8_gradient_out_data_out_1_q(31 downto 16);

    -- rightShiftStage0Idx1_uid782_i_shr17_1_gradient_gradient78_shift_x(BITJOIN,781)@10
    rightShiftStage0Idx1_uid782_i_shr17_1_gradient_gradient78_shift_x_q <= i_mul22_118_add186_gradient_vt_const_31_q & rightShiftStage0Idx1Rng16_uid780_i_shr17_1_gradient_gradient78_shift_x_b;

    -- rightShiftStage0_uid784_i_shr17_1_gradient_gradient78_shift_x(MUX,783)@10
    rightShiftStage0_uid784_i_shr17_1_gradient_gradient78_shift_x_s <= VCC_q;
    rightShiftStage0_uid784_i_shr17_1_gradient_gradient78_shift_x_combproc: PROCESS (rightShiftStage0_uid784_i_shr17_1_gradient_gradient78_shift_x_s, redist59_i_acl_pop_i32_rows_0_0_pop8_gradient_out_data_out_1_q, rightShiftStage0Idx1_uid782_i_shr17_1_gradient_gradient78_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid784_i_shr17_1_gradient_gradient78_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid784_i_shr17_1_gradient_gradient78_shift_x_q <= redist59_i_acl_pop_i32_rows_0_0_pop8_gradient_out_data_out_1_q;
            WHEN "1" => rightShiftStage0_uid784_i_shr17_1_gradient_gradient78_shift_x_q <= rightShiftStage0Idx1_uid782_i_shr17_1_gradient_gradient78_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid784_i_shr17_1_gradient_gradient78_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr17_1_gradient_vt_select_15(BITSELECT,503)@10
    i_shr17_1_gradient_vt_select_15_b <= rightShiftStage0_uid784_i_shr17_1_gradient_gradient78_shift_x_q(15 downto 0);

    -- i_shr17_1_gradient_vt_join(BITJOIN,502)@10
    i_shr17_1_gradient_vt_join_q <= i_mul22_118_add186_gradient_vt_const_31_q & i_shr17_1_gradient_vt_select_15_b;

    -- i_mul22_1_masked_gradient_BitSelect_for_a(BITSELECT,1350)@10
    i_mul22_1_masked_gradient_BitSelect_for_a_b <= i_shr17_1_gradient_vt_join_q(7 downto 0);

    -- redist10_i_mul22_1_masked_gradient_BitSelect_for_a_b_1(DELAY,1429)
    redist10_i_mul22_1_masked_gradient_BitSelect_for_a_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul22_1_masked_gradient_BitSelect_for_a_b, xout => redist10_i_mul22_1_masked_gradient_BitSelect_for_a_b_1_q, clk => clock, aclr => resetn );

    -- i_mul22_1_masked_gradient_join(BITJOIN,1351)@11
    i_mul22_1_masked_gradient_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & redist10_i_mul22_1_masked_gradient_BitSelect_for_a_b_1_q;

    -- i_mul22_1_masked_gradient_vt_select_7(BITSELECT,364)@11
    i_mul22_1_masked_gradient_vt_select_7_b <= i_mul22_1_masked_gradient_join_q(7 downto 0);

    -- i_mul22_1_masked_gradient_vt_join(BITJOIN,363)@11
    i_mul22_1_masked_gradient_vt_join_q <= i_mul22_118_masked_gradient_vt_const_31_q & i_mul22_1_masked_gradient_vt_select_7_b;

    -- i_mul22_1_add62_gradient(ADD,357)@11
    i_mul22_1_add62_gradient_a <= STD_LOGIC_VECTOR("0" & i_mul22_1_masked_gradient_vt_join_q);
    i_mul22_1_add62_gradient_b <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient87_vt_join_q);
    i_mul22_1_add62_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul22_1_add62_gradient_a) + UNSIGNED(i_mul22_1_add62_gradient_b));
    i_mul22_1_add62_gradient_q <= i_mul22_1_add62_gradient_o(32 downto 0);

    -- bgTrunc_i_mul22_1_add62_gradient_sel_x(BITSELECT,12)@11
    bgTrunc_i_mul22_1_add62_gradient_sel_x_b <= i_mul22_1_add62_gradient_q(31 downto 0);

    -- i_mul22_1_add62_gradient_vt_select_15(BITSELECT,360)@11
    i_mul22_1_add62_gradient_vt_select_15_b <= bgTrunc_i_mul22_1_add62_gradient_sel_x_b(15 downto 0);

    -- redist46_i_mul22_1_add62_gradient_vt_select_15_b_1(DELAY,1465)
    redist46_i_mul22_1_add62_gradient_vt_select_15_b_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul22_1_add62_gradient_vt_select_15_b, xout => redist46_i_mul22_1_add62_gradient_vt_select_15_b_1_q, clk => clock, aclr => resetn );

    -- i_mul22_1_add62_gradient_vt_join(BITJOIN,359)@12
    i_mul22_1_add62_gradient_vt_join_q <= i_mul22_118_add186_gradient_vt_const_31_q & redist46_i_mul22_1_add62_gradient_vt_select_15_b_1_q;

    -- i_mul24_119_add744_gradient_vt_const_31(CONSTANT,378)
    i_mul24_119_add744_gradient_vt_const_31_q <= "0000000000000000000";

    -- rightShiftStage1Idx1Rng4_uid1217_i_unnamed_gradient80_shift_x(BITSELECT,1216)@10
    rightShiftStage1Idx1Rng4_uid1217_i_unnamed_gradient80_shift_x_b <= rightShiftStage0_uid784_i_shr17_1_gradient_gradient78_shift_x_q(31 downto 4);

    -- rightShiftStage1Idx1_uid1219_i_unnamed_gradient80_shift_x(BITJOIN,1218)@10
    rightShiftStage1Idx1_uid1219_i_unnamed_gradient80_shift_x_q <= i_unnamed_gradient101_vt_const_3_q & rightShiftStage1Idx1Rng4_uid1217_i_unnamed_gradient80_shift_x_b;

    -- rightShiftStage1_uid1221_i_unnamed_gradient80_shift_x(MUX,1220)@10
    rightShiftStage1_uid1221_i_unnamed_gradient80_shift_x_s <= VCC_q;
    rightShiftStage1_uid1221_i_unnamed_gradient80_shift_x_combproc: PROCESS (rightShiftStage1_uid1221_i_unnamed_gradient80_shift_x_s, rightShiftStage0_uid784_i_shr17_1_gradient_gradient78_shift_x_q, rightShiftStage1Idx1_uid1219_i_unnamed_gradient80_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1221_i_unnamed_gradient80_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1221_i_unnamed_gradient80_shift_x_q <= rightShiftStage0_uid784_i_shr17_1_gradient_gradient78_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1221_i_unnamed_gradient80_shift_x_q <= rightShiftStage1Idx1_uid1219_i_unnamed_gradient80_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1221_i_unnamed_gradient80_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient82_vt_select_11(BITSELECT,706)@10
    i_unnamed_gradient82_vt_select_11_b <= rightShiftStage1_uid1221_i_unnamed_gradient80_shift_x_q(11 downto 0);

    -- i_unnamed_gradient82_vt_join(BITJOIN,705)@10
    i_unnamed_gradient82_vt_join_q <= i_mul24_119_add688_gradient_vt_const_31_q & i_unnamed_gradient82_vt_select_11_b;

    -- i_unnamed_gradient84_BitSelect_for_a(BITSELECT,1404)@10
    i_unnamed_gradient84_BitSelect_for_a_b <= i_unnamed_gradient82_vt_join_q(11 downto 4);

    -- redist1_i_unnamed_gradient84_BitSelect_for_a_b_1(DELAY,1420)
    redist1_i_unnamed_gradient84_BitSelect_for_a_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_gradient84_BitSelect_for_a_b, xout => redist1_i_unnamed_gradient84_BitSelect_for_a_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_gradient84_join(BITJOIN,1405)@11
    i_unnamed_gradient84_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & redist1_i_unnamed_gradient84_BitSelect_for_a_b_1_q & GND_q & GND_q & GND_q & GND_q;

    -- i_unnamed_gradient84_vt_select_11(BITSELECT,711)@11
    i_unnamed_gradient84_vt_select_11_b <= i_unnamed_gradient84_join_q(11 downto 4);

    -- i_unnamed_gradient84_vt_join(BITJOIN,710)@11
    i_unnamed_gradient84_vt_join_q <= i_mul24_119_add688_gradient_vt_const_31_q & i_unnamed_gradient84_vt_select_11_b & i_unnamed_gradient101_vt_const_3_q;

    -- rightShiftStage2Idx1Rng1_uid1222_i_unnamed_gradient80_shift_x(BITSELECT,1221)@10
    rightShiftStage2Idx1Rng1_uid1222_i_unnamed_gradient80_shift_x_b <= rightShiftStage1_uid1221_i_unnamed_gradient80_shift_x_q(31 downto 1);

    -- rightShiftStage2Idx1_uid1224_i_unnamed_gradient80_shift_x(BITJOIN,1223)@10
    rightShiftStage2Idx1_uid1224_i_unnamed_gradient80_shift_x_q <= GND_q & rightShiftStage2Idx1Rng1_uid1222_i_unnamed_gradient80_shift_x_b;

    -- rightShiftStage2_uid1226_i_unnamed_gradient80_shift_x(MUX,1225)@10
    rightShiftStage2_uid1226_i_unnamed_gradient80_shift_x_s <= VCC_q;
    rightShiftStage2_uid1226_i_unnamed_gradient80_shift_x_combproc: PROCESS (rightShiftStage2_uid1226_i_unnamed_gradient80_shift_x_s, rightShiftStage1_uid1221_i_unnamed_gradient80_shift_x_q, rightShiftStage2Idx1_uid1224_i_unnamed_gradient80_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1226_i_unnamed_gradient80_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1226_i_unnamed_gradient80_shift_x_q <= rightShiftStage1_uid1221_i_unnamed_gradient80_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1226_i_unnamed_gradient80_shift_x_q <= rightShiftStage2Idx1_uid1224_i_unnamed_gradient80_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1226_i_unnamed_gradient80_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient79_vt_select_10(BITSELECT,698)@10
    i_unnamed_gradient79_vt_select_10_b <= rightShiftStage2_uid1226_i_unnamed_gradient80_shift_x_q(10 downto 0);

    -- i_unnamed_gradient79_vt_join(BITJOIN,697)@10
    i_unnamed_gradient79_vt_join_q <= i_reduction_gradient_15_gradient_vt_const_31_q & i_unnamed_gradient79_vt_select_10_b;

    -- i_unnamed_gradient81_BitSelect_for_a(BITSELECT,1402)@10
    i_unnamed_gradient81_BitSelect_for_a_b <= i_unnamed_gradient79_vt_join_q(10 downto 3);

    -- i_unnamed_gradient81_join(BITJOIN,1403)@10
    i_unnamed_gradient81_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_unnamed_gradient81_BitSelect_for_a_b & GND_q & GND_q & GND_q;

    -- i_unnamed_gradient81_vt_select_10(BITSELECT,703)@10
    i_unnamed_gradient81_vt_select_10_b <= i_unnamed_gradient81_join_q(10 downto 3);

    -- i_unnamed_gradient109_vt_const_2(CONSTANT,554)
    i_unnamed_gradient109_vt_const_2_q <= "000";

    -- i_unnamed_gradient81_vt_join(BITJOIN,702)@10
    i_unnamed_gradient81_vt_join_q <= i_reduction_gradient_15_gradient_vt_const_31_q & i_unnamed_gradient81_vt_select_10_b & i_unnamed_gradient109_vt_const_2_q;

    -- rightShiftStage1Idx1Rng8_uid845_i_shr19_1_gradient_gradient77_shift_x(BITSELECT,844)@10
    rightShiftStage1Idx1Rng8_uid845_i_shr19_1_gradient_gradient77_shift_x_b <= rightShiftStage0_uid784_i_shr17_1_gradient_gradient78_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid847_i_shr19_1_gradient_gradient77_shift_x(BITJOIN,846)@10
    rightShiftStage1Idx1_uid847_i_shr19_1_gradient_gradient77_shift_x_q <= i_unnamed_gradient172_vt_const_7_q & rightShiftStage1Idx1Rng8_uid845_i_shr19_1_gradient_gradient77_shift_x_b;

    -- rightShiftStage1_uid849_i_shr19_1_gradient_gradient77_shift_x(MUX,848)@10
    rightShiftStage1_uid849_i_shr19_1_gradient_gradient77_shift_x_s <= VCC_q;
    rightShiftStage1_uid849_i_shr19_1_gradient_gradient77_shift_x_combproc: PROCESS (rightShiftStage1_uid849_i_shr19_1_gradient_gradient77_shift_x_s, rightShiftStage0_uid784_i_shr17_1_gradient_gradient78_shift_x_q, rightShiftStage1Idx1_uid847_i_shr19_1_gradient_gradient77_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid849_i_shr19_1_gradient_gradient77_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid849_i_shr19_1_gradient_gradient77_shift_x_q <= rightShiftStage0_uid784_i_shr17_1_gradient_gradient78_shift_x_q;
            WHEN "1" => rightShiftStage1_uid849_i_shr19_1_gradient_gradient77_shift_x_q <= rightShiftStage1Idx1_uid847_i_shr19_1_gradient_gradient77_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid849_i_shr19_1_gradient_gradient77_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr19_1_gradient_vt_select_7(BITSELECT,518)@10
    i_shr19_1_gradient_vt_select_7_b <= rightShiftStage1_uid849_i_shr19_1_gradient_gradient77_shift_x_q(7 downto 0);

    -- i_shr19_1_gradient_vt_join(BITJOIN,517)@10
    i_shr19_1_gradient_vt_join_q <= i_mul22_118_masked_gradient_vt_const_31_q & i_shr19_1_gradient_vt_select_7_b;

    -- i_mul24_1_add626_gradient(ADD,397)@10
    i_mul24_1_add626_gradient_a <= STD_LOGIC_VECTOR("0" & i_shr19_1_gradient_vt_join_q);
    i_mul24_1_add626_gradient_b <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient81_vt_join_q);
    i_mul24_1_add626_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul24_1_add626_gradient_a) + UNSIGNED(i_mul24_1_add626_gradient_b));
    i_mul24_1_add626_gradient_q <= i_mul24_1_add626_gradient_o(32 downto 0);

    -- bgTrunc_i_mul24_1_add626_gradient_sel_x(BITSELECT,20)@10
    bgTrunc_i_mul24_1_add626_gradient_sel_x_b <= i_mul24_1_add626_gradient_q(31 downto 0);

    -- i_mul24_1_add626_gradient_vt_select_11(BITSELECT,400)@10
    i_mul24_1_add626_gradient_vt_select_11_b <= bgTrunc_i_mul24_1_add626_gradient_sel_x_b(11 downto 0);

    -- redist38_i_mul24_1_add626_gradient_vt_select_11_b_1(DELAY,1457)
    redist38_i_mul24_1_add626_gradient_vt_select_11_b_1 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul24_1_add626_gradient_vt_select_11_b, xout => redist38_i_mul24_1_add626_gradient_vt_select_11_b_1_q, clk => clock, aclr => resetn );

    -- i_mul24_1_add626_gradient_vt_join(BITJOIN,399)@11
    i_mul24_1_add626_gradient_vt_join_q <= i_mul24_119_add688_gradient_vt_const_31_q & redist38_i_mul24_1_add626_gradient_vt_select_11_b_1_q;

    -- i_mul24_1_add682_gradient(ADD,401)@11
    i_mul24_1_add682_gradient_a <= STD_LOGIC_VECTOR("0" & i_mul24_1_add626_gradient_vt_join_q);
    i_mul24_1_add682_gradient_b <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient84_vt_join_q);
    i_mul24_1_add682_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul24_1_add682_gradient_a) + UNSIGNED(i_mul24_1_add682_gradient_b));
    i_mul24_1_add682_gradient_q <= i_mul24_1_add682_gradient_o(32 downto 0);

    -- bgTrunc_i_mul24_1_add682_gradient_sel_x(BITSELECT,21)@11
    bgTrunc_i_mul24_1_add682_gradient_sel_x_b <= i_mul24_1_add682_gradient_q(31 downto 0);

    -- i_mul24_1_add682_gradient_vt_select_12(BITSELECT,404)@11
    i_mul24_1_add682_gradient_vt_select_12_b <= bgTrunc_i_mul24_1_add682_gradient_sel_x_b(12 downto 0);

    -- redist37_i_mul24_1_add682_gradient_vt_select_12_b_1(DELAY,1456)
    redist37_i_mul24_1_add682_gradient_vt_select_12_b_1 : dspba_delay
    GENERIC MAP ( width => 13, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul24_1_add682_gradient_vt_select_12_b, xout => redist37_i_mul24_1_add682_gradient_vt_select_12_b_1_q, clk => clock, aclr => resetn );

    -- i_mul24_1_add682_gradient_vt_join(BITJOIN,403)@12
    i_mul24_1_add682_gradient_vt_join_q <= i_mul24_119_add744_gradient_vt_const_31_q & redist37_i_mul24_1_add682_gradient_vt_select_12_b_1_q;

    -- i_reduction_gradient_0_gradient(ADD,414)@12
    i_reduction_gradient_0_gradient_a <= STD_LOGIC_VECTOR("0" & i_mul24_1_add682_gradient_vt_join_q);
    i_reduction_gradient_0_gradient_b <= STD_LOGIC_VECTOR("0" & i_mul22_1_add62_gradient_vt_join_q);
    i_reduction_gradient_0_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_gradient_0_gradient_a) + UNSIGNED(i_reduction_gradient_0_gradient_b));
    i_reduction_gradient_0_gradient_q <= i_reduction_gradient_0_gradient_o(32 downto 0);

    -- bgTrunc_i_reduction_gradient_0_gradient_sel_x(BITSELECT,24)@12
    bgTrunc_i_reduction_gradient_0_gradient_sel_x_b <= i_reduction_gradient_0_gradient_q(31 downto 0);

    -- i_reduction_gradient_0_gradient_vt_select_16(BITSELECT,417)@12
    i_reduction_gradient_0_gradient_vt_select_16_b <= bgTrunc_i_reduction_gradient_0_gradient_sel_x_b(16 downto 0);

    -- redist34_i_reduction_gradient_0_gradient_vt_select_16_b_1(DELAY,1453)
    redist34_i_reduction_gradient_0_gradient_vt_select_16_b_1 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_gradient_0_gradient_vt_select_16_b, xout => redist34_i_reduction_gradient_0_gradient_vt_select_16_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_gradient_0_gradient_vt_join(BITJOIN,416)@13
    i_reduction_gradient_0_gradient_vt_join_q <= i_reduction_gradient_0_gradient_vt_const_31_q & redist34_i_reduction_gradient_0_gradient_vt_select_16_b_1_q;

    -- i_reduction_gradient_2_gradient(ADD,458)@13
    i_reduction_gradient_2_gradient_a <= STD_LOGIC_VECTOR("0" & i_reduction_gradient_0_gradient_vt_join_q);
    i_reduction_gradient_2_gradient_b <= STD_LOGIC_VECTOR("0" & i_reduction_gradient_1_gradient_vt_join_q);
    i_reduction_gradient_2_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_gradient_2_gradient_a) + UNSIGNED(i_reduction_gradient_2_gradient_b));
    i_reduction_gradient_2_gradient_q <= i_reduction_gradient_2_gradient_o(32 downto 0);

    -- bgTrunc_i_reduction_gradient_2_gradient_sel_x(BITSELECT,35)@13
    bgTrunc_i_reduction_gradient_2_gradient_sel_x_b <= i_reduction_gradient_2_gradient_q(31 downto 0);

    -- i_reduction_gradient_2_gradient_vt_select_17(BITSELECT,461)@13
    i_reduction_gradient_2_gradient_vt_select_17_b <= bgTrunc_i_reduction_gradient_2_gradient_sel_x_b(17 downto 0);

    -- i_reduction_gradient_2_gradient_vt_join(BITJOIN,460)@13
    i_reduction_gradient_2_gradient_vt_join_q <= i_reduction_gradient_11_gradient_vt_const_31_q & i_reduction_gradient_2_gradient_vt_select_17_b;

    -- rightShiftStage0_uid899_i_shr27_1_gradient_gradient115_shift_x(MUX,898)@13
    rightShiftStage0_uid899_i_shr27_1_gradient_gradient115_shift_x_s <= VCC_q;
    rightShiftStage0_uid899_i_shr27_1_gradient_gradient115_shift_x_combproc: PROCESS (rightShiftStage0_uid899_i_shr27_1_gradient_gradient115_shift_x_s, i_reduction_gradient_2_gradient_vt_join_q, rightShiftStage0Idx1_uid897_i_shr27_1_gradient_gradient115_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid899_i_shr27_1_gradient_gradient115_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid899_i_shr27_1_gradient_gradient115_shift_x_q <= i_reduction_gradient_2_gradient_vt_join_q;
            WHEN "1" => rightShiftStage0_uid899_i_shr27_1_gradient_gradient115_shift_x_q <= rightShiftStage0Idx1_uid897_i_shr27_1_gradient_gradient115_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid899_i_shr27_1_gradient_gradient115_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr27_1_gradient_vt_select_9(BITSELECT,533)@13
    i_shr27_1_gradient_vt_select_9_b <= rightShiftStage0_uid899_i_shr27_1_gradient_gradient115_shift_x_q(9 downto 0);

    -- redist18_i_shr27_1_gradient_vt_select_9_b_1(DELAY,1437)
    redist18_i_shr27_1_gradient_vt_select_9_b_1 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_shr27_1_gradient_vt_select_9_b, xout => redist18_i_shr27_1_gradient_vt_select_9_b_1_q, clk => clock, aclr => resetn );

    -- i_shr27_1_gradient_vt_join(BITJOIN,532)@14
    i_shr27_1_gradient_vt_join_q <= i_unnamed_gradient170_multconst_x_q & redist18_i_shr27_1_gradient_vt_select_9_b_1_q;

    -- rightShiftStage0Idx1Rng8_uid868_i_shr27_123_gradient_gradient152_shift_x(BITSELECT,867)@13
    rightShiftStage0Idx1Rng8_uid868_i_shr27_123_gradient_gradient152_shift_x_b <= i_reduction_gradient_5_gradient_vt_join_q(31 downto 8);

    -- rightShiftStage0Idx1_uid870_i_shr27_123_gradient_gradient152_shift_x(BITJOIN,869)@13
    rightShiftStage0Idx1_uid870_i_shr27_123_gradient_gradient152_shift_x_q <= i_unnamed_gradient172_vt_const_7_q & rightShiftStage0Idx1Rng8_uid868_i_shr27_123_gradient_gradient152_shift_x_b;

    -- rightShiftStage0Idx1Rng2_uid993_i_unnamed_gradient120_shift_x(BITSELECT,992)@10
    rightShiftStage0Idx1Rng2_uid993_i_unnamed_gradient120_shift_x_b <= redist57_i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient_out_data_out_1_q(31 downto 2);

    -- rightShiftStage0Idx1_uid995_i_unnamed_gradient120_shift_x(BITJOIN,994)@10
    rightShiftStage0Idx1_uid995_i_unnamed_gradient120_shift_x_q <= i_unnamed_gradient119_vt_const_31_q & rightShiftStage0Idx1Rng2_uid993_i_unnamed_gradient120_shift_x_b;

    -- i_acl_push_i32_rows_1_0_push7_gradient(BLACKBOX,302)@9
    -- out out_feedback_out_7@20000000
    -- out out_feedback_valid_out_7@20000000
    thei_acl_push_i32_rows_1_0_push7_gradient : i_acl_push_i32_rows_1_0_push7_gradient67
    PORT MAP (
        in_c1_ene3 => in_c1_eni5_3,
        in_data_in => i_acl_pop_i32_rows_0_0_pop8_gradient_out_data_out,
        in_feedback_stall_in_7 => i_acl_pop_i32_rows_1_0_pop7_gradient_out_feedback_stall_out_7,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_7 => i_acl_push_i32_rows_1_0_push7_gradient_out_feedback_out_7,
        out_feedback_valid_out_7 => i_acl_push_i32_rows_1_0_push7_gradient_out_feedback_valid_out_7,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_rows_1_0_pop7_gradient(BLACKBOX,295)@9
    -- out out_feedback_stall_out_7@20000000
    thei_acl_pop_i32_rows_1_0_pop7_gradient : i_acl_pop_i32_rows_1_0_pop7_gradient55
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => in_c1_eni5_2,
        in_feedback_in_7 => i_acl_push_i32_rows_1_0_push7_gradient_out_feedback_out_7,
        in_feedback_valid_in_7 => i_acl_push_i32_rows_1_0_push7_gradient_out_feedback_valid_out_7,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_rows_1_0_pop7_gradient_out_data_out,
        out_feedback_stall_out_7 => i_acl_pop_i32_rows_1_0_pop7_gradient_out_feedback_stall_out_7,
        clock => clock,
        resetn => resetn
    );

    -- redist58_i_acl_pop_i32_rows_1_0_pop7_gradient_out_data_out_1(DELAY,1477)
    redist58_i_acl_pop_i32_rows_1_0_pop7_gradient_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_rows_1_0_pop7_gradient_out_data_out, xout => redist58_i_acl_pop_i32_rows_1_0_pop7_gradient_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_acl_push_i32_rows_297_0_coalesced_push4_gradient(BLACKBOX,303)@10
    -- out out_feedback_out_4@20000000
    -- out out_feedback_valid_out_4@20000000
    thei_acl_push_i32_rows_297_0_coalesced_push4_gradient : i_acl_push_i32_rows_297_0_coalesced_push4_gradient57
    PORT MAP (
        in_data_in => redist58_i_acl_pop_i32_rows_1_0_pop7_gradient_out_data_out_1_q,
        in_feedback_stall_in_4 => i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient_out_feedback_stall_out_4,
        in_stall_in => GND_q,
        in_valid_in => redist61_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_4 => i_acl_push_i32_rows_297_0_coalesced_push4_gradient_out_feedback_out_4,
        out_feedback_valid_out_4 => i_acl_push_i32_rows_297_0_coalesced_push4_gradient_out_feedback_valid_out_4,
        clock => clock,
        resetn => resetn
    );

    -- c_i10_1gr(CONSTANT,271)
    c_i10_1gr_q <= "1111111111";

    -- i_not_select999_gradient(COMPARE,413)@9
    i_not_select999_gradient_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => c_i10_1gr_q(9)) & c_i10_1gr_q));
    i_not_select999_gradient_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => in_c1_eni5_1(9)) & in_c1_eni5_1));
    i_not_select999_gradient_o <= STD_LOGIC_VECTOR(SIGNED(i_not_select999_gradient_a) - SIGNED(i_not_select999_gradient_b));
    i_not_select999_gradient_c(0) <= i_not_select999_gradient_o(11);

    -- i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient(BLACKBOX,296)@9
    -- out out_feedback_stall_out_4@20000000
    thei_acl_pop_i32_rows_297_0_coalesced_pop4_gradient : i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient53
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => i_not_select999_gradient_c,
        in_feedback_in_4 => i_acl_push_i32_rows_297_0_coalesced_push4_gradient_out_feedback_out_4,
        in_feedback_valid_in_4 => i_acl_push_i32_rows_297_0_coalesced_push4_gradient_out_feedback_valid_out_4,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient_out_data_out,
        out_feedback_stall_out_4 => i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient_out_feedback_stall_out_4,
        clock => clock,
        resetn => resetn
    );

    -- redist57_i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient_out_data_out_1(DELAY,1476)
    redist57_i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient_out_data_out, xout => redist57_i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient_out_data_out_1_q, clk => clock, aclr => resetn );

    -- rightShiftStage0_uid997_i_unnamed_gradient120_shift_x(MUX,996)@10
    rightShiftStage0_uid997_i_unnamed_gradient120_shift_x_s <= VCC_q;
    rightShiftStage0_uid997_i_unnamed_gradient120_shift_x_combproc: PROCESS (rightShiftStage0_uid997_i_unnamed_gradient120_shift_x_s, redist57_i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient_out_data_out_1_q, rightShiftStage0Idx1_uid995_i_unnamed_gradient120_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid997_i_unnamed_gradient120_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid997_i_unnamed_gradient120_shift_x_q <= redist57_i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient_out_data_out_1_q;
            WHEN "1" => rightShiftStage0_uid997_i_unnamed_gradient120_shift_x_q <= rightShiftStage0Idx1_uid995_i_unnamed_gradient120_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid997_i_unnamed_gradient120_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient119_vt_select_29(BITSELECT,576)@10
    i_unnamed_gradient119_vt_select_29_b <= rightShiftStage0_uid997_i_unnamed_gradient120_shift_x_q(29 downto 0);

    -- i_unnamed_gradient119_vt_join(BITJOIN,575)@10
    i_unnamed_gradient119_vt_join_q <= i_unnamed_gradient119_vt_const_31_q & i_unnamed_gradient119_vt_select_29_b;

    -- i_unnamed_gradient121_BitSelect_for_a(BITSELECT,1364)@10
    i_unnamed_gradient121_BitSelect_for_a_b <= i_unnamed_gradient119_vt_join_q(13 downto 6);

    -- i_unnamed_gradient121_join(BITJOIN,1365)@10
    i_unnamed_gradient121_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_unnamed_gradient121_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_unnamed_gradient121_vt_select_13(BITSELECT,581)@10
    i_unnamed_gradient121_vt_select_13_b <= i_unnamed_gradient121_join_q(13 downto 6);

    -- i_unnamed_gradient121_vt_join(BITJOIN,580)@10
    i_unnamed_gradient121_vt_join_q <= i_unnamed_gradient121_vt_const_31_q & i_unnamed_gradient121_vt_select_13_b & i_unnamed_gradient121_vt_const_5_q;

    -- rightShiftStage2Idx1Rng1_uid984_i_unnamed_gradient117_shift_x(BITSELECT,983)@10
    rightShiftStage2Idx1Rng1_uid984_i_unnamed_gradient117_shift_x_b <= rightShiftStage1_uid983_i_unnamed_gradient117_shift_x_q(31 downto 1);

    -- rightShiftStage2Idx1_uid986_i_unnamed_gradient117_shift_x(BITJOIN,985)@10
    rightShiftStage2Idx1_uid986_i_unnamed_gradient117_shift_x_q <= GND_q & rightShiftStage2Idx1Rng1_uid984_i_unnamed_gradient117_shift_x_b;

    -- rightShiftStage1Idx1Rng2_uid979_i_unnamed_gradient117_shift_x(BITSELECT,978)@10
    rightShiftStage1Idx1Rng2_uid979_i_unnamed_gradient117_shift_x_b <= rightShiftStage0_uid978_i_unnamed_gradient117_shift_x_q(31 downto 2);

    -- rightShiftStage1Idx1_uid981_i_unnamed_gradient117_shift_x(BITJOIN,980)@10
    rightShiftStage1Idx1_uid981_i_unnamed_gradient117_shift_x_q <= i_unnamed_gradient119_vt_const_31_q & rightShiftStage1Idx1Rng2_uid979_i_unnamed_gradient117_shift_x_b;

    -- rightShiftStage0Idx1Rng4_uid974_i_unnamed_gradient117_shift_x(BITSELECT,973)@10
    rightShiftStage0Idx1Rng4_uid974_i_unnamed_gradient117_shift_x_b <= redist57_i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient_out_data_out_1_q(31 downto 4);

    -- rightShiftStage0Idx1_uid976_i_unnamed_gradient117_shift_x(BITJOIN,975)@10
    rightShiftStage0Idx1_uid976_i_unnamed_gradient117_shift_x_q <= i_unnamed_gradient101_vt_const_3_q & rightShiftStage0Idx1Rng4_uid974_i_unnamed_gradient117_shift_x_b;

    -- rightShiftStage0_uid978_i_unnamed_gradient117_shift_x(MUX,977)@10
    rightShiftStage0_uid978_i_unnamed_gradient117_shift_x_s <= VCC_q;
    rightShiftStage0_uid978_i_unnamed_gradient117_shift_x_combproc: PROCESS (rightShiftStage0_uid978_i_unnamed_gradient117_shift_x_s, redist57_i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient_out_data_out_1_q, rightShiftStage0Idx1_uid976_i_unnamed_gradient117_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid978_i_unnamed_gradient117_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid978_i_unnamed_gradient117_shift_x_q <= redist57_i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient_out_data_out_1_q;
            WHEN "1" => rightShiftStage0_uid978_i_unnamed_gradient117_shift_x_q <= rightShiftStage0Idx1_uid976_i_unnamed_gradient117_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid978_i_unnamed_gradient117_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid983_i_unnamed_gradient117_shift_x(MUX,982)@10
    rightShiftStage1_uid983_i_unnamed_gradient117_shift_x_s <= VCC_q;
    rightShiftStage1_uid983_i_unnamed_gradient117_shift_x_combproc: PROCESS (rightShiftStage1_uid983_i_unnamed_gradient117_shift_x_s, rightShiftStage0_uid978_i_unnamed_gradient117_shift_x_q, rightShiftStage1Idx1_uid981_i_unnamed_gradient117_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid983_i_unnamed_gradient117_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid983_i_unnamed_gradient117_shift_x_q <= rightShiftStage0_uid978_i_unnamed_gradient117_shift_x_q;
            WHEN "1" => rightShiftStage1_uid983_i_unnamed_gradient117_shift_x_q <= rightShiftStage1Idx1_uid981_i_unnamed_gradient117_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid983_i_unnamed_gradient117_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid988_i_unnamed_gradient117_shift_x(MUX,987)@10
    rightShiftStage2_uid988_i_unnamed_gradient117_shift_x_s <= VCC_q;
    rightShiftStage2_uid988_i_unnamed_gradient117_shift_x_combproc: PROCESS (rightShiftStage2_uid988_i_unnamed_gradient117_shift_x_s, rightShiftStage1_uid983_i_unnamed_gradient117_shift_x_q, rightShiftStage2Idx1_uid986_i_unnamed_gradient117_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid988_i_unnamed_gradient117_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid988_i_unnamed_gradient117_shift_x_q <= rightShiftStage1_uid983_i_unnamed_gradient117_shift_x_q;
            WHEN "1" => rightShiftStage2_uid988_i_unnamed_gradient117_shift_x_q <= rightShiftStage2Idx1_uid986_i_unnamed_gradient117_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid988_i_unnamed_gradient117_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient116_vt_select_24(BITSELECT,568)@10
    i_unnamed_gradient116_vt_select_24_b <= rightShiftStage2_uid988_i_unnamed_gradient117_shift_x_q(24 downto 0);

    -- i_unnamed_gradient116_vt_join(BITJOIN,567)@10
    i_unnamed_gradient116_vt_join_q <= i_unnamed_gradient106_vt_const_6_q & i_unnamed_gradient116_vt_select_24_b;

    -- i_unnamed_gradient118_BitSelect_for_a(BITSELECT,1362)@10
    i_unnamed_gradient118_BitSelect_for_a_b <= i_unnamed_gradient116_vt_join_q(8 downto 1);

    -- i_unnamed_gradient118_join(BITJOIN,1363)@10
    i_unnamed_gradient118_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_unnamed_gradient118_BitSelect_for_a_b & GND_q;

    -- i_unnamed_gradient118_vt_select_8(BITSELECT,573)@10
    i_unnamed_gradient118_vt_select_8_b <= i_unnamed_gradient118_join_q(8 downto 1);

    -- i_unnamed_gradient118_vt_join(BITJOIN,572)@10
    i_unnamed_gradient118_vt_join_q <= i_unnamed_gradient118_vt_const_31_q & i_unnamed_gradient118_vt_select_8_b & GND_q;

    -- i_mul21_117_add248_gradient(ADD,308)@10
    i_mul21_117_add248_gradient_a <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient118_vt_join_q);
    i_mul21_117_add248_gradient_b <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient121_vt_join_q);
    i_mul21_117_add248_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul21_117_add248_gradient_a) + UNSIGNED(i_mul21_117_add248_gradient_b));
    i_mul21_117_add248_gradient_q <= i_mul21_117_add248_gradient_o(32 downto 0);

    -- bgTrunc_i_mul21_117_add248_gradient_sel_x(BITSELECT,4)@10
    bgTrunc_i_mul21_117_add248_gradient_sel_x_b <= i_mul21_117_add248_gradient_q(31 downto 0);

    -- i_mul21_117_add248_gradient_vt_select_14(BITSELECT,312)@10
    i_mul21_117_add248_gradient_vt_select_14_b <= bgTrunc_i_mul21_117_add248_gradient_sel_x_b(14 downto 1);

    -- redist54_i_mul21_117_add248_gradient_vt_select_14_b_2(DELAY,1473)
    redist54_i_mul21_117_add248_gradient_vt_select_14_b_2 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul21_117_add248_gradient_vt_select_14_b, xout => redist54_i_mul21_117_add248_gradient_vt_select_14_b_2_q, clk => clock, aclr => resetn );

    -- i_mul21_117_add248_gradient_vt_join(BITJOIN,311)@12
    i_mul21_117_add248_gradient_vt_join_q <= i_mul21_117_add248_gradient_vt_const_31_q & redist54_i_mul21_117_add248_gradient_vt_select_14_b_2_q & GND_q;

    -- i_reduction_gradient_4_gradient(ADD,466)@12
    i_reduction_gradient_4_gradient_a <= STD_LOGIC_VECTOR("0" & i_mul21_117_add248_gradient_vt_join_q);
    i_reduction_gradient_4_gradient_b <= STD_LOGIC_VECTOR("0" & c_i32_128_q);
    i_reduction_gradient_4_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_gradient_4_gradient_a) + UNSIGNED(i_reduction_gradient_4_gradient_b));
    i_reduction_gradient_4_gradient_q <= i_reduction_gradient_4_gradient_o(32 downto 0);

    -- bgTrunc_i_reduction_gradient_4_gradient_sel_x(BITSELECT,37)@12
    bgTrunc_i_reduction_gradient_4_gradient_sel_x_b <= i_reduction_gradient_4_gradient_q(31 downto 0);

    -- i_reduction_gradient_4_gradient_vt_select_15(BITSELECT,470)@12
    i_reduction_gradient_4_gradient_vt_select_15_b <= bgTrunc_i_reduction_gradient_4_gradient_sel_x_b(15 downto 1);

    -- redist25_i_reduction_gradient_4_gradient_vt_select_15_b_1(DELAY,1444)
    redist25_i_reduction_gradient_4_gradient_vt_select_15_b_1 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_gradient_4_gradient_vt_select_15_b, xout => redist25_i_reduction_gradient_4_gradient_vt_select_15_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_gradient_4_gradient_vt_join(BITJOIN,469)@13
    i_reduction_gradient_4_gradient_vt_join_q <= i_mul22_118_add186_gradient_vt_const_31_q & redist25_i_reduction_gradient_4_gradient_vt_select_15_b_1_q & GND_q;

    -- rightShiftStage1Idx1Rng1_uid932_i_unnamed_gradient105_shift_x(BITSELECT,931)@10
    rightShiftStage1Idx1Rng1_uid932_i_unnamed_gradient105_shift_x_b <= rightShiftStage0_uid931_i_unnamed_gradient105_shift_x_q(31 downto 1);

    -- rightShiftStage1Idx1_uid934_i_unnamed_gradient105_shift_x(BITJOIN,933)@10
    rightShiftStage1Idx1_uid934_i_unnamed_gradient105_shift_x_q <= GND_q & rightShiftStage1Idx1Rng1_uid932_i_unnamed_gradient105_shift_x_b;

    -- rightShiftStage0Idx1Rng8_uid927_i_unnamed_gradient105_shift_x(BITSELECT,926)@10
    rightShiftStage0Idx1Rng8_uid927_i_unnamed_gradient105_shift_x_b <= redist57_i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient_out_data_out_1_q(31 downto 8);

    -- rightShiftStage0Idx1_uid929_i_unnamed_gradient105_shift_x(BITJOIN,928)@10
    rightShiftStage0Idx1_uid929_i_unnamed_gradient105_shift_x_q <= i_unnamed_gradient172_vt_const_7_q & rightShiftStage0Idx1Rng8_uid927_i_unnamed_gradient105_shift_x_b;

    -- rightShiftStage0_uid931_i_unnamed_gradient105_shift_x(MUX,930)@10
    rightShiftStage0_uid931_i_unnamed_gradient105_shift_x_s <= VCC_q;
    rightShiftStage0_uid931_i_unnamed_gradient105_shift_x_combproc: PROCESS (rightShiftStage0_uid931_i_unnamed_gradient105_shift_x_s, redist57_i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient_out_data_out_1_q, rightShiftStage0Idx1_uid929_i_unnamed_gradient105_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid931_i_unnamed_gradient105_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid931_i_unnamed_gradient105_shift_x_q <= redist57_i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient_out_data_out_1_q;
            WHEN "1" => rightShiftStage0_uid931_i_unnamed_gradient105_shift_x_q <= rightShiftStage0Idx1_uid929_i_unnamed_gradient105_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid931_i_unnamed_gradient105_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid936_i_unnamed_gradient105_shift_x(MUX,935)@10
    rightShiftStage1_uid936_i_unnamed_gradient105_shift_x_s <= VCC_q;
    rightShiftStage1_uid936_i_unnamed_gradient105_shift_x_combproc: PROCESS (rightShiftStage1_uid936_i_unnamed_gradient105_shift_x_s, rightShiftStage0_uid931_i_unnamed_gradient105_shift_x_q, rightShiftStage1Idx1_uid934_i_unnamed_gradient105_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid936_i_unnamed_gradient105_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid936_i_unnamed_gradient105_shift_x_q <= rightShiftStage0_uid931_i_unnamed_gradient105_shift_x_q;
            WHEN "1" => rightShiftStage1_uid936_i_unnamed_gradient105_shift_x_q <= rightShiftStage1Idx1_uid934_i_unnamed_gradient105_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid936_i_unnamed_gradient105_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient104_vt_select_22(BITSELECT,544)@10
    i_unnamed_gradient104_vt_select_22_b <= rightShiftStage1_uid936_i_unnamed_gradient105_shift_x_q(22 downto 0);

    -- i_unnamed_gradient104_vt_join(BITJOIN,543)@10
    i_unnamed_gradient104_vt_join_q <= i_unnamed_gradient104_vt_const_31_q & i_unnamed_gradient104_vt_select_22_b;

    -- i_unnamed_gradient106_BitSelect_for_a(BITSELECT,1356)@10
    i_unnamed_gradient106_BitSelect_for_a_b <= i_unnamed_gradient104_vt_join_q(14 downto 7);

    -- i_unnamed_gradient106_join(BITJOIN,1357)@10
    i_unnamed_gradient106_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_unnamed_gradient106_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_unnamed_gradient106_vt_select_14(BITSELECT,549)@10
    i_unnamed_gradient106_vt_select_14_b <= i_unnamed_gradient106_join_q(14 downto 7);

    -- redist16_i_unnamed_gradient106_vt_select_14_b_1(DELAY,1435)
    redist16_i_unnamed_gradient106_vt_select_14_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_gradient106_vt_select_14_b, xout => redist16_i_unnamed_gradient106_vt_select_14_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_gradient106_vt_join(BITJOIN,548)@11
    i_unnamed_gradient106_vt_join_q <= i_mul21_117_add248_gradient_vt_const_31_q & redist16_i_unnamed_gradient106_vt_select_14_b_1_q & i_unnamed_gradient106_vt_const_6_q;

    -- rightShiftStage0Idx1Rng16_uid753_i_shr17_114_gradient_gradient88_shift_x(BITSELECT,752)@10
    rightShiftStage0Idx1Rng16_uid753_i_shr17_114_gradient_gradient88_shift_x_b <= redist57_i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient_out_data_out_1_q(31 downto 16);

    -- rightShiftStage0Idx1_uid755_i_shr17_114_gradient_gradient88_shift_x(BITJOIN,754)@10
    rightShiftStage0Idx1_uid755_i_shr17_114_gradient_gradient88_shift_x_q <= i_mul22_118_add186_gradient_vt_const_31_q & rightShiftStage0Idx1Rng16_uid753_i_shr17_114_gradient_gradient88_shift_x_b;

    -- rightShiftStage0_uid757_i_shr17_114_gradient_gradient88_shift_x(MUX,756)@10
    rightShiftStage0_uid757_i_shr17_114_gradient_gradient88_shift_x_s <= VCC_q;
    rightShiftStage0_uid757_i_shr17_114_gradient_gradient88_shift_x_combproc: PROCESS (rightShiftStage0_uid757_i_shr17_114_gradient_gradient88_shift_x_s, redist57_i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient_out_data_out_1_q, rightShiftStage0Idx1_uid755_i_shr17_114_gradient_gradient88_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid757_i_shr17_114_gradient_gradient88_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid757_i_shr17_114_gradient_gradient88_shift_x_q <= redist57_i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient_out_data_out_1_q;
            WHEN "1" => rightShiftStage0_uid757_i_shr17_114_gradient_gradient88_shift_x_q <= rightShiftStage0Idx1_uid755_i_shr17_114_gradient_gradient88_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid757_i_shr17_114_gradient_gradient88_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr17_114_gradient_vt_select_15(BITSELECT,494)@10
    i_shr17_114_gradient_vt_select_15_b <= rightShiftStage0_uid757_i_shr17_114_gradient_gradient88_shift_x_q(15 downto 0);

    -- i_shr17_114_gradient_vt_join(BITJOIN,493)@10
    i_shr17_114_gradient_vt_join_q <= i_mul22_118_add186_gradient_vt_const_31_q & i_shr17_114_gradient_vt_select_15_b;

    -- i_mul22_118_masked_gradient_BitSelect_for_a(BITSELECT,1344)@10
    i_mul22_118_masked_gradient_BitSelect_for_a_b <= i_shr17_114_gradient_vt_join_q(7 downto 0);

    -- redist13_i_mul22_118_masked_gradient_BitSelect_for_a_b_1(DELAY,1432)
    redist13_i_mul22_118_masked_gradient_BitSelect_for_a_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul22_118_masked_gradient_BitSelect_for_a_b, xout => redist13_i_mul22_118_masked_gradient_BitSelect_for_a_b_1_q, clk => clock, aclr => resetn );

    -- i_mul22_118_masked_gradient_join(BITJOIN,1345)@11
    i_mul22_118_masked_gradient_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & redist13_i_mul22_118_masked_gradient_BitSelect_for_a_b_1_q;

    -- i_mul22_118_masked_gradient_vt_select_7(BITSELECT,340)@11
    i_mul22_118_masked_gradient_vt_select_7_b <= i_mul22_118_masked_gradient_join_q(7 downto 0);

    -- i_mul22_118_masked_gradient_vt_join(BITJOIN,339)@11
    i_mul22_118_masked_gradient_vt_join_q <= i_mul22_118_masked_gradient_vt_const_31_q & i_mul22_118_masked_gradient_vt_select_7_b;

    -- i_mul22_118_add186_gradient(ADD,333)@11
    i_mul22_118_add186_gradient_a <= STD_LOGIC_VECTOR("0" & i_mul22_118_masked_gradient_vt_join_q);
    i_mul22_118_add186_gradient_b <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient106_vt_join_q);
    i_mul22_118_add186_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul22_118_add186_gradient_a) + UNSIGNED(i_mul22_118_add186_gradient_b));
    i_mul22_118_add186_gradient_q <= i_mul22_118_add186_gradient_o(32 downto 0);

    -- bgTrunc_i_mul22_118_add186_gradient_sel_x(BITSELECT,9)@11
    bgTrunc_i_mul22_118_add186_gradient_sel_x_b <= i_mul22_118_add186_gradient_q(31 downto 0);

    -- i_mul22_118_add186_gradient_vt_select_15(BITSELECT,336)@11
    i_mul22_118_add186_gradient_vt_select_15_b <= bgTrunc_i_mul22_118_add186_gradient_sel_x_b(15 downto 0);

    -- redist49_i_mul22_118_add186_gradient_vt_select_15_b_1(DELAY,1468)
    redist49_i_mul22_118_add186_gradient_vt_select_15_b_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul22_118_add186_gradient_vt_select_15_b, xout => redist49_i_mul22_118_add186_gradient_vt_select_15_b_1_q, clk => clock, aclr => resetn );

    -- i_mul22_118_add186_gradient_vt_join(BITJOIN,335)@12
    i_mul22_118_add186_gradient_vt_join_q <= i_mul22_118_add186_gradient_vt_const_31_q & redist49_i_mul22_118_add186_gradient_vt_select_15_b_1_q;

    -- rightShiftStage1Idx1Rng4_uid918_i_unnamed_gradient100_shift_x(BITSELECT,917)@10
    rightShiftStage1Idx1Rng4_uid918_i_unnamed_gradient100_shift_x_b <= rightShiftStage0_uid757_i_shr17_114_gradient_gradient88_shift_x_q(31 downto 4);

    -- rightShiftStage1Idx1_uid920_i_unnamed_gradient100_shift_x(BITJOIN,919)@10
    rightShiftStage1Idx1_uid920_i_unnamed_gradient100_shift_x_q <= i_unnamed_gradient101_vt_const_3_q & rightShiftStage1Idx1Rng4_uid918_i_unnamed_gradient100_shift_x_b;

    -- rightShiftStage1_uid922_i_unnamed_gradient100_shift_x(MUX,921)@10
    rightShiftStage1_uid922_i_unnamed_gradient100_shift_x_s <= VCC_q;
    rightShiftStage1_uid922_i_unnamed_gradient100_shift_x_combproc: PROCESS (rightShiftStage1_uid922_i_unnamed_gradient100_shift_x_s, rightShiftStage0_uid757_i_shr17_114_gradient_gradient88_shift_x_q, rightShiftStage1Idx1_uid920_i_unnamed_gradient100_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid922_i_unnamed_gradient100_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid922_i_unnamed_gradient100_shift_x_q <= rightShiftStage0_uid757_i_shr17_114_gradient_gradient88_shift_x_q;
            WHEN "1" => rightShiftStage1_uid922_i_unnamed_gradient100_shift_x_q <= rightShiftStage1Idx1_uid920_i_unnamed_gradient100_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid922_i_unnamed_gradient100_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient99_vt_select_11(BITSELECT,746)@10
    i_unnamed_gradient99_vt_select_11_b <= rightShiftStage1_uid922_i_unnamed_gradient100_shift_x_q(11 downto 0);

    -- i_unnamed_gradient99_vt_join(BITJOIN,745)@10
    i_unnamed_gradient99_vt_join_q <= i_mul24_119_add688_gradient_vt_const_31_q & i_unnamed_gradient99_vt_select_11_b;

    -- i_unnamed_gradient101_BitSelect_for_a(BITSELECT,1354)@10
    i_unnamed_gradient101_BitSelect_for_a_b <= i_unnamed_gradient99_vt_join_q(11 downto 4);

    -- redist8_i_unnamed_gradient101_BitSelect_for_a_b_1(DELAY,1427)
    redist8_i_unnamed_gradient101_BitSelect_for_a_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_gradient101_BitSelect_for_a_b, xout => redist8_i_unnamed_gradient101_BitSelect_for_a_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_gradient101_join(BITJOIN,1355)@11
    i_unnamed_gradient101_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & redist8_i_unnamed_gradient101_BitSelect_for_a_b_1_q & GND_q & GND_q & GND_q & GND_q;

    -- i_unnamed_gradient101_vt_select_11(BITSELECT,541)@11
    i_unnamed_gradient101_vt_select_11_b <= i_unnamed_gradient101_join_q(11 downto 4);

    -- i_unnamed_gradient101_vt_join(BITJOIN,540)@11
    i_unnamed_gradient101_vt_join_q <= i_mul24_119_add688_gradient_vt_const_31_q & i_unnamed_gradient101_vt_select_11_b & i_unnamed_gradient101_vt_const_3_q;

    -- rightShiftStage2Idx1Rng1_uid1297_i_unnamed_gradient97_shift_x(BITSELECT,1296)@10
    rightShiftStage2Idx1Rng1_uid1297_i_unnamed_gradient97_shift_x_b <= rightShiftStage1_uid922_i_unnamed_gradient100_shift_x_q(31 downto 1);

    -- rightShiftStage2Idx1_uid1299_i_unnamed_gradient97_shift_x(BITJOIN,1298)@10
    rightShiftStage2Idx1_uid1299_i_unnamed_gradient97_shift_x_q <= GND_q & rightShiftStage2Idx1Rng1_uid1297_i_unnamed_gradient97_shift_x_b;

    -- rightShiftStage2_uid1301_i_unnamed_gradient97_shift_x(MUX,1300)@10
    rightShiftStage2_uid1301_i_unnamed_gradient97_shift_x_s <= VCC_q;
    rightShiftStage2_uid1301_i_unnamed_gradient97_shift_x_combproc: PROCESS (rightShiftStage2_uid1301_i_unnamed_gradient97_shift_x_s, rightShiftStage1_uid922_i_unnamed_gradient100_shift_x_q, rightShiftStage2Idx1_uid1299_i_unnamed_gradient97_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1301_i_unnamed_gradient97_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1301_i_unnamed_gradient97_shift_x_q <= rightShiftStage1_uid922_i_unnamed_gradient100_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1301_i_unnamed_gradient97_shift_x_q <= rightShiftStage2Idx1_uid1299_i_unnamed_gradient97_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1301_i_unnamed_gradient97_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient96_vt_select_10(BITSELECT,738)@10
    i_unnamed_gradient96_vt_select_10_b <= rightShiftStage2_uid1301_i_unnamed_gradient97_shift_x_q(10 downto 0);

    -- i_unnamed_gradient96_vt_join(BITJOIN,737)@10
    i_unnamed_gradient96_vt_join_q <= i_reduction_gradient_15_gradient_vt_const_31_q & i_unnamed_gradient96_vt_select_10_b;

    -- i_unnamed_gradient98_BitSelect_for_a(BITSELECT,1412)@10
    i_unnamed_gradient98_BitSelect_for_a_b <= i_unnamed_gradient96_vt_join_q(10 downto 3);

    -- i_unnamed_gradient98_join(BITJOIN,1413)@10
    i_unnamed_gradient98_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_unnamed_gradient98_BitSelect_for_a_b & GND_q & GND_q & GND_q;

    -- i_unnamed_gradient98_vt_select_10(BITSELECT,743)@10
    i_unnamed_gradient98_vt_select_10_b <= i_unnamed_gradient98_join_q(10 downto 3);

    -- i_unnamed_gradient98_vt_join(BITJOIN,742)@10
    i_unnamed_gradient98_vt_join_q <= i_reduction_gradient_15_gradient_vt_const_31_q & i_unnamed_gradient98_vt_select_10_b & i_unnamed_gradient109_vt_const_2_q;

    -- rightShiftStage1Idx1Rng8_uid803_i_shr19_116_gradient_gradient89_shift_x(BITSELECT,802)@10
    rightShiftStage1Idx1Rng8_uid803_i_shr19_116_gradient_gradient89_shift_x_b <= rightShiftStage0_uid757_i_shr17_114_gradient_gradient88_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid805_i_shr19_116_gradient_gradient89_shift_x(BITJOIN,804)@10
    rightShiftStage1Idx1_uid805_i_shr19_116_gradient_gradient89_shift_x_q <= i_unnamed_gradient172_vt_const_7_q & rightShiftStage1Idx1Rng8_uid803_i_shr19_116_gradient_gradient89_shift_x_b;

    -- rightShiftStage1_uid807_i_shr19_116_gradient_gradient89_shift_x(MUX,806)@10
    rightShiftStage1_uid807_i_shr19_116_gradient_gradient89_shift_x_s <= VCC_q;
    rightShiftStage1_uid807_i_shr19_116_gradient_gradient89_shift_x_combproc: PROCESS (rightShiftStage1_uid807_i_shr19_116_gradient_gradient89_shift_x_s, rightShiftStage0_uid757_i_shr17_114_gradient_gradient88_shift_x_q, rightShiftStage1Idx1_uid805_i_shr19_116_gradient_gradient89_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid807_i_shr19_116_gradient_gradient89_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid807_i_shr19_116_gradient_gradient89_shift_x_q <= rightShiftStage0_uid757_i_shr17_114_gradient_gradient88_shift_x_q;
            WHEN "1" => rightShiftStage1_uid807_i_shr19_116_gradient_gradient89_shift_x_q <= rightShiftStage1Idx1_uid805_i_shr19_116_gradient_gradient89_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid807_i_shr19_116_gradient_gradient89_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr19_116_gradient_vt_select_7(BITSELECT,509)@10
    i_shr19_116_gradient_vt_select_7_b <= rightShiftStage1_uid807_i_shr19_116_gradient_gradient89_shift_x_q(7 downto 0);

    -- i_shr19_116_gradient_vt_join(BITJOIN,508)@10
    i_shr19_116_gradient_vt_join_q <= i_mul22_118_masked_gradient_vt_const_31_q & i_shr19_116_gradient_vt_select_7_b;

    -- i_mul24_119_add688_gradient(ADD,373)@10
    i_mul24_119_add688_gradient_a <= STD_LOGIC_VECTOR("0" & i_shr19_116_gradient_vt_join_q);
    i_mul24_119_add688_gradient_b <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient98_vt_join_q);
    i_mul24_119_add688_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul24_119_add688_gradient_a) + UNSIGNED(i_mul24_119_add688_gradient_b));
    i_mul24_119_add688_gradient_q <= i_mul24_119_add688_gradient_o(32 downto 0);

    -- bgTrunc_i_mul24_119_add688_gradient_sel_x(BITSELECT,14)@10
    bgTrunc_i_mul24_119_add688_gradient_sel_x_b <= i_mul24_119_add688_gradient_q(31 downto 0);

    -- i_mul24_119_add688_gradient_vt_select_11(BITSELECT,376)@10
    i_mul24_119_add688_gradient_vt_select_11_b <= bgTrunc_i_mul24_119_add688_gradient_sel_x_b(11 downto 0);

    -- redist44_i_mul24_119_add688_gradient_vt_select_11_b_1(DELAY,1463)
    redist44_i_mul24_119_add688_gradient_vt_select_11_b_1 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul24_119_add688_gradient_vt_select_11_b, xout => redist44_i_mul24_119_add688_gradient_vt_select_11_b_1_q, clk => clock, aclr => resetn );

    -- i_mul24_119_add688_gradient_vt_join(BITJOIN,375)@11
    i_mul24_119_add688_gradient_vt_join_q <= i_mul24_119_add688_gradient_vt_const_31_q & redist44_i_mul24_119_add688_gradient_vt_select_11_b_1_q;

    -- i_mul24_119_add744_gradient(ADD,377)@11
    i_mul24_119_add744_gradient_a <= STD_LOGIC_VECTOR("0" & i_mul24_119_add688_gradient_vt_join_q);
    i_mul24_119_add744_gradient_b <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient101_vt_join_q);
    i_mul24_119_add744_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul24_119_add744_gradient_a) + UNSIGNED(i_mul24_119_add744_gradient_b));
    i_mul24_119_add744_gradient_q <= i_mul24_119_add744_gradient_o(32 downto 0);

    -- bgTrunc_i_mul24_119_add744_gradient_sel_x(BITSELECT,15)@11
    bgTrunc_i_mul24_119_add744_gradient_sel_x_b <= i_mul24_119_add744_gradient_q(31 downto 0);

    -- i_mul24_119_add744_gradient_vt_select_12(BITSELECT,380)@11
    i_mul24_119_add744_gradient_vt_select_12_b <= bgTrunc_i_mul24_119_add744_gradient_sel_x_b(12 downto 0);

    -- redist43_i_mul24_119_add744_gradient_vt_select_12_b_1(DELAY,1462)
    redist43_i_mul24_119_add744_gradient_vt_select_12_b_1 : dspba_delay
    GENERIC MAP ( width => 13, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul24_119_add744_gradient_vt_select_12_b, xout => redist43_i_mul24_119_add744_gradient_vt_select_12_b_1_q, clk => clock, aclr => resetn );

    -- i_mul24_119_add744_gradient_vt_join(BITJOIN,379)@12
    i_mul24_119_add744_gradient_vt_join_q <= i_mul24_119_add744_gradient_vt_const_31_q & redist43_i_mul24_119_add744_gradient_vt_select_12_b_1_q;

    -- i_reduction_gradient_3_gradient(ADD,462)@12
    i_reduction_gradient_3_gradient_a <= STD_LOGIC_VECTOR("0" & i_mul24_119_add744_gradient_vt_join_q);
    i_reduction_gradient_3_gradient_b <= STD_LOGIC_VECTOR("0" & i_mul22_118_add186_gradient_vt_join_q);
    i_reduction_gradient_3_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_gradient_3_gradient_a) + UNSIGNED(i_reduction_gradient_3_gradient_b));
    i_reduction_gradient_3_gradient_q <= i_reduction_gradient_3_gradient_o(32 downto 0);

    -- bgTrunc_i_reduction_gradient_3_gradient_sel_x(BITSELECT,36)@12
    bgTrunc_i_reduction_gradient_3_gradient_sel_x_b <= i_reduction_gradient_3_gradient_q(31 downto 0);

    -- i_reduction_gradient_3_gradient_vt_select_16(BITSELECT,465)@12
    i_reduction_gradient_3_gradient_vt_select_16_b <= bgTrunc_i_reduction_gradient_3_gradient_sel_x_b(16 downto 0);

    -- redist26_i_reduction_gradient_3_gradient_vt_select_16_b_1(DELAY,1445)
    redist26_i_reduction_gradient_3_gradient_vt_select_16_b_1 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_gradient_3_gradient_vt_select_16_b, xout => redist26_i_reduction_gradient_3_gradient_vt_select_16_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_gradient_3_gradient_vt_join(BITJOIN,464)@13
    i_reduction_gradient_3_gradient_vt_join_q <= i_reduction_gradient_0_gradient_vt_const_31_q & redist26_i_reduction_gradient_3_gradient_vt_select_16_b_1_q;

    -- i_reduction_gradient_5_gradient(ADD,471)@13
    i_reduction_gradient_5_gradient_a <= STD_LOGIC_VECTOR("0" & i_reduction_gradient_3_gradient_vt_join_q);
    i_reduction_gradient_5_gradient_b <= STD_LOGIC_VECTOR("0" & i_reduction_gradient_4_gradient_vt_join_q);
    i_reduction_gradient_5_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_gradient_5_gradient_a) + UNSIGNED(i_reduction_gradient_5_gradient_b));
    i_reduction_gradient_5_gradient_q <= i_reduction_gradient_5_gradient_o(32 downto 0);

    -- bgTrunc_i_reduction_gradient_5_gradient_sel_x(BITSELECT,38)@13
    bgTrunc_i_reduction_gradient_5_gradient_sel_x_b <= i_reduction_gradient_5_gradient_q(31 downto 0);

    -- i_reduction_gradient_5_gradient_vt_select_17(BITSELECT,474)@13
    i_reduction_gradient_5_gradient_vt_select_17_b <= bgTrunc_i_reduction_gradient_5_gradient_sel_x_b(17 downto 0);

    -- i_reduction_gradient_5_gradient_vt_join(BITJOIN,473)@13
    i_reduction_gradient_5_gradient_vt_join_q <= i_reduction_gradient_11_gradient_vt_const_31_q & i_reduction_gradient_5_gradient_vt_select_17_b;

    -- rightShiftStage0_uid872_i_shr27_123_gradient_gradient152_shift_x(MUX,871)@13
    rightShiftStage0_uid872_i_shr27_123_gradient_gradient152_shift_x_s <= VCC_q;
    rightShiftStage0_uid872_i_shr27_123_gradient_gradient152_shift_x_combproc: PROCESS (rightShiftStage0_uid872_i_shr27_123_gradient_gradient152_shift_x_s, i_reduction_gradient_5_gradient_vt_join_q, rightShiftStage0Idx1_uid870_i_shr27_123_gradient_gradient152_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid872_i_shr27_123_gradient_gradient152_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid872_i_shr27_123_gradient_gradient152_shift_x_q <= i_reduction_gradient_5_gradient_vt_join_q;
            WHEN "1" => rightShiftStage0_uid872_i_shr27_123_gradient_gradient152_shift_x_q <= rightShiftStage0Idx1_uid870_i_shr27_123_gradient_gradient152_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid872_i_shr27_123_gradient_gradient152_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr27_123_gradient_vt_select_9(BITSELECT,524)@13
    i_shr27_123_gradient_vt_select_9_b <= rightShiftStage0_uid872_i_shr27_123_gradient_gradient152_shift_x_q(9 downto 0);

    -- redist21_i_shr27_123_gradient_vt_select_9_b_1(DELAY,1440)
    redist21_i_shr27_123_gradient_vt_select_9_b_1 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_shr27_123_gradient_vt_select_9_b, xout => redist21_i_shr27_123_gradient_vt_select_9_b_1_q, clk => clock, aclr => resetn );

    -- i_shr27_123_gradient_vt_join(BITJOIN,523)@14
    i_shr27_123_gradient_vt_join_q <= i_unnamed_gradient170_multconst_x_q & redist21_i_shr27_123_gradient_vt_select_9_b_1_q;

    -- i_reduction_gradient_16_gradient(ADD,444)@14
    i_reduction_gradient_16_gradient_a <= STD_LOGIC_VECTOR("0" & i_shr27_123_gradient_vt_join_q);
    i_reduction_gradient_16_gradient_b <= STD_LOGIC_VECTOR("0" & i_shr27_1_gradient_vt_join_q);
    i_reduction_gradient_16_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_gradient_16_gradient_a) + UNSIGNED(i_reduction_gradient_16_gradient_b));
    i_reduction_gradient_16_gradient_q <= i_reduction_gradient_16_gradient_o(32 downto 0);

    -- bgTrunc_i_reduction_gradient_16_gradient_sel_x(BITSELECT,31)@14
    bgTrunc_i_reduction_gradient_16_gradient_sel_x_b <= i_reduction_gradient_16_gradient_q(31 downto 0);

    -- i_reduction_gradient_16_gradient_vt_select_10(BITSELECT,447)@14
    i_reduction_gradient_16_gradient_vt_select_10_b <= bgTrunc_i_reduction_gradient_16_gradient_sel_x_b(10 downto 0);

    -- redist29_i_reduction_gradient_16_gradient_vt_select_10_b_1(DELAY,1448)
    redist29_i_reduction_gradient_16_gradient_vt_select_10_b_1 : dspba_delay
    GENERIC MAP ( width => 11, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_gradient_16_gradient_vt_select_10_b, xout => redist29_i_reduction_gradient_16_gradient_vt_select_10_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_gradient_16_gradient_vt_join(BITJOIN,446)@15
    i_reduction_gradient_16_gradient_vt_join_q <= i_reduction_gradient_15_gradient_vt_const_31_q & redist29_i_reduction_gradient_16_gradient_vt_select_10_b_1_q;

    -- rightShiftStage0Idx1Rng8_uid904_i_shr27_2_1_gradient_gradient169_shift_x(BITSELECT,903)@13
    rightShiftStage0Idx1Rng8_uid904_i_shr27_2_1_gradient_gradient169_shift_x_b <= i_reduction_gradient_11_gradient_vt_join_q(31 downto 8);

    -- rightShiftStage0Idx1_uid906_i_shr27_2_1_gradient_gradient169_shift_x(BITJOIN,905)@13
    rightShiftStage0Idx1_uid906_i_shr27_2_1_gradient_gradient169_shift_x_q <= i_unnamed_gradient172_vt_const_7_q & rightShiftStage0Idx1Rng8_uid904_i_shr27_2_1_gradient_gradient169_shift_x_b;

    -- rightShiftStage0Idx1Rng2_uid1143_i_unnamed_gradient157_shift_x(BITSELECT,1142)@10
    rightShiftStage0Idx1Rng2_uid1143_i_unnamed_gradient157_shift_x_b <= redist55_i_acl_pop_i32_rows_299_0_pop5_gradient_out_data_out_1_q(31 downto 2);

    -- rightShiftStage0Idx1_uid1145_i_unnamed_gradient157_shift_x(BITJOIN,1144)@10
    rightShiftStage0Idx1_uid1145_i_unnamed_gradient157_shift_x_q <= i_unnamed_gradient119_vt_const_31_q & rightShiftStage0Idx1Rng2_uid1143_i_unnamed_gradient157_shift_x_b;

    -- i_acl_push_i32_rows_298_0_push6_gradient(BLACKBOX,304)@9
    -- out out_feedback_out_6@20000000
    -- out out_feedback_valid_out_6@20000000
    thei_acl_push_i32_rows_298_0_push6_gradient : i_acl_push_i32_rows_298_0_push6_gradient71
    PORT MAP (
        in_c1_ene3 => in_c1_eni5_3,
        in_data_in => i_acl_pop_i32_rows_297_0_coalesced_pop4_gradient_out_data_out,
        in_feedback_stall_in_6 => i_acl_pop_i32_rows_298_0_pop6_gradient_out_feedback_stall_out_6,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_6 => i_acl_push_i32_rows_298_0_push6_gradient_out_feedback_out_6,
        out_feedback_valid_out_6 => i_acl_push_i32_rows_298_0_push6_gradient_out_feedback_valid_out_6,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_rows_298_0_pop6_gradient(BLACKBOX,297)@9
    -- out out_feedback_stall_out_6@20000000
    thei_acl_pop_i32_rows_298_0_pop6_gradient : i_acl_pop_i32_rows_298_0_pop6_gradient69
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => in_c1_eni5_2,
        in_feedback_in_6 => i_acl_push_i32_rows_298_0_push6_gradient_out_feedback_out_6,
        in_feedback_valid_in_6 => i_acl_push_i32_rows_298_0_push6_gradient_out_feedback_valid_out_6,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_rows_298_0_pop6_gradient_out_data_out,
        out_feedback_stall_out_6 => i_acl_pop_i32_rows_298_0_pop6_gradient_out_feedback_stall_out_6,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i32_rows_299_0_push5_gradient(BLACKBOX,305)@9
    -- out out_feedback_out_5@20000000
    -- out out_feedback_valid_out_5@20000000
    thei_acl_push_i32_rows_299_0_push5_gradient : i_acl_push_i32_rows_299_0_push5_gradient73
    PORT MAP (
        in_c1_ene3 => in_c1_eni5_3,
        in_data_in => i_acl_pop_i32_rows_298_0_pop6_gradient_out_data_out,
        in_feedback_stall_in_5 => i_acl_pop_i32_rows_299_0_pop5_gradient_out_feedback_stall_out_5,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_5 => i_acl_push_i32_rows_299_0_push5_gradient_out_feedback_out_5,
        out_feedback_valid_out_5 => i_acl_push_i32_rows_299_0_push5_gradient_out_feedback_valid_out_5,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_rows_299_0_pop5_gradient(BLACKBOX,298)@9
    -- out out_feedback_stall_out_5@20000000
    thei_acl_pop_i32_rows_299_0_pop5_gradient : i_acl_pop_i32_rows_299_0_pop5_gradient61
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => in_c1_eni5_2,
        in_feedback_in_5 => i_acl_push_i32_rows_299_0_push5_gradient_out_feedback_out_5,
        in_feedback_valid_in_5 => i_acl_push_i32_rows_299_0_push5_gradient_out_feedback_valid_out_5,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_rows_299_0_pop5_gradient_out_data_out,
        out_feedback_stall_out_5 => i_acl_pop_i32_rows_299_0_pop5_gradient_out_feedback_stall_out_5,
        clock => clock,
        resetn => resetn
    );

    -- redist55_i_acl_pop_i32_rows_299_0_pop5_gradient_out_data_out_1(DELAY,1474)
    redist55_i_acl_pop_i32_rows_299_0_pop5_gradient_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_rows_299_0_pop5_gradient_out_data_out, xout => redist55_i_acl_pop_i32_rows_299_0_pop5_gradient_out_data_out_1_q, clk => clock, aclr => resetn );

    -- rightShiftStage0_uid1147_i_unnamed_gradient157_shift_x(MUX,1146)@10
    rightShiftStage0_uid1147_i_unnamed_gradient157_shift_x_s <= VCC_q;
    rightShiftStage0_uid1147_i_unnamed_gradient157_shift_x_combproc: PROCESS (rightShiftStage0_uid1147_i_unnamed_gradient157_shift_x_s, redist55_i_acl_pop_i32_rows_299_0_pop5_gradient_out_data_out_1_q, rightShiftStage0Idx1_uid1145_i_unnamed_gradient157_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1147_i_unnamed_gradient157_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1147_i_unnamed_gradient157_shift_x_q <= redist55_i_acl_pop_i32_rows_299_0_pop5_gradient_out_data_out_1_q;
            WHEN "1" => rightShiftStage0_uid1147_i_unnamed_gradient157_shift_x_q <= rightShiftStage0Idx1_uid1145_i_unnamed_gradient157_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1147_i_unnamed_gradient157_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient156_vt_select_29(BITSELECT,656)@10
    i_unnamed_gradient156_vt_select_29_b <= rightShiftStage0_uid1147_i_unnamed_gradient157_shift_x_q(29 downto 0);

    -- i_unnamed_gradient156_vt_join(BITJOIN,655)@10
    i_unnamed_gradient156_vt_join_q <= i_unnamed_gradient119_vt_const_31_q & i_unnamed_gradient156_vt_select_29_b;

    -- i_unnamed_gradient158_BitSelect_for_a(BITSELECT,1384)@10
    i_unnamed_gradient158_BitSelect_for_a_b <= i_unnamed_gradient156_vt_join_q(13 downto 6);

    -- i_unnamed_gradient158_join(BITJOIN,1385)@10
    i_unnamed_gradient158_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_unnamed_gradient158_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_unnamed_gradient158_vt_select_13(BITSELECT,661)@10
    i_unnamed_gradient158_vt_select_13_b <= i_unnamed_gradient158_join_q(13 downto 6);

    -- i_unnamed_gradient158_vt_join(BITJOIN,660)@10
    i_unnamed_gradient158_vt_join_q <= i_unnamed_gradient121_vt_const_31_q & i_unnamed_gradient158_vt_select_13_b & i_unnamed_gradient121_vt_const_5_q;

    -- rightShiftStage2Idx1Rng1_uid1134_i_unnamed_gradient154_shift_x(BITSELECT,1133)@10
    rightShiftStage2Idx1Rng1_uid1134_i_unnamed_gradient154_shift_x_b <= rightShiftStage1_uid1133_i_unnamed_gradient154_shift_x_q(31 downto 1);

    -- rightShiftStage2Idx1_uid1136_i_unnamed_gradient154_shift_x(BITJOIN,1135)@10
    rightShiftStage2Idx1_uid1136_i_unnamed_gradient154_shift_x_q <= GND_q & rightShiftStage2Idx1Rng1_uid1134_i_unnamed_gradient154_shift_x_b;

    -- rightShiftStage1Idx1Rng2_uid1129_i_unnamed_gradient154_shift_x(BITSELECT,1128)@10
    rightShiftStage1Idx1Rng2_uid1129_i_unnamed_gradient154_shift_x_b <= rightShiftStage0_uid1128_i_unnamed_gradient154_shift_x_q(31 downto 2);

    -- rightShiftStage1Idx1_uid1131_i_unnamed_gradient154_shift_x(BITJOIN,1130)@10
    rightShiftStage1Idx1_uid1131_i_unnamed_gradient154_shift_x_q <= i_unnamed_gradient119_vt_const_31_q & rightShiftStage1Idx1Rng2_uid1129_i_unnamed_gradient154_shift_x_b;

    -- rightShiftStage0Idx1Rng4_uid1124_i_unnamed_gradient154_shift_x(BITSELECT,1123)@10
    rightShiftStage0Idx1Rng4_uid1124_i_unnamed_gradient154_shift_x_b <= redist55_i_acl_pop_i32_rows_299_0_pop5_gradient_out_data_out_1_q(31 downto 4);

    -- rightShiftStage0Idx1_uid1126_i_unnamed_gradient154_shift_x(BITJOIN,1125)@10
    rightShiftStage0Idx1_uid1126_i_unnamed_gradient154_shift_x_q <= i_unnamed_gradient101_vt_const_3_q & rightShiftStage0Idx1Rng4_uid1124_i_unnamed_gradient154_shift_x_b;

    -- rightShiftStage0_uid1128_i_unnamed_gradient154_shift_x(MUX,1127)@10
    rightShiftStage0_uid1128_i_unnamed_gradient154_shift_x_s <= VCC_q;
    rightShiftStage0_uid1128_i_unnamed_gradient154_shift_x_combproc: PROCESS (rightShiftStage0_uid1128_i_unnamed_gradient154_shift_x_s, redist55_i_acl_pop_i32_rows_299_0_pop5_gradient_out_data_out_1_q, rightShiftStage0Idx1_uid1126_i_unnamed_gradient154_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1128_i_unnamed_gradient154_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1128_i_unnamed_gradient154_shift_x_q <= redist55_i_acl_pop_i32_rows_299_0_pop5_gradient_out_data_out_1_q;
            WHEN "1" => rightShiftStage0_uid1128_i_unnamed_gradient154_shift_x_q <= rightShiftStage0Idx1_uid1126_i_unnamed_gradient154_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1128_i_unnamed_gradient154_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1133_i_unnamed_gradient154_shift_x(MUX,1132)@10
    rightShiftStage1_uid1133_i_unnamed_gradient154_shift_x_s <= VCC_q;
    rightShiftStage1_uid1133_i_unnamed_gradient154_shift_x_combproc: PROCESS (rightShiftStage1_uid1133_i_unnamed_gradient154_shift_x_s, rightShiftStage0_uid1128_i_unnamed_gradient154_shift_x_q, rightShiftStage1Idx1_uid1131_i_unnamed_gradient154_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1133_i_unnamed_gradient154_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1133_i_unnamed_gradient154_shift_x_q <= rightShiftStage0_uid1128_i_unnamed_gradient154_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1133_i_unnamed_gradient154_shift_x_q <= rightShiftStage1Idx1_uid1131_i_unnamed_gradient154_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1133_i_unnamed_gradient154_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1138_i_unnamed_gradient154_shift_x(MUX,1137)@10
    rightShiftStage2_uid1138_i_unnamed_gradient154_shift_x_s <= VCC_q;
    rightShiftStage2_uid1138_i_unnamed_gradient154_shift_x_combproc: PROCESS (rightShiftStage2_uid1138_i_unnamed_gradient154_shift_x_s, rightShiftStage1_uid1133_i_unnamed_gradient154_shift_x_q, rightShiftStage2Idx1_uid1136_i_unnamed_gradient154_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1138_i_unnamed_gradient154_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1138_i_unnamed_gradient154_shift_x_q <= rightShiftStage1_uid1133_i_unnamed_gradient154_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1138_i_unnamed_gradient154_shift_x_q <= rightShiftStage2Idx1_uid1136_i_unnamed_gradient154_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1138_i_unnamed_gradient154_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient153_vt_select_24(BITSELECT,648)@10
    i_unnamed_gradient153_vt_select_24_b <= rightShiftStage2_uid1138_i_unnamed_gradient154_shift_x_q(24 downto 0);

    -- i_unnamed_gradient153_vt_join(BITJOIN,647)@10
    i_unnamed_gradient153_vt_join_q <= i_unnamed_gradient106_vt_const_6_q & i_unnamed_gradient153_vt_select_24_b;

    -- i_unnamed_gradient155_BitSelect_for_a(BITSELECT,1382)@10
    i_unnamed_gradient155_BitSelect_for_a_b <= i_unnamed_gradient153_vt_join_q(8 downto 1);

    -- i_unnamed_gradient155_join(BITJOIN,1383)@10
    i_unnamed_gradient155_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_unnamed_gradient155_BitSelect_for_a_b & GND_q;

    -- i_unnamed_gradient155_vt_select_8(BITSELECT,653)@10
    i_unnamed_gradient155_vt_select_8_b <= i_unnamed_gradient155_join_q(8 downto 1);

    -- i_unnamed_gradient155_vt_join(BITJOIN,652)@10
    i_unnamed_gradient155_vt_join_q <= i_unnamed_gradient118_vt_const_31_q & i_unnamed_gradient155_vt_select_8_b & GND_q;

    -- i_mul21_2_1_add496_gradient(ADD,328)@10
    i_mul21_2_1_add496_gradient_a <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient155_vt_join_q);
    i_mul21_2_1_add496_gradient_b <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient158_vt_join_q);
    i_mul21_2_1_add496_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul21_2_1_add496_gradient_a) + UNSIGNED(i_mul21_2_1_add496_gradient_b));
    i_mul21_2_1_add496_gradient_q <= i_mul21_2_1_add496_gradient_o(32 downto 0);

    -- bgTrunc_i_mul21_2_1_add496_gradient_sel_x(BITSELECT,8)@10
    bgTrunc_i_mul21_2_1_add496_gradient_sel_x_b <= i_mul21_2_1_add496_gradient_q(31 downto 0);

    -- i_mul21_2_1_add496_gradient_vt_select_14(BITSELECT,332)@10
    i_mul21_2_1_add496_gradient_vt_select_14_b <= bgTrunc_i_mul21_2_1_add496_gradient_sel_x_b(14 downto 1);

    -- redist50_i_mul21_2_1_add496_gradient_vt_select_14_b_2(DELAY,1469)
    redist50_i_mul21_2_1_add496_gradient_vt_select_14_b_2 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul21_2_1_add496_gradient_vt_select_14_b, xout => redist50_i_mul21_2_1_add496_gradient_vt_select_14_b_2_q, clk => clock, aclr => resetn );

    -- i_mul21_2_1_add496_gradient_vt_join(BITJOIN,331)@12
    i_mul21_2_1_add496_gradient_vt_join_q <= i_mul21_117_add248_gradient_vt_const_31_q & redist50_i_mul21_2_1_add496_gradient_vt_select_14_b_2_q & GND_q;

    -- i_reduction_gradient_10_gradient(ADD,418)@12
    i_reduction_gradient_10_gradient_a <= STD_LOGIC_VECTOR("0" & i_mul21_2_1_add496_gradient_vt_join_q);
    i_reduction_gradient_10_gradient_b <= STD_LOGIC_VECTOR("0" & c_i32_128_q);
    i_reduction_gradient_10_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_gradient_10_gradient_a) + UNSIGNED(i_reduction_gradient_10_gradient_b));
    i_reduction_gradient_10_gradient_q <= i_reduction_gradient_10_gradient_o(32 downto 0);

    -- bgTrunc_i_reduction_gradient_10_gradient_sel_x(BITSELECT,25)@12
    bgTrunc_i_reduction_gradient_10_gradient_sel_x_b <= i_reduction_gradient_10_gradient_q(31 downto 0);

    -- i_reduction_gradient_10_gradient_vt_select_15(BITSELECT,422)@12
    i_reduction_gradient_10_gradient_vt_select_15_b <= bgTrunc_i_reduction_gradient_10_gradient_sel_x_b(15 downto 1);

    -- redist33_i_reduction_gradient_10_gradient_vt_select_15_b_1(DELAY,1452)
    redist33_i_reduction_gradient_10_gradient_vt_select_15_b_1 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_gradient_10_gradient_vt_select_15_b, xout => redist33_i_reduction_gradient_10_gradient_vt_select_15_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_gradient_10_gradient_vt_join(BITJOIN,421)@13
    i_reduction_gradient_10_gradient_vt_join_q <= i_mul22_118_add186_gradient_vt_const_31_q & redist33_i_reduction_gradient_10_gradient_vt_select_15_b_1_q & GND_q;

    -- rightShiftStage1Idx1Rng1_uid1082_i_unnamed_gradient144_shift_x(BITSELECT,1081)@10
    rightShiftStage1Idx1Rng1_uid1082_i_unnamed_gradient144_shift_x_b <= rightShiftStage0_uid1081_i_unnamed_gradient144_shift_x_q(31 downto 1);

    -- rightShiftStage1Idx1_uid1084_i_unnamed_gradient144_shift_x(BITJOIN,1083)@10
    rightShiftStage1Idx1_uid1084_i_unnamed_gradient144_shift_x_q <= GND_q & rightShiftStage1Idx1Rng1_uid1082_i_unnamed_gradient144_shift_x_b;

    -- rightShiftStage0Idx1Rng8_uid1077_i_unnamed_gradient144_shift_x(BITSELECT,1076)@10
    rightShiftStage0Idx1Rng8_uid1077_i_unnamed_gradient144_shift_x_b <= redist55_i_acl_pop_i32_rows_299_0_pop5_gradient_out_data_out_1_q(31 downto 8);

    -- rightShiftStage0Idx1_uid1079_i_unnamed_gradient144_shift_x(BITJOIN,1078)@10
    rightShiftStage0Idx1_uid1079_i_unnamed_gradient144_shift_x_q <= i_unnamed_gradient172_vt_const_7_q & rightShiftStage0Idx1Rng8_uid1077_i_unnamed_gradient144_shift_x_b;

    -- rightShiftStage0_uid1081_i_unnamed_gradient144_shift_x(MUX,1080)@10
    rightShiftStage0_uid1081_i_unnamed_gradient144_shift_x_s <= VCC_q;
    rightShiftStage0_uid1081_i_unnamed_gradient144_shift_x_combproc: PROCESS (rightShiftStage0_uid1081_i_unnamed_gradient144_shift_x_s, redist55_i_acl_pop_i32_rows_299_0_pop5_gradient_out_data_out_1_q, rightShiftStage0Idx1_uid1079_i_unnamed_gradient144_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1081_i_unnamed_gradient144_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1081_i_unnamed_gradient144_shift_x_q <= redist55_i_acl_pop_i32_rows_299_0_pop5_gradient_out_data_out_1_q;
            WHEN "1" => rightShiftStage0_uid1081_i_unnamed_gradient144_shift_x_q <= rightShiftStage0Idx1_uid1079_i_unnamed_gradient144_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1081_i_unnamed_gradient144_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1086_i_unnamed_gradient144_shift_x(MUX,1085)@10
    rightShiftStage1_uid1086_i_unnamed_gradient144_shift_x_s <= VCC_q;
    rightShiftStage1_uid1086_i_unnamed_gradient144_shift_x_combproc: PROCESS (rightShiftStage1_uid1086_i_unnamed_gradient144_shift_x_s, rightShiftStage0_uid1081_i_unnamed_gradient144_shift_x_q, rightShiftStage1Idx1_uid1084_i_unnamed_gradient144_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1086_i_unnamed_gradient144_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1086_i_unnamed_gradient144_shift_x_q <= rightShiftStage0_uid1081_i_unnamed_gradient144_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1086_i_unnamed_gradient144_shift_x_q <= rightShiftStage1Idx1_uid1084_i_unnamed_gradient144_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1086_i_unnamed_gradient144_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient143_vt_select_22(BITSELECT,624)@10
    i_unnamed_gradient143_vt_select_22_b <= rightShiftStage1_uid1086_i_unnamed_gradient144_shift_x_q(22 downto 0);

    -- i_unnamed_gradient143_vt_join(BITJOIN,623)@10
    i_unnamed_gradient143_vt_join_q <= i_unnamed_gradient104_vt_const_31_q & i_unnamed_gradient143_vt_select_22_b;

    -- i_unnamed_gradient145_BitSelect_for_a(BITSELECT,1376)@10
    i_unnamed_gradient145_BitSelect_for_a_b <= i_unnamed_gradient143_vt_join_q(14 downto 7);

    -- redist4_i_unnamed_gradient145_BitSelect_for_a_b_1(DELAY,1423)
    redist4_i_unnamed_gradient145_BitSelect_for_a_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_gradient145_BitSelect_for_a_b, xout => redist4_i_unnamed_gradient145_BitSelect_for_a_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_gradient145_join(BITJOIN,1377)@11
    i_unnamed_gradient145_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & redist4_i_unnamed_gradient145_BitSelect_for_a_b_1_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_unnamed_gradient145_vt_select_14(BITSELECT,629)@11
    i_unnamed_gradient145_vt_select_14_b <= i_unnamed_gradient145_join_q(14 downto 7);

    -- i_unnamed_gradient145_vt_join(BITJOIN,628)@11
    i_unnamed_gradient145_vt_join_q <= i_mul21_117_add248_gradient_vt_const_31_q & i_unnamed_gradient145_vt_select_14_b & i_unnamed_gradient106_vt_const_6_q;

    -- rightShiftStage0Idx1Rng16_uid789_i_shr17_2_1_gradient_gradient113_shift_x(BITSELECT,788)@10
    rightShiftStage0Idx1Rng16_uid789_i_shr17_2_1_gradient_gradient113_shift_x_b <= redist55_i_acl_pop_i32_rows_299_0_pop5_gradient_out_data_out_1_q(31 downto 16);

    -- rightShiftStage0Idx1_uid791_i_shr17_2_1_gradient_gradient113_shift_x(BITJOIN,790)@10
    rightShiftStage0Idx1_uid791_i_shr17_2_1_gradient_gradient113_shift_x_q <= i_mul22_118_add186_gradient_vt_const_31_q & rightShiftStage0Idx1Rng16_uid789_i_shr17_2_1_gradient_gradient113_shift_x_b;

    -- rightShiftStage0_uid793_i_shr17_2_1_gradient_gradient113_shift_x(MUX,792)@10
    rightShiftStage0_uid793_i_shr17_2_1_gradient_gradient113_shift_x_s <= VCC_q;
    rightShiftStage0_uid793_i_shr17_2_1_gradient_gradient113_shift_x_combproc: PROCESS (rightShiftStage0_uid793_i_shr17_2_1_gradient_gradient113_shift_x_s, redist55_i_acl_pop_i32_rows_299_0_pop5_gradient_out_data_out_1_q, rightShiftStage0Idx1_uid791_i_shr17_2_1_gradient_gradient113_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid793_i_shr17_2_1_gradient_gradient113_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid793_i_shr17_2_1_gradient_gradient113_shift_x_q <= redist55_i_acl_pop_i32_rows_299_0_pop5_gradient_out_data_out_1_q;
            WHEN "1" => rightShiftStage0_uid793_i_shr17_2_1_gradient_gradient113_shift_x_q <= rightShiftStage0Idx1_uid791_i_shr17_2_1_gradient_gradient113_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid793_i_shr17_2_1_gradient_gradient113_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr17_2_1_gradient_vt_select_15(BITSELECT,506)@10
    i_shr17_2_1_gradient_vt_select_15_b <= rightShiftStage0_uid793_i_shr17_2_1_gradient_gradient113_shift_x_q(15 downto 0);

    -- i_shr17_2_1_gradient_vt_join(BITJOIN,505)@10
    i_shr17_2_1_gradient_vt_join_q <= i_mul22_118_add186_gradient_vt_const_31_q & i_shr17_2_1_gradient_vt_select_15_b;

    -- i_mul22_2_1_masked_gradient_BitSelect_for_a(BITSELECT,1352)@10
    i_mul22_2_1_masked_gradient_BitSelect_for_a_b <= i_shr17_2_1_gradient_vt_join_q(7 downto 0);

    -- redist9_i_mul22_2_1_masked_gradient_BitSelect_for_a_b_1(DELAY,1428)
    redist9_i_mul22_2_1_masked_gradient_BitSelect_for_a_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul22_2_1_masked_gradient_BitSelect_for_a_b, xout => redist9_i_mul22_2_1_masked_gradient_BitSelect_for_a_b_1_q, clk => clock, aclr => resetn );

    -- i_mul22_2_1_masked_gradient_join(BITJOIN,1353)@11
    i_mul22_2_1_masked_gradient_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & redist9_i_mul22_2_1_masked_gradient_BitSelect_for_a_b_1_q;

    -- i_mul22_2_1_masked_gradient_vt_select_7(BITSELECT,372)@11
    i_mul22_2_1_masked_gradient_vt_select_7_b <= i_mul22_2_1_masked_gradient_join_q(7 downto 0);

    -- i_mul22_2_1_masked_gradient_vt_join(BITJOIN,371)@11
    i_mul22_2_1_masked_gradient_vt_join_q <= i_mul22_118_masked_gradient_vt_const_31_q & i_mul22_2_1_masked_gradient_vt_select_7_b;

    -- i_mul22_2_1_add434_gradient(ADD,365)@11
    i_mul22_2_1_add434_gradient_a <= STD_LOGIC_VECTOR("0" & i_mul22_2_1_masked_gradient_vt_join_q);
    i_mul22_2_1_add434_gradient_b <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient145_vt_join_q);
    i_mul22_2_1_add434_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul22_2_1_add434_gradient_a) + UNSIGNED(i_mul22_2_1_add434_gradient_b));
    i_mul22_2_1_add434_gradient_q <= i_mul22_2_1_add434_gradient_o(32 downto 0);

    -- bgTrunc_i_mul22_2_1_add434_gradient_sel_x(BITSELECT,13)@11
    bgTrunc_i_mul22_2_1_add434_gradient_sel_x_b <= i_mul22_2_1_add434_gradient_q(31 downto 0);

    -- i_mul22_2_1_add434_gradient_vt_select_15(BITSELECT,368)@11
    i_mul22_2_1_add434_gradient_vt_select_15_b <= bgTrunc_i_mul22_2_1_add434_gradient_sel_x_b(15 downto 0);

    -- redist45_i_mul22_2_1_add434_gradient_vt_select_15_b_1(DELAY,1464)
    redist45_i_mul22_2_1_add434_gradient_vt_select_15_b_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul22_2_1_add434_gradient_vt_select_15_b, xout => redist45_i_mul22_2_1_add434_gradient_vt_select_15_b_1_q, clk => clock, aclr => resetn );

    -- i_mul22_2_1_add434_gradient_vt_join(BITJOIN,367)@12
    i_mul22_2_1_add434_gradient_vt_join_q <= i_mul22_118_add186_gradient_vt_const_31_q & redist45_i_mul22_2_1_add434_gradient_vt_select_15_b_1_q;

    -- rightShiftStage1Idx1Rng4_uid1021_i_unnamed_gradient126_shift_x(BITSELECT,1020)@10
    rightShiftStage1Idx1Rng4_uid1021_i_unnamed_gradient126_shift_x_b <= rightShiftStage0_uid793_i_shr17_2_1_gradient_gradient113_shift_x_q(31 downto 4);

    -- rightShiftStage1Idx1_uid1023_i_unnamed_gradient126_shift_x(BITJOIN,1022)@10
    rightShiftStage1Idx1_uid1023_i_unnamed_gradient126_shift_x_q <= i_unnamed_gradient101_vt_const_3_q & rightShiftStage1Idx1Rng4_uid1021_i_unnamed_gradient126_shift_x_b;

    -- rightShiftStage1_uid1025_i_unnamed_gradient126_shift_x(MUX,1024)@10
    rightShiftStage1_uid1025_i_unnamed_gradient126_shift_x_s <= VCC_q;
    rightShiftStage1_uid1025_i_unnamed_gradient126_shift_x_combproc: PROCESS (rightShiftStage1_uid1025_i_unnamed_gradient126_shift_x_s, rightShiftStage0_uid793_i_shr17_2_1_gradient_gradient113_shift_x_q, rightShiftStage1Idx1_uid1023_i_unnamed_gradient126_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1025_i_unnamed_gradient126_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1025_i_unnamed_gradient126_shift_x_q <= rightShiftStage0_uid793_i_shr17_2_1_gradient_gradient113_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1025_i_unnamed_gradient126_shift_x_q <= rightShiftStage1Idx1_uid1023_i_unnamed_gradient126_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1025_i_unnamed_gradient126_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient128_vt_select_11(BITSELECT,600)@10
    i_unnamed_gradient128_vt_select_11_b <= rightShiftStage1_uid1025_i_unnamed_gradient126_shift_x_q(11 downto 0);

    -- i_unnamed_gradient128_vt_join(BITJOIN,599)@10
    i_unnamed_gradient128_vt_join_q <= i_mul24_119_add688_gradient_vt_const_31_q & i_unnamed_gradient128_vt_select_11_b;

    -- i_unnamed_gradient130_BitSelect_for_a(BITSELECT,1370)@10
    i_unnamed_gradient130_BitSelect_for_a_b <= i_unnamed_gradient128_vt_join_q(11 downto 4);

    -- redist5_i_unnamed_gradient130_BitSelect_for_a_b_1(DELAY,1424)
    redist5_i_unnamed_gradient130_BitSelect_for_a_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_gradient130_BitSelect_for_a_b, xout => redist5_i_unnamed_gradient130_BitSelect_for_a_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_gradient130_join(BITJOIN,1371)@11
    i_unnamed_gradient130_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & redist5_i_unnamed_gradient130_BitSelect_for_a_b_1_q & GND_q & GND_q & GND_q & GND_q;

    -- i_unnamed_gradient130_vt_select_11(BITSELECT,605)@11
    i_unnamed_gradient130_vt_select_11_b <= i_unnamed_gradient130_join_q(11 downto 4);

    -- i_unnamed_gradient130_vt_join(BITJOIN,604)@11
    i_unnamed_gradient130_vt_join_q <= i_mul24_119_add688_gradient_vt_const_31_q & i_unnamed_gradient130_vt_select_11_b & i_unnamed_gradient101_vt_const_3_q;

    -- rightShiftStage2Idx1Rng1_uid1026_i_unnamed_gradient126_shift_x(BITSELECT,1025)@10
    rightShiftStage2Idx1Rng1_uid1026_i_unnamed_gradient126_shift_x_b <= rightShiftStage1_uid1025_i_unnamed_gradient126_shift_x_q(31 downto 1);

    -- rightShiftStage2Idx1_uid1028_i_unnamed_gradient126_shift_x(BITJOIN,1027)@10
    rightShiftStage2Idx1_uid1028_i_unnamed_gradient126_shift_x_q <= GND_q & rightShiftStage2Idx1Rng1_uid1026_i_unnamed_gradient126_shift_x_b;

    -- rightShiftStage2_uid1030_i_unnamed_gradient126_shift_x(MUX,1029)@10
    rightShiftStage2_uid1030_i_unnamed_gradient126_shift_x_s <= VCC_q;
    rightShiftStage2_uid1030_i_unnamed_gradient126_shift_x_combproc: PROCESS (rightShiftStage2_uid1030_i_unnamed_gradient126_shift_x_s, rightShiftStage1_uid1025_i_unnamed_gradient126_shift_x_q, rightShiftStage2Idx1_uid1028_i_unnamed_gradient126_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1030_i_unnamed_gradient126_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1030_i_unnamed_gradient126_shift_x_q <= rightShiftStage1_uid1025_i_unnamed_gradient126_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1030_i_unnamed_gradient126_shift_x_q <= rightShiftStage2Idx1_uid1028_i_unnamed_gradient126_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1030_i_unnamed_gradient126_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient125_vt_select_10(BITSELECT,592)@10
    i_unnamed_gradient125_vt_select_10_b <= rightShiftStage2_uid1030_i_unnamed_gradient126_shift_x_q(10 downto 0);

    -- i_unnamed_gradient125_vt_join(BITJOIN,591)@10
    i_unnamed_gradient125_vt_join_q <= i_reduction_gradient_15_gradient_vt_const_31_q & i_unnamed_gradient125_vt_select_10_b;

    -- i_unnamed_gradient127_BitSelect_for_a(BITSELECT,1368)@10
    i_unnamed_gradient127_BitSelect_for_a_b <= i_unnamed_gradient125_vt_join_q(10 downto 3);

    -- i_unnamed_gradient127_join(BITJOIN,1369)@10
    i_unnamed_gradient127_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_unnamed_gradient127_BitSelect_for_a_b & GND_q & GND_q & GND_q;

    -- i_unnamed_gradient127_vt_select_10(BITSELECT,597)@10
    i_unnamed_gradient127_vt_select_10_b <= i_unnamed_gradient127_join_q(10 downto 3);

    -- i_unnamed_gradient127_vt_join(BITJOIN,596)@10
    i_unnamed_gradient127_vt_join_q <= i_reduction_gradient_15_gradient_vt_const_31_q & i_unnamed_gradient127_vt_select_10_b & i_unnamed_gradient109_vt_const_2_q;

    -- rightShiftStage1Idx1Rng8_uid859_i_shr19_2_1_gradient_gradient114_shift_x(BITSELECT,858)@10
    rightShiftStage1Idx1Rng8_uid859_i_shr19_2_1_gradient_gradient114_shift_x_b <= rightShiftStage0_uid793_i_shr17_2_1_gradient_gradient113_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid861_i_shr19_2_1_gradient_gradient114_shift_x(BITJOIN,860)@10
    rightShiftStage1Idx1_uid861_i_shr19_2_1_gradient_gradient114_shift_x_q <= i_unnamed_gradient172_vt_const_7_q & rightShiftStage1Idx1Rng8_uid859_i_shr19_2_1_gradient_gradient114_shift_x_b;

    -- rightShiftStage1_uid863_i_shr19_2_1_gradient_gradient114_shift_x(MUX,862)@10
    rightShiftStage1_uid863_i_shr19_2_1_gradient_gradient114_shift_x_s <= VCC_q;
    rightShiftStage1_uid863_i_shr19_2_1_gradient_gradient114_shift_x_combproc: PROCESS (rightShiftStage1_uid863_i_shr19_2_1_gradient_gradient114_shift_x_s, rightShiftStage0_uid793_i_shr17_2_1_gradient_gradient113_shift_x_q, rightShiftStage1Idx1_uid861_i_shr19_2_1_gradient_gradient114_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid863_i_shr19_2_1_gradient_gradient114_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid863_i_shr19_2_1_gradient_gradient114_shift_x_q <= rightShiftStage0_uid793_i_shr17_2_1_gradient_gradient113_shift_x_q;
            WHEN "1" => rightShiftStage1_uid863_i_shr19_2_1_gradient_gradient114_shift_x_q <= rightShiftStage1Idx1_uid861_i_shr19_2_1_gradient_gradient114_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid863_i_shr19_2_1_gradient_gradient114_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr19_2_1_gradient_vt_select_7(BITSELECT,521)@10
    i_shr19_2_1_gradient_vt_select_7_b <= rightShiftStage1_uid863_i_shr19_2_1_gradient_gradient114_shift_x_q(7 downto 0);

    -- i_shr19_2_1_gradient_vt_join(BITJOIN,520)@10
    i_shr19_2_1_gradient_vt_join_q <= i_mul22_118_masked_gradient_vt_const_31_q & i_shr19_2_1_gradient_vt_select_7_b;

    -- i_mul24_2_1_add812_gradient(ADD,405)@10
    i_mul24_2_1_add812_gradient_a <= STD_LOGIC_VECTOR("0" & i_shr19_2_1_gradient_vt_join_q);
    i_mul24_2_1_add812_gradient_b <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient127_vt_join_q);
    i_mul24_2_1_add812_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul24_2_1_add812_gradient_a) + UNSIGNED(i_mul24_2_1_add812_gradient_b));
    i_mul24_2_1_add812_gradient_q <= i_mul24_2_1_add812_gradient_o(32 downto 0);

    -- bgTrunc_i_mul24_2_1_add812_gradient_sel_x(BITSELECT,22)@10
    bgTrunc_i_mul24_2_1_add812_gradient_sel_x_b <= i_mul24_2_1_add812_gradient_q(31 downto 0);

    -- i_mul24_2_1_add812_gradient_vt_select_11(BITSELECT,408)@10
    i_mul24_2_1_add812_gradient_vt_select_11_b <= bgTrunc_i_mul24_2_1_add812_gradient_sel_x_b(11 downto 0);

    -- redist36_i_mul24_2_1_add812_gradient_vt_select_11_b_1(DELAY,1455)
    redist36_i_mul24_2_1_add812_gradient_vt_select_11_b_1 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul24_2_1_add812_gradient_vt_select_11_b, xout => redist36_i_mul24_2_1_add812_gradient_vt_select_11_b_1_q, clk => clock, aclr => resetn );

    -- i_mul24_2_1_add812_gradient_vt_join(BITJOIN,407)@11
    i_mul24_2_1_add812_gradient_vt_join_q <= i_mul24_119_add688_gradient_vt_const_31_q & redist36_i_mul24_2_1_add812_gradient_vt_select_11_b_1_q;

    -- i_mul24_2_1_add868_gradient(ADD,409)@11
    i_mul24_2_1_add868_gradient_a <= STD_LOGIC_VECTOR("0" & i_mul24_2_1_add812_gradient_vt_join_q);
    i_mul24_2_1_add868_gradient_b <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient130_vt_join_q);
    i_mul24_2_1_add868_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul24_2_1_add868_gradient_a) + UNSIGNED(i_mul24_2_1_add868_gradient_b));
    i_mul24_2_1_add868_gradient_q <= i_mul24_2_1_add868_gradient_o(32 downto 0);

    -- bgTrunc_i_mul24_2_1_add868_gradient_sel_x(BITSELECT,23)@11
    bgTrunc_i_mul24_2_1_add868_gradient_sel_x_b <= i_mul24_2_1_add868_gradient_q(31 downto 0);

    -- i_mul24_2_1_add868_gradient_vt_select_12(BITSELECT,412)@11
    i_mul24_2_1_add868_gradient_vt_select_12_b <= bgTrunc_i_mul24_2_1_add868_gradient_sel_x_b(12 downto 0);

    -- redist35_i_mul24_2_1_add868_gradient_vt_select_12_b_1(DELAY,1454)
    redist35_i_mul24_2_1_add868_gradient_vt_select_12_b_1 : dspba_delay
    GENERIC MAP ( width => 13, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul24_2_1_add868_gradient_vt_select_12_b, xout => redist35_i_mul24_2_1_add868_gradient_vt_select_12_b_1_q, clk => clock, aclr => resetn );

    -- i_mul24_2_1_add868_gradient_vt_join(BITJOIN,411)@12
    i_mul24_2_1_add868_gradient_vt_join_q <= i_mul24_119_add744_gradient_vt_const_31_q & redist35_i_mul24_2_1_add868_gradient_vt_select_12_b_1_q;

    -- i_reduction_gradient_9_gradient(ADD,488)@12
    i_reduction_gradient_9_gradient_a <= STD_LOGIC_VECTOR("0" & i_mul24_2_1_add868_gradient_vt_join_q);
    i_reduction_gradient_9_gradient_b <= STD_LOGIC_VECTOR("0" & i_mul22_2_1_add434_gradient_vt_join_q);
    i_reduction_gradient_9_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_gradient_9_gradient_a) + UNSIGNED(i_reduction_gradient_9_gradient_b));
    i_reduction_gradient_9_gradient_q <= i_reduction_gradient_9_gradient_o(32 downto 0);

    -- bgTrunc_i_reduction_gradient_9_gradient_sel_x(BITSELECT,42)@12
    bgTrunc_i_reduction_gradient_9_gradient_sel_x_b <= i_reduction_gradient_9_gradient_q(31 downto 0);

    -- i_reduction_gradient_9_gradient_vt_select_16(BITSELECT,491)@12
    i_reduction_gradient_9_gradient_vt_select_16_b <= bgTrunc_i_reduction_gradient_9_gradient_sel_x_b(16 downto 0);

    -- redist22_i_reduction_gradient_9_gradient_vt_select_16_b_1(DELAY,1441)
    redist22_i_reduction_gradient_9_gradient_vt_select_16_b_1 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_gradient_9_gradient_vt_select_16_b, xout => redist22_i_reduction_gradient_9_gradient_vt_select_16_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_gradient_9_gradient_vt_join(BITJOIN,490)@13
    i_reduction_gradient_9_gradient_vt_join_q <= i_reduction_gradient_0_gradient_vt_const_31_q & redist22_i_reduction_gradient_9_gradient_vt_select_16_b_1_q;

    -- i_reduction_gradient_11_gradient(ADD,423)@13
    i_reduction_gradient_11_gradient_a <= STD_LOGIC_VECTOR("0" & i_reduction_gradient_9_gradient_vt_join_q);
    i_reduction_gradient_11_gradient_b <= STD_LOGIC_VECTOR("0" & i_reduction_gradient_10_gradient_vt_join_q);
    i_reduction_gradient_11_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_gradient_11_gradient_a) + UNSIGNED(i_reduction_gradient_11_gradient_b));
    i_reduction_gradient_11_gradient_q <= i_reduction_gradient_11_gradient_o(32 downto 0);

    -- bgTrunc_i_reduction_gradient_11_gradient_sel_x(BITSELECT,26)@13
    bgTrunc_i_reduction_gradient_11_gradient_sel_x_b <= i_reduction_gradient_11_gradient_q(31 downto 0);

    -- i_reduction_gradient_11_gradient_vt_select_17(BITSELECT,426)@13
    i_reduction_gradient_11_gradient_vt_select_17_b <= bgTrunc_i_reduction_gradient_11_gradient_sel_x_b(17 downto 0);

    -- i_reduction_gradient_11_gradient_vt_join(BITJOIN,425)@13
    i_reduction_gradient_11_gradient_vt_join_q <= i_reduction_gradient_11_gradient_vt_const_31_q & i_reduction_gradient_11_gradient_vt_select_17_b;

    -- rightShiftStage0_uid908_i_shr27_2_1_gradient_gradient169_shift_x(MUX,907)@13
    rightShiftStage0_uid908_i_shr27_2_1_gradient_gradient169_shift_x_s <= VCC_q;
    rightShiftStage0_uid908_i_shr27_2_1_gradient_gradient169_shift_x_combproc: PROCESS (rightShiftStage0_uid908_i_shr27_2_1_gradient_gradient169_shift_x_s, i_reduction_gradient_11_gradient_vt_join_q, rightShiftStage0Idx1_uid906_i_shr27_2_1_gradient_gradient169_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid908_i_shr27_2_1_gradient_gradient169_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid908_i_shr27_2_1_gradient_gradient169_shift_x_q <= i_reduction_gradient_11_gradient_vt_join_q;
            WHEN "1" => rightShiftStage0_uid908_i_shr27_2_1_gradient_gradient169_shift_x_q <= rightShiftStage0Idx1_uid906_i_shr27_2_1_gradient_gradient169_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid908_i_shr27_2_1_gradient_gradient169_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr27_2_1_gradient_vt_select_9(BITSELECT,536)@13
    i_shr27_2_1_gradient_vt_select_9_b <= rightShiftStage0_uid908_i_shr27_2_1_gradient_gradient169_shift_x_q(9 downto 0);

    -- redist17_i_shr27_2_1_gradient_vt_select_9_b_1(DELAY,1436)
    redist17_i_shr27_2_1_gradient_vt_select_9_b_1 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_shr27_2_1_gradient_vt_select_9_b, xout => redist17_i_shr27_2_1_gradient_vt_select_9_b_1_q, clk => clock, aclr => resetn );

    -- i_shr27_2_1_gradient_vt_join(BITJOIN,535)@14
    i_shr27_2_1_gradient_vt_join_q <= i_unnamed_gradient170_multconst_x_q & redist17_i_shr27_2_1_gradient_vt_select_9_b_1_q;

    -- rightShiftStage0Idx1Rng8_uid886_i_shr27_1_2_gradient_gradient171_shift_x(BITSELECT,885)@13
    rightShiftStage0Idx1Rng8_uid886_i_shr27_1_2_gradient_gradient171_shift_x_b <= i_reduction_gradient_14_gradient_vt_join_q(31 downto 8);

    -- rightShiftStage0Idx1_uid888_i_shr27_1_2_gradient_gradient171_shift_x(BITJOIN,887)@13
    rightShiftStage0Idx1_uid888_i_shr27_1_2_gradient_gradient171_shift_x_q <= i_unnamed_gradient172_vt_const_7_q & rightShiftStage0Idx1Rng8_uid886_i_shr27_1_2_gradient_gradient171_shift_x_b;

    -- rightShiftStage0Idx1Rng2_uid1185_i_unnamed_gradient167_shift_x(BITSELECT,1184)@10
    rightShiftStage0Idx1Rng2_uid1185_i_unnamed_gradient167_shift_x_b <= redist60_i_acl_pop_i32_pop9_gradient_out_data_out_1_q(31 downto 2);

    -- rightShiftStage0Idx1_uid1187_i_unnamed_gradient167_shift_x(BITJOIN,1186)@10
    rightShiftStage0Idx1_uid1187_i_unnamed_gradient167_shift_x_q <= i_unnamed_gradient119_vt_const_31_q & rightShiftStage0Idx1Rng2_uid1185_i_unnamed_gradient167_shift_x_b;

    -- i_acl_push_i32_coalesced_push3_gradient(BLACKBOX,299)@10
    -- out out_feedback_out_3@20000000
    -- out out_feedback_valid_out_3@20000000
    thei_acl_push_i32_coalesced_push3_gradient : i_acl_push_i32_coalesced_push3_gradient63
    PORT MAP (
        in_data_in => redist55_i_acl_pop_i32_rows_299_0_pop5_gradient_out_data_out_1_q,
        in_feedback_stall_in_3 => i_acl_pop_i32_coalesced_pop3_gradient_out_feedback_stall_out_3,
        in_stall_in => GND_q,
        in_valid_in => redist61_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_3 => i_acl_push_i32_coalesced_push3_gradient_out_feedback_out_3,
        out_feedback_valid_out_3 => i_acl_push_i32_coalesced_push3_gradient_out_feedback_valid_out_3,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_coalesced_pop3_gradient(BLACKBOX,292)@9
    -- out out_feedback_stall_out_3@20000000
    thei_acl_pop_i32_coalesced_pop3_gradient : i_acl_pop_i32_coalesced_pop3_gradient59
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => i_not_select999_gradient_c,
        in_feedback_in_3 => i_acl_push_i32_coalesced_push3_gradient_out_feedback_out_3,
        in_feedback_valid_in_3 => i_acl_push_i32_coalesced_push3_gradient_out_feedback_valid_out_3,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_coalesced_pop3_gradient_out_data_out,
        out_feedback_stall_out_3 => i_acl_pop_i32_coalesced_pop3_gradient_out_feedback_stall_out_3,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i32_push9_gradient(BLACKBOX,300)@9
    -- out out_feedback_out_9@20000000
    -- out out_feedback_valid_out_9@20000000
    thei_acl_push_i32_push9_gradient : i_acl_push_i32_push9_gradient133
    PORT MAP (
        in_c1_ene3 => in_c1_eni5_3,
        in_data_in => i_acl_pop_i32_coalesced_pop3_gradient_out_data_out,
        in_feedback_stall_in_9 => i_acl_pop_i32_pop9_gradient_out_feedback_stall_out_9,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_9 => i_acl_push_i32_push9_gradient_out_feedback_out_9,
        out_feedback_valid_out_9 => i_acl_push_i32_push9_gradient_out_feedback_valid_out_9,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_pop9_gradient(BLACKBOX,293)@9
    -- out out_feedback_stall_out_9@20000000
    thei_acl_pop_i32_pop9_gradient : i_acl_pop_i32_pop9_gradient131
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => in_c1_eni5_2,
        in_feedback_in_9 => i_acl_push_i32_push9_gradient_out_feedback_out_9,
        in_feedback_valid_in_9 => i_acl_push_i32_push9_gradient_out_feedback_valid_out_9,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_pop9_gradient_out_data_out,
        out_feedback_stall_out_9 => i_acl_pop_i32_pop9_gradient_out_feedback_stall_out_9,
        clock => clock,
        resetn => resetn
    );

    -- redist60_i_acl_pop_i32_pop9_gradient_out_data_out_1(DELAY,1479)
    redist60_i_acl_pop_i32_pop9_gradient_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_pop9_gradient_out_data_out, xout => redist60_i_acl_pop_i32_pop9_gradient_out_data_out_1_q, clk => clock, aclr => resetn );

    -- rightShiftStage0_uid1189_i_unnamed_gradient167_shift_x(MUX,1188)@10
    rightShiftStage0_uid1189_i_unnamed_gradient167_shift_x_s <= VCC_q;
    rightShiftStage0_uid1189_i_unnamed_gradient167_shift_x_combproc: PROCESS (rightShiftStage0_uid1189_i_unnamed_gradient167_shift_x_s, redist60_i_acl_pop_i32_pop9_gradient_out_data_out_1_q, rightShiftStage0Idx1_uid1187_i_unnamed_gradient167_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1189_i_unnamed_gradient167_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1189_i_unnamed_gradient167_shift_x_q <= redist60_i_acl_pop_i32_pop9_gradient_out_data_out_1_q;
            WHEN "1" => rightShiftStage0_uid1189_i_unnamed_gradient167_shift_x_q <= rightShiftStage0Idx1_uid1187_i_unnamed_gradient167_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1189_i_unnamed_gradient167_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient166_vt_select_29(BITSELECT,680)@10
    i_unnamed_gradient166_vt_select_29_b <= rightShiftStage0_uid1189_i_unnamed_gradient167_shift_x_q(29 downto 0);

    -- i_unnamed_gradient166_vt_join(BITJOIN,679)@10
    i_unnamed_gradient166_vt_join_q <= i_unnamed_gradient119_vt_const_31_q & i_unnamed_gradient166_vt_select_29_b;

    -- i_unnamed_gradient168_BitSelect_for_a(BITSELECT,1390)@10
    i_unnamed_gradient168_BitSelect_for_a_b <= i_unnamed_gradient166_vt_join_q(13 downto 6);

    -- i_unnamed_gradient168_join(BITJOIN,1391)@10
    i_unnamed_gradient168_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_unnamed_gradient168_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_unnamed_gradient168_vt_select_13(BITSELECT,685)@10
    i_unnamed_gradient168_vt_select_13_b <= i_unnamed_gradient168_join_q(13 downto 6);

    -- i_unnamed_gradient168_vt_join(BITJOIN,684)@10
    i_unnamed_gradient168_vt_join_q <= i_unnamed_gradient121_vt_const_31_q & i_unnamed_gradient168_vt_select_13_b & i_unnamed_gradient121_vt_const_5_q;

    -- rightShiftStage2Idx1Rng1_uid1176_i_unnamed_gradient164_shift_x(BITSELECT,1175)@10
    rightShiftStage2Idx1Rng1_uid1176_i_unnamed_gradient164_shift_x_b <= rightShiftStage1_uid1175_i_unnamed_gradient164_shift_x_q(31 downto 1);

    -- rightShiftStage2Idx1_uid1178_i_unnamed_gradient164_shift_x(BITJOIN,1177)@10
    rightShiftStage2Idx1_uid1178_i_unnamed_gradient164_shift_x_q <= GND_q & rightShiftStage2Idx1Rng1_uid1176_i_unnamed_gradient164_shift_x_b;

    -- rightShiftStage1Idx1Rng2_uid1171_i_unnamed_gradient164_shift_x(BITSELECT,1170)@10
    rightShiftStage1Idx1Rng2_uid1171_i_unnamed_gradient164_shift_x_b <= rightShiftStage0_uid1170_i_unnamed_gradient164_shift_x_q(31 downto 2);

    -- rightShiftStage1Idx1_uid1173_i_unnamed_gradient164_shift_x(BITJOIN,1172)@10
    rightShiftStage1Idx1_uid1173_i_unnamed_gradient164_shift_x_q <= i_unnamed_gradient119_vt_const_31_q & rightShiftStage1Idx1Rng2_uid1171_i_unnamed_gradient164_shift_x_b;

    -- rightShiftStage0Idx1Rng4_uid1166_i_unnamed_gradient164_shift_x(BITSELECT,1165)@10
    rightShiftStage0Idx1Rng4_uid1166_i_unnamed_gradient164_shift_x_b <= redist60_i_acl_pop_i32_pop9_gradient_out_data_out_1_q(31 downto 4);

    -- rightShiftStage0Idx1_uid1168_i_unnamed_gradient164_shift_x(BITJOIN,1167)@10
    rightShiftStage0Idx1_uid1168_i_unnamed_gradient164_shift_x_q <= i_unnamed_gradient101_vt_const_3_q & rightShiftStage0Idx1Rng4_uid1166_i_unnamed_gradient164_shift_x_b;

    -- rightShiftStage0_uid1170_i_unnamed_gradient164_shift_x(MUX,1169)@10
    rightShiftStage0_uid1170_i_unnamed_gradient164_shift_x_s <= VCC_q;
    rightShiftStage0_uid1170_i_unnamed_gradient164_shift_x_combproc: PROCESS (rightShiftStage0_uid1170_i_unnamed_gradient164_shift_x_s, redist60_i_acl_pop_i32_pop9_gradient_out_data_out_1_q, rightShiftStage0Idx1_uid1168_i_unnamed_gradient164_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1170_i_unnamed_gradient164_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1170_i_unnamed_gradient164_shift_x_q <= redist60_i_acl_pop_i32_pop9_gradient_out_data_out_1_q;
            WHEN "1" => rightShiftStage0_uid1170_i_unnamed_gradient164_shift_x_q <= rightShiftStage0Idx1_uid1168_i_unnamed_gradient164_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1170_i_unnamed_gradient164_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1175_i_unnamed_gradient164_shift_x(MUX,1174)@10
    rightShiftStage1_uid1175_i_unnamed_gradient164_shift_x_s <= VCC_q;
    rightShiftStage1_uid1175_i_unnamed_gradient164_shift_x_combproc: PROCESS (rightShiftStage1_uid1175_i_unnamed_gradient164_shift_x_s, rightShiftStage0_uid1170_i_unnamed_gradient164_shift_x_q, rightShiftStage1Idx1_uid1173_i_unnamed_gradient164_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1175_i_unnamed_gradient164_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1175_i_unnamed_gradient164_shift_x_q <= rightShiftStage0_uid1170_i_unnamed_gradient164_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1175_i_unnamed_gradient164_shift_x_q <= rightShiftStage1Idx1_uid1173_i_unnamed_gradient164_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1175_i_unnamed_gradient164_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1180_i_unnamed_gradient164_shift_x(MUX,1179)@10
    rightShiftStage2_uid1180_i_unnamed_gradient164_shift_x_s <= VCC_q;
    rightShiftStage2_uid1180_i_unnamed_gradient164_shift_x_combproc: PROCESS (rightShiftStage2_uid1180_i_unnamed_gradient164_shift_x_s, rightShiftStage1_uid1175_i_unnamed_gradient164_shift_x_q, rightShiftStage2Idx1_uid1178_i_unnamed_gradient164_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1180_i_unnamed_gradient164_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1180_i_unnamed_gradient164_shift_x_q <= rightShiftStage1_uid1175_i_unnamed_gradient164_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1180_i_unnamed_gradient164_shift_x_q <= rightShiftStage2Idx1_uid1178_i_unnamed_gradient164_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1180_i_unnamed_gradient164_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient163_vt_select_24(BITSELECT,672)@10
    i_unnamed_gradient163_vt_select_24_b <= rightShiftStage2_uid1180_i_unnamed_gradient164_shift_x_q(24 downto 0);

    -- i_unnamed_gradient163_vt_join(BITJOIN,671)@10
    i_unnamed_gradient163_vt_join_q <= i_unnamed_gradient106_vt_const_6_q & i_unnamed_gradient163_vt_select_24_b;

    -- i_unnamed_gradient165_BitSelect_for_a(BITSELECT,1388)@10
    i_unnamed_gradient165_BitSelect_for_a_b <= i_unnamed_gradient163_vt_join_q(8 downto 1);

    -- i_unnamed_gradient165_join(BITJOIN,1389)@10
    i_unnamed_gradient165_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_unnamed_gradient165_BitSelect_for_a_b & GND_q;

    -- i_unnamed_gradient165_vt_select_8(BITSELECT,677)@10
    i_unnamed_gradient165_vt_select_8_b <= i_unnamed_gradient165_join_q(8 downto 1);

    -- i_unnamed_gradient165_vt_join(BITJOIN,676)@10
    i_unnamed_gradient165_vt_join_q <= i_unnamed_gradient118_vt_const_31_q & i_unnamed_gradient165_vt_select_8_b & GND_q;

    -- i_mul21_1_2_add620_gradient(ADD,318)@10
    i_mul21_1_2_add620_gradient_a <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient165_vt_join_q);
    i_mul21_1_2_add620_gradient_b <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient168_vt_join_q);
    i_mul21_1_2_add620_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul21_1_2_add620_gradient_a) + UNSIGNED(i_mul21_1_2_add620_gradient_b));
    i_mul21_1_2_add620_gradient_q <= i_mul21_1_2_add620_gradient_o(32 downto 0);

    -- bgTrunc_i_mul21_1_2_add620_gradient_sel_x(BITSELECT,6)@10
    bgTrunc_i_mul21_1_2_add620_gradient_sel_x_b <= i_mul21_1_2_add620_gradient_q(31 downto 0);

    -- i_mul21_1_2_add620_gradient_vt_select_14(BITSELECT,322)@10
    i_mul21_1_2_add620_gradient_vt_select_14_b <= bgTrunc_i_mul21_1_2_add620_gradient_sel_x_b(14 downto 1);

    -- redist52_i_mul21_1_2_add620_gradient_vt_select_14_b_2(DELAY,1471)
    redist52_i_mul21_1_2_add620_gradient_vt_select_14_b_2 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul21_1_2_add620_gradient_vt_select_14_b, xout => redist52_i_mul21_1_2_add620_gradient_vt_select_14_b_2_q, clk => clock, aclr => resetn );

    -- i_mul21_1_2_add620_gradient_vt_join(BITJOIN,321)@12
    i_mul21_1_2_add620_gradient_vt_join_q <= i_mul21_117_add248_gradient_vt_const_31_q & redist52_i_mul21_1_2_add620_gradient_vt_select_14_b_2_q & GND_q;

    -- i_reduction_gradient_13_gradient(ADD,431)@12
    i_reduction_gradient_13_gradient_a <= STD_LOGIC_VECTOR("0" & i_mul21_1_2_add620_gradient_vt_join_q);
    i_reduction_gradient_13_gradient_b <= STD_LOGIC_VECTOR("0" & c_i32_128_q);
    i_reduction_gradient_13_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_gradient_13_gradient_a) + UNSIGNED(i_reduction_gradient_13_gradient_b));
    i_reduction_gradient_13_gradient_q <= i_reduction_gradient_13_gradient_o(32 downto 0);

    -- bgTrunc_i_reduction_gradient_13_gradient_sel_x(BITSELECT,28)@12
    bgTrunc_i_reduction_gradient_13_gradient_sel_x_b <= i_reduction_gradient_13_gradient_q(31 downto 0);

    -- i_reduction_gradient_13_gradient_vt_select_15(BITSELECT,435)@12
    i_reduction_gradient_13_gradient_vt_select_15_b <= bgTrunc_i_reduction_gradient_13_gradient_sel_x_b(15 downto 1);

    -- redist31_i_reduction_gradient_13_gradient_vt_select_15_b_1(DELAY,1450)
    redist31_i_reduction_gradient_13_gradient_vt_select_15_b_1 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_gradient_13_gradient_vt_select_15_b, xout => redist31_i_reduction_gradient_13_gradient_vt_select_15_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_gradient_13_gradient_vt_join(BITJOIN,434)@13
    i_reduction_gradient_13_gradient_vt_join_q <= i_mul22_118_add186_gradient_vt_const_31_q & redist31_i_reduction_gradient_13_gradient_vt_select_15_b_1_q & GND_q;

    -- rightShiftStage1Idx1Rng1_uid1157_i_unnamed_gradient160_shift_x(BITSELECT,1156)@10
    rightShiftStage1Idx1Rng1_uid1157_i_unnamed_gradient160_shift_x_b <= rightShiftStage0_uid1156_i_unnamed_gradient160_shift_x_q(31 downto 1);

    -- rightShiftStage1Idx1_uid1159_i_unnamed_gradient160_shift_x(BITJOIN,1158)@10
    rightShiftStage1Idx1_uid1159_i_unnamed_gradient160_shift_x_q <= GND_q & rightShiftStage1Idx1Rng1_uid1157_i_unnamed_gradient160_shift_x_b;

    -- rightShiftStage0Idx1Rng8_uid1152_i_unnamed_gradient160_shift_x(BITSELECT,1151)@10
    rightShiftStage0Idx1Rng8_uid1152_i_unnamed_gradient160_shift_x_b <= redist60_i_acl_pop_i32_pop9_gradient_out_data_out_1_q(31 downto 8);

    -- rightShiftStage0Idx1_uid1154_i_unnamed_gradient160_shift_x(BITJOIN,1153)@10
    rightShiftStage0Idx1_uid1154_i_unnamed_gradient160_shift_x_q <= i_unnamed_gradient172_vt_const_7_q & rightShiftStage0Idx1Rng8_uid1152_i_unnamed_gradient160_shift_x_b;

    -- rightShiftStage0_uid1156_i_unnamed_gradient160_shift_x(MUX,1155)@10
    rightShiftStage0_uid1156_i_unnamed_gradient160_shift_x_s <= VCC_q;
    rightShiftStage0_uid1156_i_unnamed_gradient160_shift_x_combproc: PROCESS (rightShiftStage0_uid1156_i_unnamed_gradient160_shift_x_s, redist60_i_acl_pop_i32_pop9_gradient_out_data_out_1_q, rightShiftStage0Idx1_uid1154_i_unnamed_gradient160_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1156_i_unnamed_gradient160_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1156_i_unnamed_gradient160_shift_x_q <= redist60_i_acl_pop_i32_pop9_gradient_out_data_out_1_q;
            WHEN "1" => rightShiftStage0_uid1156_i_unnamed_gradient160_shift_x_q <= rightShiftStage0Idx1_uid1154_i_unnamed_gradient160_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1156_i_unnamed_gradient160_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1161_i_unnamed_gradient160_shift_x(MUX,1160)@10
    rightShiftStage1_uid1161_i_unnamed_gradient160_shift_x_s <= VCC_q;
    rightShiftStage1_uid1161_i_unnamed_gradient160_shift_x_combproc: PROCESS (rightShiftStage1_uid1161_i_unnamed_gradient160_shift_x_s, rightShiftStage0_uid1156_i_unnamed_gradient160_shift_x_q, rightShiftStage1Idx1_uid1159_i_unnamed_gradient160_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1161_i_unnamed_gradient160_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1161_i_unnamed_gradient160_shift_x_q <= rightShiftStage0_uid1156_i_unnamed_gradient160_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1161_i_unnamed_gradient160_shift_x_q <= rightShiftStage1Idx1_uid1159_i_unnamed_gradient160_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1161_i_unnamed_gradient160_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient159_vt_select_22(BITSELECT,664)@10
    i_unnamed_gradient159_vt_select_22_b <= rightShiftStage1_uid1161_i_unnamed_gradient160_shift_x_q(22 downto 0);

    -- i_unnamed_gradient159_vt_join(BITJOIN,663)@10
    i_unnamed_gradient159_vt_join_q <= i_unnamed_gradient104_vt_const_31_q & i_unnamed_gradient159_vt_select_22_b;

    -- i_unnamed_gradient161_BitSelect_for_a(BITSELECT,1386)@10
    i_unnamed_gradient161_BitSelect_for_a_b <= i_unnamed_gradient159_vt_join_q(14 downto 7);

    -- redist2_i_unnamed_gradient161_BitSelect_for_a_b_1(DELAY,1421)
    redist2_i_unnamed_gradient161_BitSelect_for_a_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_gradient161_BitSelect_for_a_b, xout => redist2_i_unnamed_gradient161_BitSelect_for_a_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_gradient161_join(BITJOIN,1387)@11
    i_unnamed_gradient161_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & redist2_i_unnamed_gradient161_BitSelect_for_a_b_1_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_unnamed_gradient161_vt_select_14(BITSELECT,669)@11
    i_unnamed_gradient161_vt_select_14_b <= i_unnamed_gradient161_join_q(14 downto 7);

    -- i_unnamed_gradient161_vt_join(BITJOIN,668)@11
    i_unnamed_gradient161_vt_join_q <= i_mul21_117_add248_gradient_vt_const_31_q & i_unnamed_gradient161_vt_select_14_b & i_unnamed_gradient106_vt_const_6_q;

    -- rightShiftStage0Idx1Rng16_uid771_i_shr17_1_2_gradient_gradient136_shift_x(BITSELECT,770)@10
    rightShiftStage0Idx1Rng16_uid771_i_shr17_1_2_gradient_gradient136_shift_x_b <= redist60_i_acl_pop_i32_pop9_gradient_out_data_out_1_q(31 downto 16);

    -- rightShiftStage0Idx1_uid773_i_shr17_1_2_gradient_gradient136_shift_x(BITJOIN,772)@10
    rightShiftStage0Idx1_uid773_i_shr17_1_2_gradient_gradient136_shift_x_q <= i_mul22_118_add186_gradient_vt_const_31_q & rightShiftStage0Idx1Rng16_uid771_i_shr17_1_2_gradient_gradient136_shift_x_b;

    -- rightShiftStage0_uid775_i_shr17_1_2_gradient_gradient136_shift_x(MUX,774)@10
    rightShiftStage0_uid775_i_shr17_1_2_gradient_gradient136_shift_x_s <= VCC_q;
    rightShiftStage0_uid775_i_shr17_1_2_gradient_gradient136_shift_x_combproc: PROCESS (rightShiftStage0_uid775_i_shr17_1_2_gradient_gradient136_shift_x_s, redist60_i_acl_pop_i32_pop9_gradient_out_data_out_1_q, rightShiftStage0Idx1_uid773_i_shr17_1_2_gradient_gradient136_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid775_i_shr17_1_2_gradient_gradient136_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid775_i_shr17_1_2_gradient_gradient136_shift_x_q <= redist60_i_acl_pop_i32_pop9_gradient_out_data_out_1_q;
            WHEN "1" => rightShiftStage0_uid775_i_shr17_1_2_gradient_gradient136_shift_x_q <= rightShiftStage0Idx1_uid773_i_shr17_1_2_gradient_gradient136_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid775_i_shr17_1_2_gradient_gradient136_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr17_1_2_gradient_vt_select_15(BITSELECT,500)@10
    i_shr17_1_2_gradient_vt_select_15_b <= rightShiftStage0_uid775_i_shr17_1_2_gradient_gradient136_shift_x_q(15 downto 0);

    -- i_shr17_1_2_gradient_vt_join(BITJOIN,499)@10
    i_shr17_1_2_gradient_vt_join_q <= i_mul22_118_add186_gradient_vt_const_31_q & i_shr17_1_2_gradient_vt_select_15_b;

    -- i_mul22_1_2_masked_gradient_BitSelect_for_a(BITSELECT,1348)@10
    i_mul22_1_2_masked_gradient_BitSelect_for_a_b <= i_shr17_1_2_gradient_vt_join_q(7 downto 0);

    -- redist11_i_mul22_1_2_masked_gradient_BitSelect_for_a_b_1(DELAY,1430)
    redist11_i_mul22_1_2_masked_gradient_BitSelect_for_a_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul22_1_2_masked_gradient_BitSelect_for_a_b, xout => redist11_i_mul22_1_2_masked_gradient_BitSelect_for_a_b_1_q, clk => clock, aclr => resetn );

    -- i_mul22_1_2_masked_gradient_join(BITJOIN,1349)@11
    i_mul22_1_2_masked_gradient_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & redist11_i_mul22_1_2_masked_gradient_BitSelect_for_a_b_1_q;

    -- i_mul22_1_2_masked_gradient_vt_select_7(BITSELECT,356)@11
    i_mul22_1_2_masked_gradient_vt_select_7_b <= i_mul22_1_2_masked_gradient_join_q(7 downto 0);

    -- i_mul22_1_2_masked_gradient_vt_join(BITJOIN,355)@11
    i_mul22_1_2_masked_gradient_vt_join_q <= i_mul22_118_masked_gradient_vt_const_31_q & i_mul22_1_2_masked_gradient_vt_select_7_b;

    -- i_mul22_1_2_add558_gradient(ADD,349)@11
    i_mul22_1_2_add558_gradient_a <= STD_LOGIC_VECTOR("0" & i_mul22_1_2_masked_gradient_vt_join_q);
    i_mul22_1_2_add558_gradient_b <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient161_vt_join_q);
    i_mul22_1_2_add558_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul22_1_2_add558_gradient_a) + UNSIGNED(i_mul22_1_2_add558_gradient_b));
    i_mul22_1_2_add558_gradient_q <= i_mul22_1_2_add558_gradient_o(32 downto 0);

    -- bgTrunc_i_mul22_1_2_add558_gradient_sel_x(BITSELECT,11)@11
    bgTrunc_i_mul22_1_2_add558_gradient_sel_x_b <= i_mul22_1_2_add558_gradient_q(31 downto 0);

    -- i_mul22_1_2_add558_gradient_vt_select_15(BITSELECT,352)@11
    i_mul22_1_2_add558_gradient_vt_select_15_b <= bgTrunc_i_mul22_1_2_add558_gradient_sel_x_b(15 downto 0);

    -- redist47_i_mul22_1_2_add558_gradient_vt_select_15_b_1(DELAY,1466)
    redist47_i_mul22_1_2_add558_gradient_vt_select_15_b_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul22_1_2_add558_gradient_vt_select_15_b, xout => redist47_i_mul22_1_2_add558_gradient_vt_select_15_b_1_q, clk => clock, aclr => resetn );

    -- i_mul22_1_2_add558_gradient_vt_join(BITJOIN,351)@12
    i_mul22_1_2_add558_gradient_vt_join_q <= i_mul22_118_add186_gradient_vt_const_31_q & redist47_i_mul22_1_2_add558_gradient_vt_select_15_b_1_q;

    -- rightShiftStage1Idx1Rng4_uid1096_i_unnamed_gradient147_shift_x(BITSELECT,1095)@10
    rightShiftStage1Idx1Rng4_uid1096_i_unnamed_gradient147_shift_x_b <= rightShiftStage0_uid775_i_shr17_1_2_gradient_gradient136_shift_x_q(31 downto 4);

    -- rightShiftStage1Idx1_uid1098_i_unnamed_gradient147_shift_x(BITJOIN,1097)@10
    rightShiftStage1Idx1_uid1098_i_unnamed_gradient147_shift_x_q <= i_unnamed_gradient101_vt_const_3_q & rightShiftStage1Idx1Rng4_uid1096_i_unnamed_gradient147_shift_x_b;

    -- rightShiftStage1_uid1100_i_unnamed_gradient147_shift_x(MUX,1099)@10
    rightShiftStage1_uid1100_i_unnamed_gradient147_shift_x_s <= VCC_q;
    rightShiftStage1_uid1100_i_unnamed_gradient147_shift_x_combproc: PROCESS (rightShiftStage1_uid1100_i_unnamed_gradient147_shift_x_s, rightShiftStage0_uid775_i_shr17_1_2_gradient_gradient136_shift_x_q, rightShiftStage1Idx1_uid1098_i_unnamed_gradient147_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1100_i_unnamed_gradient147_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1100_i_unnamed_gradient147_shift_x_q <= rightShiftStage0_uid775_i_shr17_1_2_gradient_gradient136_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1100_i_unnamed_gradient147_shift_x_q <= rightShiftStage1Idx1_uid1098_i_unnamed_gradient147_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1100_i_unnamed_gradient147_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient149_vt_select_11(BITSELECT,640)@10
    i_unnamed_gradient149_vt_select_11_b <= rightShiftStage1_uid1100_i_unnamed_gradient147_shift_x_q(11 downto 0);

    -- i_unnamed_gradient149_vt_join(BITJOIN,639)@10
    i_unnamed_gradient149_vt_join_q <= i_mul24_119_add688_gradient_vt_const_31_q & i_unnamed_gradient149_vt_select_11_b;

    -- i_unnamed_gradient151_BitSelect_for_a(BITSELECT,1380)@10
    i_unnamed_gradient151_BitSelect_for_a_b <= i_unnamed_gradient149_vt_join_q(11 downto 4);

    -- redist3_i_unnamed_gradient151_BitSelect_for_a_b_1(DELAY,1422)
    redist3_i_unnamed_gradient151_BitSelect_for_a_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_gradient151_BitSelect_for_a_b, xout => redist3_i_unnamed_gradient151_BitSelect_for_a_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_gradient151_join(BITJOIN,1381)@11
    i_unnamed_gradient151_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & redist3_i_unnamed_gradient151_BitSelect_for_a_b_1_q & GND_q & GND_q & GND_q & GND_q;

    -- i_unnamed_gradient151_vt_select_11(BITSELECT,645)@11
    i_unnamed_gradient151_vt_select_11_b <= i_unnamed_gradient151_join_q(11 downto 4);

    -- i_unnamed_gradient151_vt_join(BITJOIN,644)@11
    i_unnamed_gradient151_vt_join_q <= i_mul24_119_add688_gradient_vt_const_31_q & i_unnamed_gradient151_vt_select_11_b & i_unnamed_gradient101_vt_const_3_q;

    -- rightShiftStage2Idx1Rng1_uid1101_i_unnamed_gradient147_shift_x(BITSELECT,1100)@10
    rightShiftStage2Idx1Rng1_uid1101_i_unnamed_gradient147_shift_x_b <= rightShiftStage1_uid1100_i_unnamed_gradient147_shift_x_q(31 downto 1);

    -- rightShiftStage2Idx1_uid1103_i_unnamed_gradient147_shift_x(BITJOIN,1102)@10
    rightShiftStage2Idx1_uid1103_i_unnamed_gradient147_shift_x_q <= GND_q & rightShiftStage2Idx1Rng1_uid1101_i_unnamed_gradient147_shift_x_b;

    -- rightShiftStage2_uid1105_i_unnamed_gradient147_shift_x(MUX,1104)@10
    rightShiftStage2_uid1105_i_unnamed_gradient147_shift_x_s <= VCC_q;
    rightShiftStage2_uid1105_i_unnamed_gradient147_shift_x_combproc: PROCESS (rightShiftStage2_uid1105_i_unnamed_gradient147_shift_x_s, rightShiftStage1_uid1100_i_unnamed_gradient147_shift_x_q, rightShiftStage2Idx1_uid1103_i_unnamed_gradient147_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1105_i_unnamed_gradient147_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1105_i_unnamed_gradient147_shift_x_q <= rightShiftStage1_uid1100_i_unnamed_gradient147_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1105_i_unnamed_gradient147_shift_x_q <= rightShiftStage2Idx1_uid1103_i_unnamed_gradient147_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1105_i_unnamed_gradient147_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient146_vt_select_10(BITSELECT,632)@10
    i_unnamed_gradient146_vt_select_10_b <= rightShiftStage2_uid1105_i_unnamed_gradient147_shift_x_q(10 downto 0);

    -- i_unnamed_gradient146_vt_join(BITJOIN,631)@10
    i_unnamed_gradient146_vt_join_q <= i_reduction_gradient_15_gradient_vt_const_31_q & i_unnamed_gradient146_vt_select_10_b;

    -- i_unnamed_gradient148_BitSelect_for_a(BITSELECT,1378)@10
    i_unnamed_gradient148_BitSelect_for_a_b <= i_unnamed_gradient146_vt_join_q(10 downto 3);

    -- i_unnamed_gradient148_join(BITJOIN,1379)@10
    i_unnamed_gradient148_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_unnamed_gradient148_BitSelect_for_a_b & GND_q & GND_q & GND_q;

    -- i_unnamed_gradient148_vt_select_10(BITSELECT,637)@10
    i_unnamed_gradient148_vt_select_10_b <= i_unnamed_gradient148_join_q(10 downto 3);

    -- i_unnamed_gradient148_vt_join(BITJOIN,636)@10
    i_unnamed_gradient148_vt_join_q <= i_reduction_gradient_15_gradient_vt_const_31_q & i_unnamed_gradient148_vt_select_10_b & i_unnamed_gradient109_vt_const_2_q;

    -- rightShiftStage1Idx1Rng8_uid831_i_shr19_1_2_gradient_gradient135_shift_x(BITSELECT,830)@10
    rightShiftStage1Idx1Rng8_uid831_i_shr19_1_2_gradient_gradient135_shift_x_b <= rightShiftStage0_uid775_i_shr17_1_2_gradient_gradient136_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid833_i_shr19_1_2_gradient_gradient135_shift_x(BITJOIN,832)@10
    rightShiftStage1Idx1_uid833_i_shr19_1_2_gradient_gradient135_shift_x_q <= i_unnamed_gradient172_vt_const_7_q & rightShiftStage1Idx1Rng8_uid831_i_shr19_1_2_gradient_gradient135_shift_x_b;

    -- rightShiftStage1_uid835_i_shr19_1_2_gradient_gradient135_shift_x(MUX,834)@10
    rightShiftStage1_uid835_i_shr19_1_2_gradient_gradient135_shift_x_s <= VCC_q;
    rightShiftStage1_uid835_i_shr19_1_2_gradient_gradient135_shift_x_combproc: PROCESS (rightShiftStage1_uid835_i_shr19_1_2_gradient_gradient135_shift_x_s, rightShiftStage0_uid775_i_shr17_1_2_gradient_gradient136_shift_x_q, rightShiftStage1Idx1_uid833_i_shr19_1_2_gradient_gradient135_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid835_i_shr19_1_2_gradient_gradient135_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid835_i_shr19_1_2_gradient_gradient135_shift_x_q <= rightShiftStage0_uid775_i_shr17_1_2_gradient_gradient136_shift_x_q;
            WHEN "1" => rightShiftStage1_uid835_i_shr19_1_2_gradient_gradient135_shift_x_q <= rightShiftStage1Idx1_uid833_i_shr19_1_2_gradient_gradient135_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid835_i_shr19_1_2_gradient_gradient135_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr19_1_2_gradient_vt_select_7(BITSELECT,515)@10
    i_shr19_1_2_gradient_vt_select_7_b <= rightShiftStage1_uid835_i_shr19_1_2_gradient_gradient135_shift_x_q(7 downto 0);

    -- i_shr19_1_2_gradient_vt_join(BITJOIN,514)@10
    i_shr19_1_2_gradient_vt_join_q <= i_mul22_118_masked_gradient_vt_const_31_q & i_shr19_1_2_gradient_vt_select_7_b;

    -- i_mul24_1_2_add874_gradient(ADD,389)@10
    i_mul24_1_2_add874_gradient_a <= STD_LOGIC_VECTOR("0" & i_shr19_1_2_gradient_vt_join_q);
    i_mul24_1_2_add874_gradient_b <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient148_vt_join_q);
    i_mul24_1_2_add874_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul24_1_2_add874_gradient_a) + UNSIGNED(i_mul24_1_2_add874_gradient_b));
    i_mul24_1_2_add874_gradient_q <= i_mul24_1_2_add874_gradient_o(32 downto 0);

    -- bgTrunc_i_mul24_1_2_add874_gradient_sel_x(BITSELECT,18)@10
    bgTrunc_i_mul24_1_2_add874_gradient_sel_x_b <= i_mul24_1_2_add874_gradient_q(31 downto 0);

    -- i_mul24_1_2_add874_gradient_vt_select_11(BITSELECT,392)@10
    i_mul24_1_2_add874_gradient_vt_select_11_b <= bgTrunc_i_mul24_1_2_add874_gradient_sel_x_b(11 downto 0);

    -- redist40_i_mul24_1_2_add874_gradient_vt_select_11_b_1(DELAY,1459)
    redist40_i_mul24_1_2_add874_gradient_vt_select_11_b_1 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul24_1_2_add874_gradient_vt_select_11_b, xout => redist40_i_mul24_1_2_add874_gradient_vt_select_11_b_1_q, clk => clock, aclr => resetn );

    -- i_mul24_1_2_add874_gradient_vt_join(BITJOIN,391)@11
    i_mul24_1_2_add874_gradient_vt_join_q <= i_mul24_119_add688_gradient_vt_const_31_q & redist40_i_mul24_1_2_add874_gradient_vt_select_11_b_1_q;

    -- i_mul24_1_2_add930_gradient(ADD,393)@11
    i_mul24_1_2_add930_gradient_a <= STD_LOGIC_VECTOR("0" & i_mul24_1_2_add874_gradient_vt_join_q);
    i_mul24_1_2_add930_gradient_b <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient151_vt_join_q);
    i_mul24_1_2_add930_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul24_1_2_add930_gradient_a) + UNSIGNED(i_mul24_1_2_add930_gradient_b));
    i_mul24_1_2_add930_gradient_q <= i_mul24_1_2_add930_gradient_o(32 downto 0);

    -- bgTrunc_i_mul24_1_2_add930_gradient_sel_x(BITSELECT,19)@11
    bgTrunc_i_mul24_1_2_add930_gradient_sel_x_b <= i_mul24_1_2_add930_gradient_q(31 downto 0);

    -- i_mul24_1_2_add930_gradient_vt_select_12(BITSELECT,396)@11
    i_mul24_1_2_add930_gradient_vt_select_12_b <= bgTrunc_i_mul24_1_2_add930_gradient_sel_x_b(12 downto 0);

    -- redist39_i_mul24_1_2_add930_gradient_vt_select_12_b_1(DELAY,1458)
    redist39_i_mul24_1_2_add930_gradient_vt_select_12_b_1 : dspba_delay
    GENERIC MAP ( width => 13, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul24_1_2_add930_gradient_vt_select_12_b, xout => redist39_i_mul24_1_2_add930_gradient_vt_select_12_b_1_q, clk => clock, aclr => resetn );

    -- i_mul24_1_2_add930_gradient_vt_join(BITJOIN,395)@12
    i_mul24_1_2_add930_gradient_vt_join_q <= i_mul24_119_add744_gradient_vt_const_31_q & redist39_i_mul24_1_2_add930_gradient_vt_select_12_b_1_q;

    -- i_reduction_gradient_12_gradient(ADD,427)@12
    i_reduction_gradient_12_gradient_a <= STD_LOGIC_VECTOR("0" & i_mul24_1_2_add930_gradient_vt_join_q);
    i_reduction_gradient_12_gradient_b <= STD_LOGIC_VECTOR("0" & i_mul22_1_2_add558_gradient_vt_join_q);
    i_reduction_gradient_12_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_gradient_12_gradient_a) + UNSIGNED(i_reduction_gradient_12_gradient_b));
    i_reduction_gradient_12_gradient_q <= i_reduction_gradient_12_gradient_o(32 downto 0);

    -- bgTrunc_i_reduction_gradient_12_gradient_sel_x(BITSELECT,27)@12
    bgTrunc_i_reduction_gradient_12_gradient_sel_x_b <= i_reduction_gradient_12_gradient_q(31 downto 0);

    -- i_reduction_gradient_12_gradient_vt_select_16(BITSELECT,430)@12
    i_reduction_gradient_12_gradient_vt_select_16_b <= bgTrunc_i_reduction_gradient_12_gradient_sel_x_b(16 downto 0);

    -- redist32_i_reduction_gradient_12_gradient_vt_select_16_b_1(DELAY,1451)
    redist32_i_reduction_gradient_12_gradient_vt_select_16_b_1 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_gradient_12_gradient_vt_select_16_b, xout => redist32_i_reduction_gradient_12_gradient_vt_select_16_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_gradient_12_gradient_vt_join(BITJOIN,429)@13
    i_reduction_gradient_12_gradient_vt_join_q <= i_reduction_gradient_0_gradient_vt_const_31_q & redist32_i_reduction_gradient_12_gradient_vt_select_16_b_1_q;

    -- i_reduction_gradient_14_gradient(ADD,436)@13
    i_reduction_gradient_14_gradient_a <= STD_LOGIC_VECTOR("0" & i_reduction_gradient_12_gradient_vt_join_q);
    i_reduction_gradient_14_gradient_b <= STD_LOGIC_VECTOR("0" & i_reduction_gradient_13_gradient_vt_join_q);
    i_reduction_gradient_14_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_gradient_14_gradient_a) + UNSIGNED(i_reduction_gradient_14_gradient_b));
    i_reduction_gradient_14_gradient_q <= i_reduction_gradient_14_gradient_o(32 downto 0);

    -- bgTrunc_i_reduction_gradient_14_gradient_sel_x(BITSELECT,29)@13
    bgTrunc_i_reduction_gradient_14_gradient_sel_x_b <= i_reduction_gradient_14_gradient_q(31 downto 0);

    -- i_reduction_gradient_14_gradient_vt_select_17(BITSELECT,439)@13
    i_reduction_gradient_14_gradient_vt_select_17_b <= bgTrunc_i_reduction_gradient_14_gradient_sel_x_b(17 downto 0);

    -- i_reduction_gradient_14_gradient_vt_join(BITJOIN,438)@13
    i_reduction_gradient_14_gradient_vt_join_q <= i_reduction_gradient_11_gradient_vt_const_31_q & i_reduction_gradient_14_gradient_vt_select_17_b;

    -- rightShiftStage0_uid890_i_shr27_1_2_gradient_gradient171_shift_x(MUX,889)@13
    rightShiftStage0_uid890_i_shr27_1_2_gradient_gradient171_shift_x_s <= VCC_q;
    rightShiftStage0_uid890_i_shr27_1_2_gradient_gradient171_shift_x_combproc: PROCESS (rightShiftStage0_uid890_i_shr27_1_2_gradient_gradient171_shift_x_s, i_reduction_gradient_14_gradient_vt_join_q, rightShiftStage0Idx1_uid888_i_shr27_1_2_gradient_gradient171_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid890_i_shr27_1_2_gradient_gradient171_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid890_i_shr27_1_2_gradient_gradient171_shift_x_q <= i_reduction_gradient_14_gradient_vt_join_q;
            WHEN "1" => rightShiftStage0_uid890_i_shr27_1_2_gradient_gradient171_shift_x_q <= rightShiftStage0Idx1_uid888_i_shr27_1_2_gradient_gradient171_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid890_i_shr27_1_2_gradient_gradient171_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr27_1_2_gradient_vt_select_9(BITSELECT,530)@13
    i_shr27_1_2_gradient_vt_select_9_b <= rightShiftStage0_uid890_i_shr27_1_2_gradient_gradient171_shift_x_q(9 downto 0);

    -- redist19_i_shr27_1_2_gradient_vt_select_9_b_1(DELAY,1438)
    redist19_i_shr27_1_2_gradient_vt_select_9_b_1 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_shr27_1_2_gradient_vt_select_9_b, xout => redist19_i_shr27_1_2_gradient_vt_select_9_b_1_q, clk => clock, aclr => resetn );

    -- i_shr27_1_2_gradient_vt_join(BITJOIN,529)@14
    i_shr27_1_2_gradient_vt_join_q <= i_unnamed_gradient170_multconst_x_q & redist19_i_shr27_1_2_gradient_vt_select_9_b_1_q;

    -- i_reduction_gradient_15_gradient(ADD,440)@14
    i_reduction_gradient_15_gradient_a <= STD_LOGIC_VECTOR("0" & i_shr27_1_2_gradient_vt_join_q);
    i_reduction_gradient_15_gradient_b <= STD_LOGIC_VECTOR("0" & i_shr27_2_1_gradient_vt_join_q);
    i_reduction_gradient_15_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_gradient_15_gradient_a) + UNSIGNED(i_reduction_gradient_15_gradient_b));
    i_reduction_gradient_15_gradient_q <= i_reduction_gradient_15_gradient_o(32 downto 0);

    -- bgTrunc_i_reduction_gradient_15_gradient_sel_x(BITSELECT,30)@14
    bgTrunc_i_reduction_gradient_15_gradient_sel_x_b <= i_reduction_gradient_15_gradient_q(31 downto 0);

    -- i_reduction_gradient_15_gradient_vt_select_10(BITSELECT,443)@14
    i_reduction_gradient_15_gradient_vt_select_10_b <= bgTrunc_i_reduction_gradient_15_gradient_sel_x_b(10 downto 0);

    -- redist30_i_reduction_gradient_15_gradient_vt_select_10_b_1(DELAY,1449)
    redist30_i_reduction_gradient_15_gradient_vt_select_10_b_1 : dspba_delay
    GENERIC MAP ( width => 11, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_gradient_15_gradient_vt_select_10_b, xout => redist30_i_reduction_gradient_15_gradient_vt_select_10_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_gradient_15_gradient_vt_join(BITJOIN,442)@15
    i_reduction_gradient_15_gradient_vt_join_q <= i_reduction_gradient_15_gradient_vt_const_31_q & redist30_i_reduction_gradient_15_gradient_vt_select_10_b_1_q;

    -- i_reduction_gradient_17_gradient(ADD,448)@15
    i_reduction_gradient_17_gradient_a <= STD_LOGIC_VECTOR("0" & i_reduction_gradient_15_gradient_vt_join_q);
    i_reduction_gradient_17_gradient_b <= STD_LOGIC_VECTOR("0" & i_reduction_gradient_16_gradient_vt_join_q);
    i_reduction_gradient_17_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_gradient_17_gradient_a) + UNSIGNED(i_reduction_gradient_17_gradient_b));
    i_reduction_gradient_17_gradient_q <= i_reduction_gradient_17_gradient_o(32 downto 0);

    -- bgTrunc_i_reduction_gradient_17_gradient_sel_x(BITSELECT,32)@15
    bgTrunc_i_reduction_gradient_17_gradient_sel_x_b <= i_reduction_gradient_17_gradient_q(31 downto 0);

    -- i_reduction_gradient_17_gradient_vt_select_11(BITSELECT,451)@15
    i_reduction_gradient_17_gradient_vt_select_11_b <= bgTrunc_i_reduction_gradient_17_gradient_sel_x_b(11 downto 0);

    -- redist28_i_reduction_gradient_17_gradient_vt_select_11_b_1(DELAY,1447)
    redist28_i_reduction_gradient_17_gradient_vt_select_11_b_1 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_gradient_17_gradient_vt_select_11_b, xout => redist28_i_reduction_gradient_17_gradient_vt_select_11_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_gradient_17_gradient_vt_join(BITJOIN,450)@16
    i_reduction_gradient_17_gradient_vt_join_q <= i_mul24_119_add688_gradient_vt_const_31_q & redist28_i_reduction_gradient_17_gradient_vt_select_11_b_1_q;

    -- rightShiftStage0Idx1Rng8_uid877_i_shr27_1_1_gradient_gradient162_shift_x(BITSELECT,876)@13
    rightShiftStage0Idx1Rng8_uid877_i_shr27_1_1_gradient_gradient162_shift_x_b <= i_reduction_gradient_8_gradient_vt_join_q(31 downto 8);

    -- rightShiftStage0Idx1_uid879_i_shr27_1_1_gradient_gradient162_shift_x(BITJOIN,878)@13
    rightShiftStage0Idx1_uid879_i_shr27_1_1_gradient_gradient162_shift_x_q <= i_unnamed_gradient172_vt_const_7_q & rightShiftStage0Idx1Rng8_uid877_i_shr27_1_1_gradient_gradient162_shift_x_b;

    -- rightShiftStage0Idx1Rng2_uid1068_i_unnamed_gradient141_shift_x(BITSELECT,1067)@10
    rightShiftStage0Idx1Rng2_uid1068_i_unnamed_gradient141_shift_x_b <= redist56_i_acl_pop_i32_rows_298_0_pop6_gradient_out_data_out_1_q(31 downto 2);

    -- rightShiftStage0Idx1_uid1070_i_unnamed_gradient141_shift_x(BITJOIN,1069)@10
    rightShiftStage0Idx1_uid1070_i_unnamed_gradient141_shift_x_q <= i_unnamed_gradient119_vt_const_31_q & rightShiftStage0Idx1Rng2_uid1068_i_unnamed_gradient141_shift_x_b;

    -- redist56_i_acl_pop_i32_rows_298_0_pop6_gradient_out_data_out_1(DELAY,1475)
    redist56_i_acl_pop_i32_rows_298_0_pop6_gradient_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_rows_298_0_pop6_gradient_out_data_out, xout => redist56_i_acl_pop_i32_rows_298_0_pop6_gradient_out_data_out_1_q, clk => clock, aclr => resetn );

    -- rightShiftStage0_uid1072_i_unnamed_gradient141_shift_x(MUX,1071)@10
    rightShiftStage0_uid1072_i_unnamed_gradient141_shift_x_s <= VCC_q;
    rightShiftStage0_uid1072_i_unnamed_gradient141_shift_x_combproc: PROCESS (rightShiftStage0_uid1072_i_unnamed_gradient141_shift_x_s, redist56_i_acl_pop_i32_rows_298_0_pop6_gradient_out_data_out_1_q, rightShiftStage0Idx1_uid1070_i_unnamed_gradient141_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1072_i_unnamed_gradient141_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1072_i_unnamed_gradient141_shift_x_q <= redist56_i_acl_pop_i32_rows_298_0_pop6_gradient_out_data_out_1_q;
            WHEN "1" => rightShiftStage0_uid1072_i_unnamed_gradient141_shift_x_q <= rightShiftStage0Idx1_uid1070_i_unnamed_gradient141_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1072_i_unnamed_gradient141_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient140_vt_select_29(BITSELECT,616)@10
    i_unnamed_gradient140_vt_select_29_b <= rightShiftStage0_uid1072_i_unnamed_gradient141_shift_x_q(29 downto 0);

    -- i_unnamed_gradient140_vt_join(BITJOIN,615)@10
    i_unnamed_gradient140_vt_join_q <= i_unnamed_gradient119_vt_const_31_q & i_unnamed_gradient140_vt_select_29_b;

    -- i_unnamed_gradient142_BitSelect_for_a(BITSELECT,1374)@10
    i_unnamed_gradient142_BitSelect_for_a_b <= i_unnamed_gradient140_vt_join_q(13 downto 6);

    -- i_unnamed_gradient142_join(BITJOIN,1375)@10
    i_unnamed_gradient142_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_unnamed_gradient142_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_unnamed_gradient142_vt_select_13(BITSELECT,621)@10
    i_unnamed_gradient142_vt_select_13_b <= i_unnamed_gradient142_join_q(13 downto 6);

    -- i_unnamed_gradient142_vt_join(BITJOIN,620)@10
    i_unnamed_gradient142_vt_join_q <= i_unnamed_gradient121_vt_const_31_q & i_unnamed_gradient142_vt_select_13_b & i_unnamed_gradient121_vt_const_5_q;

    -- rightShiftStage2Idx1Rng1_uid1059_i_unnamed_gradient138_shift_x(BITSELECT,1058)@10
    rightShiftStage2Idx1Rng1_uid1059_i_unnamed_gradient138_shift_x_b <= rightShiftStage1_uid1058_i_unnamed_gradient138_shift_x_q(31 downto 1);

    -- rightShiftStage2Idx1_uid1061_i_unnamed_gradient138_shift_x(BITJOIN,1060)@10
    rightShiftStage2Idx1_uid1061_i_unnamed_gradient138_shift_x_q <= GND_q & rightShiftStage2Idx1Rng1_uid1059_i_unnamed_gradient138_shift_x_b;

    -- rightShiftStage1Idx1Rng2_uid1054_i_unnamed_gradient138_shift_x(BITSELECT,1053)@10
    rightShiftStage1Idx1Rng2_uid1054_i_unnamed_gradient138_shift_x_b <= rightShiftStage0_uid1053_i_unnamed_gradient138_shift_x_q(31 downto 2);

    -- rightShiftStage1Idx1_uid1056_i_unnamed_gradient138_shift_x(BITJOIN,1055)@10
    rightShiftStage1Idx1_uid1056_i_unnamed_gradient138_shift_x_q <= i_unnamed_gradient119_vt_const_31_q & rightShiftStage1Idx1Rng2_uid1054_i_unnamed_gradient138_shift_x_b;

    -- rightShiftStage0Idx1Rng4_uid1049_i_unnamed_gradient138_shift_x(BITSELECT,1048)@10
    rightShiftStage0Idx1Rng4_uid1049_i_unnamed_gradient138_shift_x_b <= redist56_i_acl_pop_i32_rows_298_0_pop6_gradient_out_data_out_1_q(31 downto 4);

    -- rightShiftStage0Idx1_uid1051_i_unnamed_gradient138_shift_x(BITJOIN,1050)@10
    rightShiftStage0Idx1_uid1051_i_unnamed_gradient138_shift_x_q <= i_unnamed_gradient101_vt_const_3_q & rightShiftStage0Idx1Rng4_uid1049_i_unnamed_gradient138_shift_x_b;

    -- rightShiftStage0_uid1053_i_unnamed_gradient138_shift_x(MUX,1052)@10
    rightShiftStage0_uid1053_i_unnamed_gradient138_shift_x_s <= VCC_q;
    rightShiftStage0_uid1053_i_unnamed_gradient138_shift_x_combproc: PROCESS (rightShiftStage0_uid1053_i_unnamed_gradient138_shift_x_s, redist56_i_acl_pop_i32_rows_298_0_pop6_gradient_out_data_out_1_q, rightShiftStage0Idx1_uid1051_i_unnamed_gradient138_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1053_i_unnamed_gradient138_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1053_i_unnamed_gradient138_shift_x_q <= redist56_i_acl_pop_i32_rows_298_0_pop6_gradient_out_data_out_1_q;
            WHEN "1" => rightShiftStage0_uid1053_i_unnamed_gradient138_shift_x_q <= rightShiftStage0Idx1_uid1051_i_unnamed_gradient138_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1053_i_unnamed_gradient138_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1058_i_unnamed_gradient138_shift_x(MUX,1057)@10
    rightShiftStage1_uid1058_i_unnamed_gradient138_shift_x_s <= VCC_q;
    rightShiftStage1_uid1058_i_unnamed_gradient138_shift_x_combproc: PROCESS (rightShiftStage1_uid1058_i_unnamed_gradient138_shift_x_s, rightShiftStage0_uid1053_i_unnamed_gradient138_shift_x_q, rightShiftStage1Idx1_uid1056_i_unnamed_gradient138_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1058_i_unnamed_gradient138_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1058_i_unnamed_gradient138_shift_x_q <= rightShiftStage0_uid1053_i_unnamed_gradient138_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1058_i_unnamed_gradient138_shift_x_q <= rightShiftStage1Idx1_uid1056_i_unnamed_gradient138_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1058_i_unnamed_gradient138_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1063_i_unnamed_gradient138_shift_x(MUX,1062)@10
    rightShiftStage2_uid1063_i_unnamed_gradient138_shift_x_s <= VCC_q;
    rightShiftStage2_uid1063_i_unnamed_gradient138_shift_x_combproc: PROCESS (rightShiftStage2_uid1063_i_unnamed_gradient138_shift_x_s, rightShiftStage1_uid1058_i_unnamed_gradient138_shift_x_q, rightShiftStage2Idx1_uid1061_i_unnamed_gradient138_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1063_i_unnamed_gradient138_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1063_i_unnamed_gradient138_shift_x_q <= rightShiftStage1_uid1058_i_unnamed_gradient138_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1063_i_unnamed_gradient138_shift_x_q <= rightShiftStage2Idx1_uid1061_i_unnamed_gradient138_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1063_i_unnamed_gradient138_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient137_vt_select_24(BITSELECT,608)@10
    i_unnamed_gradient137_vt_select_24_b <= rightShiftStage2_uid1063_i_unnamed_gradient138_shift_x_q(24 downto 0);

    -- i_unnamed_gradient137_vt_join(BITJOIN,607)@10
    i_unnamed_gradient137_vt_join_q <= i_unnamed_gradient106_vt_const_6_q & i_unnamed_gradient137_vt_select_24_b;

    -- i_unnamed_gradient139_BitSelect_for_a(BITSELECT,1372)@10
    i_unnamed_gradient139_BitSelect_for_a_b <= i_unnamed_gradient137_vt_join_q(8 downto 1);

    -- i_unnamed_gradient139_join(BITJOIN,1373)@10
    i_unnamed_gradient139_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_unnamed_gradient139_BitSelect_for_a_b & GND_q;

    -- i_unnamed_gradient139_vt_select_8(BITSELECT,613)@10
    i_unnamed_gradient139_vt_select_8_b <= i_unnamed_gradient139_join_q(8 downto 1);

    -- i_unnamed_gradient139_vt_join(BITJOIN,612)@10
    i_unnamed_gradient139_vt_join_q <= i_unnamed_gradient118_vt_const_31_q & i_unnamed_gradient139_vt_select_8_b & GND_q;

    -- i_mul21_1_1_add372_gradient(ADD,313)@10
    i_mul21_1_1_add372_gradient_a <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient139_vt_join_q);
    i_mul21_1_1_add372_gradient_b <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient142_vt_join_q);
    i_mul21_1_1_add372_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul21_1_1_add372_gradient_a) + UNSIGNED(i_mul21_1_1_add372_gradient_b));
    i_mul21_1_1_add372_gradient_q <= i_mul21_1_1_add372_gradient_o(32 downto 0);

    -- bgTrunc_i_mul21_1_1_add372_gradient_sel_x(BITSELECT,5)@10
    bgTrunc_i_mul21_1_1_add372_gradient_sel_x_b <= i_mul21_1_1_add372_gradient_q(31 downto 0);

    -- i_mul21_1_1_add372_gradient_vt_select_14(BITSELECT,317)@10
    i_mul21_1_1_add372_gradient_vt_select_14_b <= bgTrunc_i_mul21_1_1_add372_gradient_sel_x_b(14 downto 1);

    -- redist53_i_mul21_1_1_add372_gradient_vt_select_14_b_2(DELAY,1472)
    redist53_i_mul21_1_1_add372_gradient_vt_select_14_b_2 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul21_1_1_add372_gradient_vt_select_14_b, xout => redist53_i_mul21_1_1_add372_gradient_vt_select_14_b_2_q, clk => clock, aclr => resetn );

    -- i_mul21_1_1_add372_gradient_vt_join(BITJOIN,316)@12
    i_mul21_1_1_add372_gradient_vt_join_q <= i_mul21_117_add248_gradient_vt_const_31_q & redist53_i_mul21_1_1_add372_gradient_vt_select_14_b_2_q & GND_q;

    -- i_reduction_gradient_7_gradient(ADD,479)@12
    i_reduction_gradient_7_gradient_a <= STD_LOGIC_VECTOR("0" & i_mul21_1_1_add372_gradient_vt_join_q);
    i_reduction_gradient_7_gradient_b <= STD_LOGIC_VECTOR("0" & c_i32_128_q);
    i_reduction_gradient_7_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_gradient_7_gradient_a) + UNSIGNED(i_reduction_gradient_7_gradient_b));
    i_reduction_gradient_7_gradient_q <= i_reduction_gradient_7_gradient_o(32 downto 0);

    -- bgTrunc_i_reduction_gradient_7_gradient_sel_x(BITSELECT,40)@12
    bgTrunc_i_reduction_gradient_7_gradient_sel_x_b <= i_reduction_gradient_7_gradient_q(31 downto 0);

    -- i_reduction_gradient_7_gradient_vt_select_15(BITSELECT,483)@12
    i_reduction_gradient_7_gradient_vt_select_15_b <= bgTrunc_i_reduction_gradient_7_gradient_sel_x_b(15 downto 1);

    -- redist23_i_reduction_gradient_7_gradient_vt_select_15_b_1(DELAY,1442)
    redist23_i_reduction_gradient_7_gradient_vt_select_15_b_1 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_gradient_7_gradient_vt_select_15_b, xout => redist23_i_reduction_gradient_7_gradient_vt_select_15_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_gradient_7_gradient_vt_join(BITJOIN,482)@13
    i_reduction_gradient_7_gradient_vt_join_q <= i_mul22_118_add186_gradient_vt_const_31_q & redist23_i_reduction_gradient_7_gradient_vt_select_15_b_1_q & GND_q;

    -- rightShiftStage1Idx1Rng1_uid1007_i_unnamed_gradient123_shift_x(BITSELECT,1006)@10
    rightShiftStage1Idx1Rng1_uid1007_i_unnamed_gradient123_shift_x_b <= rightShiftStage0_uid1006_i_unnamed_gradient123_shift_x_q(31 downto 1);

    -- rightShiftStage1Idx1_uid1009_i_unnamed_gradient123_shift_x(BITJOIN,1008)@10
    rightShiftStage1Idx1_uid1009_i_unnamed_gradient123_shift_x_q <= GND_q & rightShiftStage1Idx1Rng1_uid1007_i_unnamed_gradient123_shift_x_b;

    -- rightShiftStage0Idx1Rng8_uid1002_i_unnamed_gradient123_shift_x(BITSELECT,1001)@10
    rightShiftStage0Idx1Rng8_uid1002_i_unnamed_gradient123_shift_x_b <= redist56_i_acl_pop_i32_rows_298_0_pop6_gradient_out_data_out_1_q(31 downto 8);

    -- rightShiftStage0Idx1_uid1004_i_unnamed_gradient123_shift_x(BITJOIN,1003)@10
    rightShiftStage0Idx1_uid1004_i_unnamed_gradient123_shift_x_q <= i_unnamed_gradient172_vt_const_7_q & rightShiftStage0Idx1Rng8_uid1002_i_unnamed_gradient123_shift_x_b;

    -- rightShiftStage0_uid1006_i_unnamed_gradient123_shift_x(MUX,1005)@10
    rightShiftStage0_uid1006_i_unnamed_gradient123_shift_x_s <= VCC_q;
    rightShiftStage0_uid1006_i_unnamed_gradient123_shift_x_combproc: PROCESS (rightShiftStage0_uid1006_i_unnamed_gradient123_shift_x_s, redist56_i_acl_pop_i32_rows_298_0_pop6_gradient_out_data_out_1_q, rightShiftStage0Idx1_uid1004_i_unnamed_gradient123_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1006_i_unnamed_gradient123_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1006_i_unnamed_gradient123_shift_x_q <= redist56_i_acl_pop_i32_rows_298_0_pop6_gradient_out_data_out_1_q;
            WHEN "1" => rightShiftStage0_uid1006_i_unnamed_gradient123_shift_x_q <= rightShiftStage0Idx1_uid1004_i_unnamed_gradient123_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1006_i_unnamed_gradient123_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1011_i_unnamed_gradient123_shift_x(MUX,1010)@10
    rightShiftStage1_uid1011_i_unnamed_gradient123_shift_x_s <= VCC_q;
    rightShiftStage1_uid1011_i_unnamed_gradient123_shift_x_combproc: PROCESS (rightShiftStage1_uid1011_i_unnamed_gradient123_shift_x_s, rightShiftStage0_uid1006_i_unnamed_gradient123_shift_x_q, rightShiftStage1Idx1_uid1009_i_unnamed_gradient123_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1011_i_unnamed_gradient123_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1011_i_unnamed_gradient123_shift_x_q <= rightShiftStage0_uid1006_i_unnamed_gradient123_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1011_i_unnamed_gradient123_shift_x_q <= rightShiftStage1Idx1_uid1009_i_unnamed_gradient123_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1011_i_unnamed_gradient123_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient122_vt_select_22(BITSELECT,584)@10
    i_unnamed_gradient122_vt_select_22_b <= rightShiftStage1_uid1011_i_unnamed_gradient123_shift_x_q(22 downto 0);

    -- i_unnamed_gradient122_vt_join(BITJOIN,583)@10
    i_unnamed_gradient122_vt_join_q <= i_unnamed_gradient104_vt_const_31_q & i_unnamed_gradient122_vt_select_22_b;

    -- i_unnamed_gradient124_BitSelect_for_a(BITSELECT,1366)@10
    i_unnamed_gradient124_BitSelect_for_a_b <= i_unnamed_gradient122_vt_join_q(14 downto 7);

    -- redist6_i_unnamed_gradient124_BitSelect_for_a_b_1(DELAY,1425)
    redist6_i_unnamed_gradient124_BitSelect_for_a_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_gradient124_BitSelect_for_a_b, xout => redist6_i_unnamed_gradient124_BitSelect_for_a_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_gradient124_join(BITJOIN,1367)@11
    i_unnamed_gradient124_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & redist6_i_unnamed_gradient124_BitSelect_for_a_b_1_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_unnamed_gradient124_vt_select_14(BITSELECT,589)@11
    i_unnamed_gradient124_vt_select_14_b <= i_unnamed_gradient124_join_q(14 downto 7);

    -- i_unnamed_gradient124_vt_join(BITJOIN,588)@11
    i_unnamed_gradient124_vt_join_q <= i_mul21_117_add248_gradient_vt_const_31_q & i_unnamed_gradient124_vt_select_14_b & i_unnamed_gradient106_vt_const_6_q;

    -- rightShiftStage0Idx1Rng16_uid762_i_shr17_1_1_gradient_gradient102_shift_x(BITSELECT,761)@10
    rightShiftStage0Idx1Rng16_uid762_i_shr17_1_1_gradient_gradient102_shift_x_b <= redist56_i_acl_pop_i32_rows_298_0_pop6_gradient_out_data_out_1_q(31 downto 16);

    -- rightShiftStage0Idx1_uid764_i_shr17_1_1_gradient_gradient102_shift_x(BITJOIN,763)@10
    rightShiftStage0Idx1_uid764_i_shr17_1_1_gradient_gradient102_shift_x_q <= i_mul22_118_add186_gradient_vt_const_31_q & rightShiftStage0Idx1Rng16_uid762_i_shr17_1_1_gradient_gradient102_shift_x_b;

    -- rightShiftStage0_uid766_i_shr17_1_1_gradient_gradient102_shift_x(MUX,765)@10
    rightShiftStage0_uid766_i_shr17_1_1_gradient_gradient102_shift_x_s <= VCC_q;
    rightShiftStage0_uid766_i_shr17_1_1_gradient_gradient102_shift_x_combproc: PROCESS (rightShiftStage0_uid766_i_shr17_1_1_gradient_gradient102_shift_x_s, redist56_i_acl_pop_i32_rows_298_0_pop6_gradient_out_data_out_1_q, rightShiftStage0Idx1_uid764_i_shr17_1_1_gradient_gradient102_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid766_i_shr17_1_1_gradient_gradient102_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid766_i_shr17_1_1_gradient_gradient102_shift_x_q <= redist56_i_acl_pop_i32_rows_298_0_pop6_gradient_out_data_out_1_q;
            WHEN "1" => rightShiftStage0_uid766_i_shr17_1_1_gradient_gradient102_shift_x_q <= rightShiftStage0Idx1_uid764_i_shr17_1_1_gradient_gradient102_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid766_i_shr17_1_1_gradient_gradient102_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr17_1_1_gradient_vt_select_15(BITSELECT,497)@10
    i_shr17_1_1_gradient_vt_select_15_b <= rightShiftStage0_uid766_i_shr17_1_1_gradient_gradient102_shift_x_q(15 downto 0);

    -- i_shr17_1_1_gradient_vt_join(BITJOIN,496)@10
    i_shr17_1_1_gradient_vt_join_q <= i_mul22_118_add186_gradient_vt_const_31_q & i_shr17_1_1_gradient_vt_select_15_b;

    -- i_mul22_1_1_masked_gradient_BitSelect_for_a(BITSELECT,1346)@10
    i_mul22_1_1_masked_gradient_BitSelect_for_a_b <= i_shr17_1_1_gradient_vt_join_q(7 downto 0);

    -- redist12_i_mul22_1_1_masked_gradient_BitSelect_for_a_b_1(DELAY,1431)
    redist12_i_mul22_1_1_masked_gradient_BitSelect_for_a_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul22_1_1_masked_gradient_BitSelect_for_a_b, xout => redist12_i_mul22_1_1_masked_gradient_BitSelect_for_a_b_1_q, clk => clock, aclr => resetn );

    -- i_mul22_1_1_masked_gradient_join(BITJOIN,1347)@11
    i_mul22_1_1_masked_gradient_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & redist12_i_mul22_1_1_masked_gradient_BitSelect_for_a_b_1_q;

    -- i_mul22_1_1_masked_gradient_vt_select_7(BITSELECT,348)@11
    i_mul22_1_1_masked_gradient_vt_select_7_b <= i_mul22_1_1_masked_gradient_join_q(7 downto 0);

    -- i_mul22_1_1_masked_gradient_vt_join(BITJOIN,347)@11
    i_mul22_1_1_masked_gradient_vt_join_q <= i_mul22_118_masked_gradient_vt_const_31_q & i_mul22_1_1_masked_gradient_vt_select_7_b;

    -- i_mul22_1_1_add310_gradient(ADD,341)@11
    i_mul22_1_1_add310_gradient_a <= STD_LOGIC_VECTOR("0" & i_mul22_1_1_masked_gradient_vt_join_q);
    i_mul22_1_1_add310_gradient_b <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient124_vt_join_q);
    i_mul22_1_1_add310_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul22_1_1_add310_gradient_a) + UNSIGNED(i_mul22_1_1_add310_gradient_b));
    i_mul22_1_1_add310_gradient_q <= i_mul22_1_1_add310_gradient_o(32 downto 0);

    -- bgTrunc_i_mul22_1_1_add310_gradient_sel_x(BITSELECT,10)@11
    bgTrunc_i_mul22_1_1_add310_gradient_sel_x_b <= i_mul22_1_1_add310_gradient_q(31 downto 0);

    -- i_mul22_1_1_add310_gradient_vt_select_15(BITSELECT,344)@11
    i_mul22_1_1_add310_gradient_vt_select_15_b <= bgTrunc_i_mul22_1_1_add310_gradient_sel_x_b(15 downto 0);

    -- redist48_i_mul22_1_1_add310_gradient_vt_select_15_b_1(DELAY,1467)
    redist48_i_mul22_1_1_add310_gradient_vt_select_15_b_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul22_1_1_add310_gradient_vt_select_15_b, xout => redist48_i_mul22_1_1_add310_gradient_vt_select_15_b_1_q, clk => clock, aclr => resetn );

    -- i_mul22_1_1_add310_gradient_vt_join(BITJOIN,343)@12
    i_mul22_1_1_add310_gradient_vt_join_q <= i_mul22_118_add186_gradient_vt_const_31_q & redist48_i_mul22_1_1_add310_gradient_vt_select_15_b_1_q;

    -- rightShiftStage1Idx1Rng4_uid946_i_unnamed_gradient108_shift_x(BITSELECT,945)@10
    rightShiftStage1Idx1Rng4_uid946_i_unnamed_gradient108_shift_x_b <= rightShiftStage0_uid766_i_shr17_1_1_gradient_gradient102_shift_x_q(31 downto 4);

    -- rightShiftStage1Idx1_uid948_i_unnamed_gradient108_shift_x(BITJOIN,947)@10
    rightShiftStage1Idx1_uid948_i_unnamed_gradient108_shift_x_q <= i_unnamed_gradient101_vt_const_3_q & rightShiftStage1Idx1Rng4_uid946_i_unnamed_gradient108_shift_x_b;

    -- rightShiftStage1_uid950_i_unnamed_gradient108_shift_x(MUX,949)@10
    rightShiftStage1_uid950_i_unnamed_gradient108_shift_x_s <= VCC_q;
    rightShiftStage1_uid950_i_unnamed_gradient108_shift_x_combproc: PROCESS (rightShiftStage1_uid950_i_unnamed_gradient108_shift_x_s, rightShiftStage0_uid766_i_shr17_1_1_gradient_gradient102_shift_x_q, rightShiftStage1Idx1_uid948_i_unnamed_gradient108_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid950_i_unnamed_gradient108_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid950_i_unnamed_gradient108_shift_x_q <= rightShiftStage0_uid766_i_shr17_1_1_gradient_gradient102_shift_x_q;
            WHEN "1" => rightShiftStage1_uid950_i_unnamed_gradient108_shift_x_q <= rightShiftStage1Idx1_uid948_i_unnamed_gradient108_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid950_i_unnamed_gradient108_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient110_vt_select_11(BITSELECT,560)@10
    i_unnamed_gradient110_vt_select_11_b <= rightShiftStage1_uid950_i_unnamed_gradient108_shift_x_q(11 downto 0);

    -- i_unnamed_gradient110_vt_join(BITJOIN,559)@10
    i_unnamed_gradient110_vt_join_q <= i_mul24_119_add688_gradient_vt_const_31_q & i_unnamed_gradient110_vt_select_11_b;

    -- i_unnamed_gradient112_BitSelect_for_a(BITSELECT,1360)@10
    i_unnamed_gradient112_BitSelect_for_a_b <= i_unnamed_gradient110_vt_join_q(11 downto 4);

    -- redist7_i_unnamed_gradient112_BitSelect_for_a_b_1(DELAY,1426)
    redist7_i_unnamed_gradient112_BitSelect_for_a_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_gradient112_BitSelect_for_a_b, xout => redist7_i_unnamed_gradient112_BitSelect_for_a_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_gradient112_join(BITJOIN,1361)@11
    i_unnamed_gradient112_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & redist7_i_unnamed_gradient112_BitSelect_for_a_b_1_q & GND_q & GND_q & GND_q & GND_q;

    -- i_unnamed_gradient112_vt_select_11(BITSELECT,565)@11
    i_unnamed_gradient112_vt_select_11_b <= i_unnamed_gradient112_join_q(11 downto 4);

    -- i_unnamed_gradient112_vt_join(BITJOIN,564)@11
    i_unnamed_gradient112_vt_join_q <= i_mul24_119_add688_gradient_vt_const_31_q & i_unnamed_gradient112_vt_select_11_b & i_unnamed_gradient101_vt_const_3_q;

    -- rightShiftStage2Idx1Rng1_uid951_i_unnamed_gradient108_shift_x(BITSELECT,950)@10
    rightShiftStage2Idx1Rng1_uid951_i_unnamed_gradient108_shift_x_b <= rightShiftStage1_uid950_i_unnamed_gradient108_shift_x_q(31 downto 1);

    -- rightShiftStage2Idx1_uid953_i_unnamed_gradient108_shift_x(BITJOIN,952)@10
    rightShiftStage2Idx1_uid953_i_unnamed_gradient108_shift_x_q <= GND_q & rightShiftStage2Idx1Rng1_uid951_i_unnamed_gradient108_shift_x_b;

    -- rightShiftStage2_uid955_i_unnamed_gradient108_shift_x(MUX,954)@10
    rightShiftStage2_uid955_i_unnamed_gradient108_shift_x_s <= VCC_q;
    rightShiftStage2_uid955_i_unnamed_gradient108_shift_x_combproc: PROCESS (rightShiftStage2_uid955_i_unnamed_gradient108_shift_x_s, rightShiftStage1_uid950_i_unnamed_gradient108_shift_x_q, rightShiftStage2Idx1_uid953_i_unnamed_gradient108_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid955_i_unnamed_gradient108_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid955_i_unnamed_gradient108_shift_x_q <= rightShiftStage1_uid950_i_unnamed_gradient108_shift_x_q;
            WHEN "1" => rightShiftStage2_uid955_i_unnamed_gradient108_shift_x_q <= rightShiftStage2Idx1_uid953_i_unnamed_gradient108_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid955_i_unnamed_gradient108_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient107_vt_select_10(BITSELECT,552)@10
    i_unnamed_gradient107_vt_select_10_b <= rightShiftStage2_uid955_i_unnamed_gradient108_shift_x_q(10 downto 0);

    -- i_unnamed_gradient107_vt_join(BITJOIN,551)@10
    i_unnamed_gradient107_vt_join_q <= i_reduction_gradient_15_gradient_vt_const_31_q & i_unnamed_gradient107_vt_select_10_b;

    -- i_unnamed_gradient109_BitSelect_for_a(BITSELECT,1358)@10
    i_unnamed_gradient109_BitSelect_for_a_b <= i_unnamed_gradient107_vt_join_q(10 downto 3);

    -- i_unnamed_gradient109_join(BITJOIN,1359)@10
    i_unnamed_gradient109_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_unnamed_gradient109_BitSelect_for_a_b & GND_q & GND_q & GND_q;

    -- i_unnamed_gradient109_vt_select_10(BITSELECT,557)@10
    i_unnamed_gradient109_vt_select_10_b <= i_unnamed_gradient109_join_q(10 downto 3);

    -- i_unnamed_gradient109_vt_join(BITJOIN,556)@10
    i_unnamed_gradient109_vt_join_q <= i_reduction_gradient_15_gradient_vt_const_31_q & i_unnamed_gradient109_vt_select_10_b & i_unnamed_gradient109_vt_const_2_q;

    -- rightShiftStage1Idx1Rng8_uid817_i_shr19_1_1_gradient_gradient103_shift_x(BITSELECT,816)@10
    rightShiftStage1Idx1Rng8_uid817_i_shr19_1_1_gradient_gradient103_shift_x_b <= rightShiftStage0_uid766_i_shr17_1_1_gradient_gradient102_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid819_i_shr19_1_1_gradient_gradient103_shift_x(BITJOIN,818)@10
    rightShiftStage1Idx1_uid819_i_shr19_1_1_gradient_gradient103_shift_x_q <= i_unnamed_gradient172_vt_const_7_q & rightShiftStage1Idx1Rng8_uid817_i_shr19_1_1_gradient_gradient103_shift_x_b;

    -- rightShiftStage1_uid821_i_shr19_1_1_gradient_gradient103_shift_x(MUX,820)@10
    rightShiftStage1_uid821_i_shr19_1_1_gradient_gradient103_shift_x_s <= VCC_q;
    rightShiftStage1_uid821_i_shr19_1_1_gradient_gradient103_shift_x_combproc: PROCESS (rightShiftStage1_uid821_i_shr19_1_1_gradient_gradient103_shift_x_s, rightShiftStage0_uid766_i_shr17_1_1_gradient_gradient102_shift_x_q, rightShiftStage1Idx1_uid819_i_shr19_1_1_gradient_gradient103_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid821_i_shr19_1_1_gradient_gradient103_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid821_i_shr19_1_1_gradient_gradient103_shift_x_q <= rightShiftStage0_uid766_i_shr17_1_1_gradient_gradient102_shift_x_q;
            WHEN "1" => rightShiftStage1_uid821_i_shr19_1_1_gradient_gradient103_shift_x_q <= rightShiftStage1Idx1_uid819_i_shr19_1_1_gradient_gradient103_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid821_i_shr19_1_1_gradient_gradient103_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr19_1_1_gradient_vt_select_7(BITSELECT,512)@10
    i_shr19_1_1_gradient_vt_select_7_b <= rightShiftStage1_uid821_i_shr19_1_1_gradient_gradient103_shift_x_q(7 downto 0);

    -- i_shr19_1_1_gradient_vt_join(BITJOIN,511)@10
    i_shr19_1_1_gradient_vt_join_q <= i_mul22_118_masked_gradient_vt_const_31_q & i_shr19_1_1_gradient_vt_select_7_b;

    -- i_mul24_1_1_add750_gradient(ADD,381)@10
    i_mul24_1_1_add750_gradient_a <= STD_LOGIC_VECTOR("0" & i_shr19_1_1_gradient_vt_join_q);
    i_mul24_1_1_add750_gradient_b <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient109_vt_join_q);
    i_mul24_1_1_add750_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul24_1_1_add750_gradient_a) + UNSIGNED(i_mul24_1_1_add750_gradient_b));
    i_mul24_1_1_add750_gradient_q <= i_mul24_1_1_add750_gradient_o(32 downto 0);

    -- bgTrunc_i_mul24_1_1_add750_gradient_sel_x(BITSELECT,16)@10
    bgTrunc_i_mul24_1_1_add750_gradient_sel_x_b <= i_mul24_1_1_add750_gradient_q(31 downto 0);

    -- i_mul24_1_1_add750_gradient_vt_select_11(BITSELECT,384)@10
    i_mul24_1_1_add750_gradient_vt_select_11_b <= bgTrunc_i_mul24_1_1_add750_gradient_sel_x_b(11 downto 0);

    -- redist42_i_mul24_1_1_add750_gradient_vt_select_11_b_1(DELAY,1461)
    redist42_i_mul24_1_1_add750_gradient_vt_select_11_b_1 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul24_1_1_add750_gradient_vt_select_11_b, xout => redist42_i_mul24_1_1_add750_gradient_vt_select_11_b_1_q, clk => clock, aclr => resetn );

    -- i_mul24_1_1_add750_gradient_vt_join(BITJOIN,383)@11
    i_mul24_1_1_add750_gradient_vt_join_q <= i_mul24_119_add688_gradient_vt_const_31_q & redist42_i_mul24_1_1_add750_gradient_vt_select_11_b_1_q;

    -- i_mul24_1_1_add806_gradient(ADD,385)@11
    i_mul24_1_1_add806_gradient_a <= STD_LOGIC_VECTOR("0" & i_mul24_1_1_add750_gradient_vt_join_q);
    i_mul24_1_1_add806_gradient_b <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient112_vt_join_q);
    i_mul24_1_1_add806_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul24_1_1_add806_gradient_a) + UNSIGNED(i_mul24_1_1_add806_gradient_b));
    i_mul24_1_1_add806_gradient_q <= i_mul24_1_1_add806_gradient_o(32 downto 0);

    -- bgTrunc_i_mul24_1_1_add806_gradient_sel_x(BITSELECT,17)@11
    bgTrunc_i_mul24_1_1_add806_gradient_sel_x_b <= i_mul24_1_1_add806_gradient_q(31 downto 0);

    -- i_mul24_1_1_add806_gradient_vt_select_12(BITSELECT,388)@11
    i_mul24_1_1_add806_gradient_vt_select_12_b <= bgTrunc_i_mul24_1_1_add806_gradient_sel_x_b(12 downto 0);

    -- redist41_i_mul24_1_1_add806_gradient_vt_select_12_b_1(DELAY,1460)
    redist41_i_mul24_1_1_add806_gradient_vt_select_12_b_1 : dspba_delay
    GENERIC MAP ( width => 13, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul24_1_1_add806_gradient_vt_select_12_b, xout => redist41_i_mul24_1_1_add806_gradient_vt_select_12_b_1_q, clk => clock, aclr => resetn );

    -- i_mul24_1_1_add806_gradient_vt_join(BITJOIN,387)@12
    i_mul24_1_1_add806_gradient_vt_join_q <= i_mul24_119_add744_gradient_vt_const_31_q & redist41_i_mul24_1_1_add806_gradient_vt_select_12_b_1_q;

    -- i_reduction_gradient_6_gradient(ADD,475)@12
    i_reduction_gradient_6_gradient_a <= STD_LOGIC_VECTOR("0" & i_mul24_1_1_add806_gradient_vt_join_q);
    i_reduction_gradient_6_gradient_b <= STD_LOGIC_VECTOR("0" & i_mul22_1_1_add310_gradient_vt_join_q);
    i_reduction_gradient_6_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_gradient_6_gradient_a) + UNSIGNED(i_reduction_gradient_6_gradient_b));
    i_reduction_gradient_6_gradient_q <= i_reduction_gradient_6_gradient_o(32 downto 0);

    -- bgTrunc_i_reduction_gradient_6_gradient_sel_x(BITSELECT,39)@12
    bgTrunc_i_reduction_gradient_6_gradient_sel_x_b <= i_reduction_gradient_6_gradient_q(31 downto 0);

    -- i_reduction_gradient_6_gradient_vt_select_16(BITSELECT,478)@12
    i_reduction_gradient_6_gradient_vt_select_16_b <= bgTrunc_i_reduction_gradient_6_gradient_sel_x_b(16 downto 0);

    -- redist24_i_reduction_gradient_6_gradient_vt_select_16_b_1(DELAY,1443)
    redist24_i_reduction_gradient_6_gradient_vt_select_16_b_1 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_gradient_6_gradient_vt_select_16_b, xout => redist24_i_reduction_gradient_6_gradient_vt_select_16_b_1_q, clk => clock, aclr => resetn );

    -- i_reduction_gradient_6_gradient_vt_join(BITJOIN,477)@13
    i_reduction_gradient_6_gradient_vt_join_q <= i_reduction_gradient_0_gradient_vt_const_31_q & redist24_i_reduction_gradient_6_gradient_vt_select_16_b_1_q;

    -- i_reduction_gradient_8_gradient(ADD,484)@13
    i_reduction_gradient_8_gradient_a <= STD_LOGIC_VECTOR("0" & i_reduction_gradient_6_gradient_vt_join_q);
    i_reduction_gradient_8_gradient_b <= STD_LOGIC_VECTOR("0" & i_reduction_gradient_7_gradient_vt_join_q);
    i_reduction_gradient_8_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_gradient_8_gradient_a) + UNSIGNED(i_reduction_gradient_8_gradient_b));
    i_reduction_gradient_8_gradient_q <= i_reduction_gradient_8_gradient_o(32 downto 0);

    -- bgTrunc_i_reduction_gradient_8_gradient_sel_x(BITSELECT,41)@13
    bgTrunc_i_reduction_gradient_8_gradient_sel_x_b <= i_reduction_gradient_8_gradient_q(31 downto 0);

    -- i_reduction_gradient_8_gradient_vt_select_17(BITSELECT,487)@13
    i_reduction_gradient_8_gradient_vt_select_17_b <= bgTrunc_i_reduction_gradient_8_gradient_sel_x_b(17 downto 0);

    -- i_reduction_gradient_8_gradient_vt_join(BITJOIN,486)@13
    i_reduction_gradient_8_gradient_vt_join_q <= i_reduction_gradient_11_gradient_vt_const_31_q & i_reduction_gradient_8_gradient_vt_select_17_b;

    -- rightShiftStage0_uid881_i_shr27_1_1_gradient_gradient162_shift_x(MUX,880)@13
    rightShiftStage0_uid881_i_shr27_1_1_gradient_gradient162_shift_x_s <= VCC_q;
    rightShiftStage0_uid881_i_shr27_1_1_gradient_gradient162_shift_x_combproc: PROCESS (rightShiftStage0_uid881_i_shr27_1_1_gradient_gradient162_shift_x_s, i_reduction_gradient_8_gradient_vt_join_q, rightShiftStage0Idx1_uid879_i_shr27_1_1_gradient_gradient162_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid881_i_shr27_1_1_gradient_gradient162_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid881_i_shr27_1_1_gradient_gradient162_shift_x_q <= i_reduction_gradient_8_gradient_vt_join_q;
            WHEN "1" => rightShiftStage0_uid881_i_shr27_1_1_gradient_gradient162_shift_x_q <= rightShiftStage0Idx1_uid879_i_shr27_1_1_gradient_gradient162_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid881_i_shr27_1_1_gradient_gradient162_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr27_1_1_gradient_vt_select_9(BITSELECT,527)@13
    i_shr27_1_1_gradient_vt_select_9_b <= rightShiftStage0_uid881_i_shr27_1_1_gradient_gradient162_shift_x_q(9 downto 0);

    -- redist20_i_shr27_1_1_gradient_vt_select_9_b_1(DELAY,1439)
    redist20_i_shr27_1_1_gradient_vt_select_9_b_1 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_shr27_1_1_gradient_vt_select_9_b, xout => redist20_i_shr27_1_1_gradient_vt_select_9_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_gradient170_im3_shift0(BITSHIFT,1417)@14
    i_unnamed_gradient170_im3_shift0_qint <= redist20_i_shr27_1_1_gradient_vt_select_9_b_1_q & "00000000000000";
    i_unnamed_gradient170_im3_shift0_q <= i_unnamed_gradient170_im3_shift0_qint(23 downto 0);

    -- i_unnamed_gradient170_im3_sub_1(SUB,1418)@14 + 1
    i_unnamed_gradient170_im3_sub_1_a <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient170_im3_shift0_q);
    i_unnamed_gradient170_im3_sub_1_b <= STD_LOGIC_VECTOR("000000000000000" & redist20_i_shr27_1_1_gradient_vt_select_9_b_1_q);
    i_unnamed_gradient170_im3_sub_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_unnamed_gradient170_im3_sub_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_unnamed_gradient170_im3_sub_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_gradient170_im3_sub_1_a) - UNSIGNED(i_unnamed_gradient170_im3_sub_1_b));
        END IF;
    END PROCESS;
    i_unnamed_gradient170_im3_sub_1_q <= i_unnamed_gradient170_im3_sub_1_o(24 downto 0);

    -- i_unnamed_gradient170_align_7(BITSHIFT,1399)@15
    i_unnamed_gradient170_align_7_qint <= i_unnamed_gradient170_im3_sub_1_q(23 downto 0) & "000000000000000000";
    i_unnamed_gradient170_align_7_q <= i_unnamed_gradient170_align_7_qint(41 downto 0);

    -- i_unnamed_gradient170_im0_shift0(BITSHIFT,1414)@14
    i_unnamed_gradient170_im0_shift0_qint <= redist20_i_shr27_1_1_gradient_vt_select_9_b_1_q & "0000000000000000";
    i_unnamed_gradient170_im0_shift0_q <= i_unnamed_gradient170_im0_shift0_qint(25 downto 0);

    -- i_unnamed_gradient170_im0_sub_1(SUB,1415)@14 + 1
    i_unnamed_gradient170_im0_sub_1_a <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient170_im0_shift0_q);
    i_unnamed_gradient170_im0_sub_1_b <= STD_LOGIC_VECTOR("00000000000000000" & redist20_i_shr27_1_1_gradient_vt_select_9_b_1_q);
    i_unnamed_gradient170_im0_sub_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_unnamed_gradient170_im0_sub_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_unnamed_gradient170_im0_sub_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_gradient170_im0_sub_1_a) - UNSIGNED(i_unnamed_gradient170_im0_sub_1_b));
        END IF;
    END PROCESS;
    i_unnamed_gradient170_im0_sub_1_q <= i_unnamed_gradient170_im0_sub_1_o(26 downto 0);

    -- i_unnamed_gradient170_im0_shift2(BITSHIFT,1416)@15
    i_unnamed_gradient170_im0_shift2_qint <= i_unnamed_gradient170_im0_sub_1_q & "00";
    i_unnamed_gradient170_im0_shift2_q <= i_unnamed_gradient170_im0_shift2_qint(28 downto 0);

    -- i_unnamed_gradient170_result_add_0_0(ADD,1401)@15
    i_unnamed_gradient170_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000000" & i_unnamed_gradient170_im0_shift2_q);
    i_unnamed_gradient170_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient170_align_7_q);
    i_unnamed_gradient170_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_gradient170_result_add_0_0_a) + UNSIGNED(i_unnamed_gradient170_result_add_0_0_b));
    i_unnamed_gradient170_result_add_0_0_q <= i_unnamed_gradient170_result_add_0_0_o(42 downto 0);

    -- i_unnamed_gradient170_extender_x(BITJOIN,193)@15
    i_unnamed_gradient170_extender_x_q <= i_unnamed_gradient170_multconst_x_q & i_unnamed_gradient170_result_add_0_0_q(41 downto 0);

    -- bgTrunc_i_unnamed_gradient170_sel_x(BITSELECT,43)@15
    bgTrunc_i_unnamed_gradient170_sel_x_b <= i_unnamed_gradient170_extender_x_q(31 downto 0);

    -- i_unnamed_gradient170_vt_select_31(BITSELECT,689)@15
    i_unnamed_gradient170_vt_select_31_b <= bgTrunc_i_unnamed_gradient170_sel_x_b(31 downto 2);

    -- redist15_i_unnamed_gradient170_vt_select_31_b_1(DELAY,1434)
    redist15_i_unnamed_gradient170_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 30, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_gradient170_vt_select_31_b, xout => redist15_i_unnamed_gradient170_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_gradient170_vt_join(BITJOIN,688)@16
    i_unnamed_gradient170_vt_join_q <= redist15_i_unnamed_gradient170_vt_select_31_b_1_q & i_unnamed_gradient119_vt_const_31_q;

    -- i_reduction_gradient_18_gradient(ADD,452)@16
    i_reduction_gradient_18_gradient_a <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient170_vt_join_q);
    i_reduction_gradient_18_gradient_b <= STD_LOGIC_VECTOR("0" & i_reduction_gradient_17_gradient_vt_join_q);
    i_reduction_gradient_18_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_gradient_18_gradient_a) + UNSIGNED(i_reduction_gradient_18_gradient_b));
    i_reduction_gradient_18_gradient_q <= i_reduction_gradient_18_gradient_o(32 downto 0);

    -- bgTrunc_i_reduction_gradient_18_gradient_sel_x(BITSELECT,33)@16
    bgTrunc_i_reduction_gradient_18_gradient_sel_x_b <= i_reduction_gradient_18_gradient_q(31 downto 0);

    -- redist63_bgTrunc_i_reduction_gradient_18_gradient_sel_x_b_1(DELAY,1482)
    redist63_bgTrunc_i_reduction_gradient_18_gradient_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_reduction_gradient_18_gradient_sel_x_b, xout => redist63_bgTrunc_i_reduction_gradient_18_gradient_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- leftShiftStage0_uid1207_i_unnamed_gradient175_shift_x(MUX,1206)@17
    leftShiftStage0_uid1207_i_unnamed_gradient175_shift_x_s <= VCC_q;
    leftShiftStage0_uid1207_i_unnamed_gradient175_shift_x_combproc: PROCESS (leftShiftStage0_uid1207_i_unnamed_gradient175_shift_x_s, redist63_bgTrunc_i_reduction_gradient_18_gradient_sel_x_b_1_q, leftShiftStage0Idx1_uid1205_i_unnamed_gradient175_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1207_i_unnamed_gradient175_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1207_i_unnamed_gradient175_shift_x_q <= redist63_bgTrunc_i_reduction_gradient_18_gradient_sel_x_b_1_q;
            WHEN "1" => leftShiftStage0_uid1207_i_unnamed_gradient175_shift_x_q <= leftShiftStage0Idx1_uid1205_i_unnamed_gradient175_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1207_i_unnamed_gradient175_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient174_vt_select_31(BITSELECT,695)@17
    i_unnamed_gradient174_vt_select_31_b <= leftShiftStage0_uid1207_i_unnamed_gradient175_shift_x_q(31 downto 16);

    -- redist14_i_unnamed_gradient174_vt_select_31_b_1(DELAY,1433)
    redist14_i_unnamed_gradient174_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_gradient174_vt_select_31_b, xout => redist14_i_unnamed_gradient174_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_mul22_118_add186_gradient_vt_const_31(CONSTANT,334)
    i_mul22_118_add186_gradient_vt_const_31_q <= "0000000000000000";

    -- i_unnamed_gradient174_vt_join(BITJOIN,694)@18
    i_unnamed_gradient174_vt_join_q <= redist14_i_unnamed_gradient174_vt_select_31_b_1_q & i_mul22_118_add186_gradient_vt_const_31_q;

    -- leftShiftStage0Idx1Rng8_uid1195_i_unnamed_gradient173_shift_x(BITSELECT,1194)@17
    leftShiftStage0Idx1Rng8_uid1195_i_unnamed_gradient173_shift_x_in <= redist63_bgTrunc_i_reduction_gradient_18_gradient_sel_x_b_1_q(23 downto 0);
    leftShiftStage0Idx1Rng8_uid1195_i_unnamed_gradient173_shift_x_b <= leftShiftStage0Idx1Rng8_uid1195_i_unnamed_gradient173_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid1196_i_unnamed_gradient173_shift_x(BITJOIN,1195)@17
    leftShiftStage0Idx1_uid1196_i_unnamed_gradient173_shift_x_q <= leftShiftStage0Idx1Rng8_uid1195_i_unnamed_gradient173_shift_x_b & i_unnamed_gradient172_vt_const_7_q;

    -- leftShiftStage0_uid1198_i_unnamed_gradient173_shift_x(MUX,1197)@17
    leftShiftStage0_uid1198_i_unnamed_gradient173_shift_x_s <= VCC_q;
    leftShiftStage0_uid1198_i_unnamed_gradient173_shift_x_combproc: PROCESS (leftShiftStage0_uid1198_i_unnamed_gradient173_shift_x_s, redist63_bgTrunc_i_reduction_gradient_18_gradient_sel_x_b_1_q, leftShiftStage0Idx1_uid1196_i_unnamed_gradient173_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1198_i_unnamed_gradient173_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1198_i_unnamed_gradient173_shift_x_q <= redist63_bgTrunc_i_reduction_gradient_18_gradient_sel_x_b_1_q;
            WHEN "1" => leftShiftStage0_uid1198_i_unnamed_gradient173_shift_x_q <= leftShiftStage0Idx1_uid1196_i_unnamed_gradient173_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1198_i_unnamed_gradient173_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_gradient172_vt_select_31(BITSELECT,692)@17
    i_unnamed_gradient172_vt_select_31_b <= leftShiftStage0_uid1198_i_unnamed_gradient173_shift_x_q(31 downto 8);

    -- i_unnamed_gradient172_vt_join(BITJOIN,691)@17
    i_unnamed_gradient172_vt_join_q <= i_unnamed_gradient172_vt_select_31_b & i_unnamed_gradient172_vt_const_7_q;

    -- i_add43_add960_gradient(ADD,306)@17
    i_add43_add960_gradient_a <= STD_LOGIC_VECTOR("0" & redist63_bgTrunc_i_reduction_gradient_18_gradient_sel_x_b_1_q);
    i_add43_add960_gradient_b <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient172_vt_join_q);
    i_add43_add960_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add43_add960_gradient_a) + UNSIGNED(i_add43_add960_gradient_b));
    i_add43_add960_gradient_q <= i_add43_add960_gradient_o(32 downto 0);

    -- bgTrunc_i_add43_add960_gradient_sel_x(BITSELECT,2)@17
    bgTrunc_i_add43_add960_gradient_sel_x_b <= i_add43_add960_gradient_q(31 downto 0);

    -- redist64_bgTrunc_i_add43_add960_gradient_sel_x_b_1(DELAY,1483)
    redist64_bgTrunc_i_add43_add960_gradient_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add43_add960_gradient_sel_x_b, xout => redist64_bgTrunc_i_add43_add960_gradient_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_add43_add992_gradient(ADD,307)@18
    i_add43_add992_gradient_a <= STD_LOGIC_VECTOR("0" & redist64_bgTrunc_i_add43_add960_gradient_sel_x_b_1_q);
    i_add43_add992_gradient_b <= STD_LOGIC_VECTOR("0" & i_unnamed_gradient174_vt_join_q);
    i_add43_add992_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add43_add992_gradient_a) + UNSIGNED(i_add43_add992_gradient_b));
    i_add43_add992_gradient_q <= i_add43_add992_gradient_o(32 downto 0);

    -- bgTrunc_i_add43_add992_gradient_sel_x(BITSELECT,3)@18
    bgTrunc_i_add43_add992_gradient_sel_x_b <= i_add43_add992_gradient_q(31 downto 0);

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,228)@18
    out_c1_exi1_0 <= GND_q;
    out_c1_exi1_1 <= bgTrunc_i_add43_add992_gradient_sel_x_b;
    out_o_valid <= redist62_sync_in_aunroll_x_in_i_valid_9_q;

END normal;
