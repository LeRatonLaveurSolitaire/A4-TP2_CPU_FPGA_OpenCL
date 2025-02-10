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

-- VHDL created from i_sfc_logic_c0_for_cond_preheader_gradient_c0_enter_gradient2
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

entity i_sfc_logic_c0_for_cond_preheader_gradient_c0_enter_gradient2 is
    port (
        in_c0_eni1_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni1_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_frame_in : in std_logic_vector(63 downto 0);  -- ufix64
        in_frame_out : in std_logic_vector(63 downto 0);  -- ufix64
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_iterations : in std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi7_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi7_1 : out std_logic_vector(9 downto 0);  -- ufix10
        out_c0_exi7_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi7_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi7_4 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi7_5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi7_6 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi7_7 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_cond_preheader_gradient_c0_enter_gradient2;

architecture normal of i_sfc_logic_c0_for_cond_preheader_gradient_c0_enter_gradient2 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going_gradient11 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_initeration_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_initeration_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_not_exitcond_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_not_exitcond_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_initeration_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_not_exitcond_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i10_coalesce_counter_pop13_gradient4 is
        port (
            in_data_in : in std_logic_vector(9 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_13 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_13 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(9 downto 0);  -- Fixed Point
            out_feedback_stall_out_13 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_count_08_pop10_gradient24 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_10 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i4_cleanups_pop12_gradient7 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_12 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_stall_out_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i4_initerations_pop11_gradient15 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_11 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_stall_out_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i10_coalesce_counter_push13_gradient13 is
        port (
            in_data_in : in std_logic_vector(9 downto 0);  -- Fixed Point
            in_feedback_stall_in_13 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(9 downto 0);  -- Fixed Point
            out_feedback_out_13 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_13 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_lastiniteration_gradient22 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_1 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond_gradient42 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_first_cleanup : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_2 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_count_08_push10_gradient36 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_10 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i4_cleanups_push12_gradient45 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_feedback_stall_in_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_out_12 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i4_initerations_push11_gradient18 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_feedback_stall_in_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_out_11 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_frame_in_sync_buffer_gradient27 is
        port (
            in_buffer_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_frame_out_sync_buffer_gradient33 is
        port (
            in_buffer_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_iterations_sync_buffer993_gradient30 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_iterations_sync_buffer_gradient38 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_inc46_gradient_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_next_coalesce_gradient_sel_x_b : STD_LOGIC_VECTOR (9 downto 0);
    signal dupName_0_c_i32_1gr_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx45_gradient_gradient35_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_multconst_x_q : STD_LOGIC_VECTOR (60 downto 0);
    signal i_arrayidx45_gradient_gradient35_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx45_gradient_gradient35_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx45_gradient_gradient35_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx45_gradient_gradient35_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx45_gradient_gradient35_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx6_gradient_gradient29_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx6_gradient_gradient29_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx6_gradient_gradient29_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx6_gradient_gradient29_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx6_gradient_gradient29_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx6_gradient_gradient29_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx6_gradient_gradient29_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_cleanups_shl_gradient_sel_x_b : STD_LOGIC_VECTOR (3 downto 0);
    signal i_idxprom5_gradient_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_next_cleanups_gradient_gradient44_shift_narrow_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal c_i10_1gr_q : STD_LOGIC_VECTOR (9 downto 0);
    signal c_i10_295_q : STD_LOGIC_VECTOR (9 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_599_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i4_0gr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal c_i4_1gr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal c_i4_7gr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_acl_pipeline_keep_going_gradient_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_gradient_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_gradient_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_gradient_out_initeration_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_gradient_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_gradient_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i10_coalesce_counter_pop13_gradient_out_data_out : STD_LOGIC_VECTOR (9 downto 0);
    signal i_acl_pop_i10_coalesce_counter_pop13_gradient_out_feedback_stall_out_13 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_count_08_pop10_gradient_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_count_08_pop10_gradient_out_feedback_stall_out_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i4_cleanups_pop12_gradient_out_data_out : STD_LOGIC_VECTOR (3 downto 0);
    signal i_acl_pop_i4_cleanups_pop12_gradient_out_feedback_stall_out_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i4_initerations_pop11_gradient_out_data_out : STD_LOGIC_VECTOR (3 downto 0);
    signal i_acl_pop_i4_initerations_pop11_gradient_out_feedback_stall_out_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i10_coalesce_counter_push13_gradient_out_feedback_out_13 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i10_coalesce_counter_push13_gradient_out_feedback_valid_out_13 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_lastiniteration_gradient_out_feedback_out_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_lastiniteration_gradient_out_feedback_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond_gradient_out_feedback_out_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond_gradient_out_feedback_valid_out_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_count_08_push10_gradient_out_feedback_out_10 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_count_08_push10_gradient_out_feedback_valid_out_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i4_cleanups_push12_gradient_out_feedback_out_12 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i4_cleanups_push12_gradient_out_feedback_valid_out_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i4_initerations_push11_gradient_out_feedback_out_11 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i4_initerations_push11_gradient_out_feedback_valid_out_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cleanups_shl_gradient_vt_const_3_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_cleanups_shl_gradient_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_cleanups_shl_gradient_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp4_gradient_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp4_gradient_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp4_gradient_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp4_gradient_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp4_xor_gradient_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp7_phi_decision554_or_gradient_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp7_rm_gradient_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp7_rm_gradient_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp_gradient_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp_gradient_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_coalesce_counter_lobit_gradient_vt_const_9_q : STD_LOGIC_VECTOR (8 downto 0);
    signal i_coalesce_counter_lobit_gradient_vt_join_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_coalesce_counter_lobit_gradient_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup_gradient_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup_xor_or_gradient_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc46_gradient_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc46_gradient_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc46_gradient_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc46_gradient_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_last_initeration_gradient_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_masked_gradient_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_next_coalesce_gradient_a : STD_LOGIC_VECTOR (10 downto 0);
    signal i_next_coalesce_gradient_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_next_coalesce_gradient_o : STD_LOGIC_VECTOR (10 downto 0);
    signal i_next_coalesce_gradient_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_next_coalesce_select_gradient_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_next_coalesce_select_gradient_vt_join_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_next_coalesce_select_gradient_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_next_initerations_gradient_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_next_initerations_gradient_vt_select_2_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_notexit_gradient_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_gradient_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_frame_in_sync_buffer_gradient_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_frame_out_sync_buffer_gradient_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_iterations_sync_buffer993_gradient_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_iterations_sync_buffer_gradient_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_gradient20_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_gradient20_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_gradient41_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_gradient9_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_gradient9_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_gradient9_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor_gradient_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_x_join_13_q : STD_LOGIC_VECTOR (56 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_x_align_14_q : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_x_align_14_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_x_join_16_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx6_gradient_gradient29_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx6_gradient_gradient29_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx6_gradient_gradient29_mult_x_join_13_q : STD_LOGIC_VECTOR (56 downto 0);
    signal i_arrayidx6_gradient_gradient29_mult_x_align_14_q : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx6_gradient_gradient29_mult_x_align_14_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx6_gradient_gradient29_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx6_gradient_gradient29_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx6_gradient_gradient29_mult_x_join_16_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx6_gradient_gradient29_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx6_gradient_gradient29_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx6_gradient_gradient29_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx6_gradient_gradient29_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (67 downto 0);
    signal rightShiftStage0Idx1Rng8_uid175_i_coalesce_counter_lobit_gradient_gradient6_shift_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0Idx1Pad8_uid176_i_coalesce_counter_lobit_gradient_gradient6_shift_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage0Idx1_uid177_i_coalesce_counter_lobit_gradient_gradient6_shift_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal rightShiftStage0_uid179_i_coalesce_counter_lobit_gradient_gradient6_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid179_i_coalesce_counter_lobit_gradient_gradient6_shift_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal rightShiftStage1Idx1Rng1_uid180_i_coalesce_counter_lobit_gradient_gradient6_shift_x_b : STD_LOGIC_VECTOR (8 downto 0);
    signal rightShiftStage1Idx1_uid182_i_coalesce_counter_lobit_gradient_gradient6_shift_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal rightShiftStage1_uid184_i_coalesce_counter_lobit_gradient_gradient6_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid184_i_coalesce_counter_lobit_gradient_gradient6_shift_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal leftShiftStage0Idx1Rng1_uid190_i_next_cleanups_gradient_gradient44_shift_x_in : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx1Rng1_uid190_i_next_cleanups_gradient_gradient44_shift_x_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx1_uid191_i_next_cleanups_gradient_gradient44_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStageSel0Dto0_uid192_i_next_cleanups_gradient_gradient44_shift_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStageSel0Dto0_uid192_i_next_cleanups_gradient_gradient44_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid193_i_next_cleanups_gradient_gradient44_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid193_i_next_cleanups_gradient_gradient44_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage0Idx1Rng1_uid198_i_next_initerations_gradient_gradient17_shift_x_b : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage0Idx1_uid200_i_next_initerations_gradient_gradient17_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage0_uid202_i_next_initerations_gradient_gradient17_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid202_i_next_initerations_gradient_gradient17_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_gradient20_BitSelect_for_a_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_gradient20_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx6_gradient_gradient29_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx6_gradient_gradient29_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx6_gradient_gradient29_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx6_gradient_gradient29_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx6_gradient_gradient29_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx6_gradient_gradient29_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx6_gradient_gradient29_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx6_gradient_gradient29_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx45_gradient_gradient35_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_acl_pop_i32_count_08_pop10_gradient_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_i_acl_pipeline_keep_going_gradient_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_acl_pipeline_keep_going_gradient_out_data_out_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_sync_in_aunroll_x_in_c0_eni1_1_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni1_1_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_sync_in_aunroll_x_in_i_valid_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_arrayidx6_gradient_gradient29_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist8_i_arrayidx45_gradient_gradient35_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist9_bgTrunc_i_inc46_gradient_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist5_sync_in_aunroll_x_in_i_valid_1(DELAY,223)
    redist5_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist5_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist6_sync_in_aunroll_x_in_i_valid_2(DELAY,224)
    redist6_sync_in_aunroll_x_in_i_valid_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist5_sync_in_aunroll_x_in_i_valid_1_q, xout => redist6_sync_in_aunroll_x_in_i_valid_2_q, clk => clock, aclr => resetn );

    -- c_i4_0gr(CONSTANT,64)
    c_i4_0gr_q <= "0000";

    -- i_cleanups_shl_gradient_vt_const_3(CONSTANT,80)
    i_cleanups_shl_gradient_vt_const_3_q <= "000";

    -- c_i4_1gr(CONSTANT,65)
    c_i4_1gr_q <= "0001";

    -- leftShiftStage0Idx1Rng1_uid190_i_next_cleanups_gradient_gradient44_shift_x(BITSELECT,189)@3
    leftShiftStage0Idx1Rng1_uid190_i_next_cleanups_gradient_gradient44_shift_x_in <= i_acl_pop_i4_cleanups_pop12_gradient_out_data_out(2 downto 0);
    leftShiftStage0Idx1Rng1_uid190_i_next_cleanups_gradient_gradient44_shift_x_b <= leftShiftStage0Idx1Rng1_uid190_i_next_cleanups_gradient_gradient44_shift_x_in(2 downto 0);

    -- leftShiftStage0Idx1_uid191_i_next_cleanups_gradient_gradient44_shift_x(BITJOIN,190)@3
    leftShiftStage0Idx1_uid191_i_next_cleanups_gradient_gradient44_shift_x_q <= leftShiftStage0Idx1Rng1_uid190_i_next_cleanups_gradient_gradient44_shift_x_b & GND_q;

    -- i_xor_gradient(LOGICAL,121)@3
    i_xor_gradient_q <= i_first_cleanup_gradient_q xor VCC_q;

    -- i_or_gradient(LOGICAL,107)@3
    i_or_gradient_q <= i_unnamed_gradient41_q or i_xor_gradient_q;

    -- i_cleanups_shl_gradient_sel_x(BITSELECT,39)@3
    i_cleanups_shl_gradient_sel_x_b <= std_logic_vector(resize(unsigned(i_or_gradient_q(0 downto 0)), 4));

    -- i_cleanups_shl_gradient_vt_select_0(BITSELECT,82)@3
    i_cleanups_shl_gradient_vt_select_0_b <= i_cleanups_shl_gradient_sel_x_b(0 downto 0);

    -- i_cleanups_shl_gradient_vt_join(BITJOIN,81)@3
    i_cleanups_shl_gradient_vt_join_q <= i_cleanups_shl_gradient_vt_const_3_q & i_cleanups_shl_gradient_vt_select_0_b;

    -- i_next_cleanups_gradient_gradient44_shift_narrow_x(BITSELECT,48)@3
    i_next_cleanups_gradient_gradient44_shift_narrow_x_b <= i_cleanups_shl_gradient_vt_join_q(1 downto 0);

    -- leftShiftStageSel0Dto0_uid192_i_next_cleanups_gradient_gradient44_shift_x(BITSELECT,191)@3
    leftShiftStageSel0Dto0_uid192_i_next_cleanups_gradient_gradient44_shift_x_in <= i_next_cleanups_gradient_gradient44_shift_narrow_x_b(0 downto 0);
    leftShiftStageSel0Dto0_uid192_i_next_cleanups_gradient_gradient44_shift_x_b <= leftShiftStageSel0Dto0_uid192_i_next_cleanups_gradient_gradient44_shift_x_in(0 downto 0);

    -- leftShiftStage0_uid193_i_next_cleanups_gradient_gradient44_shift_x(MUX,192)@3
    leftShiftStage0_uid193_i_next_cleanups_gradient_gradient44_shift_x_s <= leftShiftStageSel0Dto0_uid192_i_next_cleanups_gradient_gradient44_shift_x_b;
    leftShiftStage0_uid193_i_next_cleanups_gradient_gradient44_shift_x_combproc: PROCESS (leftShiftStage0_uid193_i_next_cleanups_gradient_gradient44_shift_x_s, i_acl_pop_i4_cleanups_pop12_gradient_out_data_out, leftShiftStage0Idx1_uid191_i_next_cleanups_gradient_gradient44_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid193_i_next_cleanups_gradient_gradient44_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid193_i_next_cleanups_gradient_gradient44_shift_x_q <= i_acl_pop_i4_cleanups_pop12_gradient_out_data_out;
            WHEN "1" => leftShiftStage0_uid193_i_next_cleanups_gradient_gradient44_shift_x_q <= leftShiftStage0Idx1_uid191_i_next_cleanups_gradient_gradient44_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid193_i_next_cleanups_gradient_gradient44_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_push_i4_cleanups_push12_gradient(BLACKBOX,77)@3
    -- out out_feedback_out_12@20000000
    -- out out_feedback_valid_out_12@20000000
    thei_acl_push_i4_cleanups_push12_gradient : i_acl_push_i4_cleanups_push12_gradient45
    PORT MAP (
        in_data_in => leftShiftStage0_uid193_i_next_cleanups_gradient_gradient44_shift_x_q,
        in_feedback_stall_in_12 => i_acl_pop_i4_cleanups_pop12_gradient_out_feedback_stall_out_12,
        in_keep_going => redist2_i_acl_pipeline_keep_going_gradient_out_data_out_2_q,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_2_q,
        out_feedback_out_12 => i_acl_push_i4_cleanups_push12_gradient_out_feedback_out_12,
        out_feedback_valid_out_12 => i_acl_push_i4_cleanups_push12_gradient_out_feedback_valid_out_12,
        clock => clock,
        resetn => resetn
    );

    -- redist3_sync_in_aunroll_x_in_c0_eni1_1_1(DELAY,221)
    redist3_sync_in_aunroll_x_in_c0_eni1_1_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni1_1, xout => redist3_sync_in_aunroll_x_in_c0_eni1_1_1_q, clk => clock, aclr => resetn );

    -- redist4_sync_in_aunroll_x_in_c0_eni1_1_2(DELAY,222)
    redist4_sync_in_aunroll_x_in_c0_eni1_1_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist3_sync_in_aunroll_x_in_c0_eni1_1_1_q, xout => redist4_sync_in_aunroll_x_in_c0_eni1_1_2_q, clk => clock, aclr => resetn );

    -- c_i4_7gr(CONSTANT,66)
    c_i4_7gr_q <= "0111";

    -- i_acl_pop_i4_cleanups_pop12_gradient(BLACKBOX,71)@3
    -- out out_feedback_stall_out_12@20000000
    thei_acl_pop_i4_cleanups_pop12_gradient : i_acl_pop_i4_cleanups_pop12_gradient7
    PORT MAP (
        in_data_in => c_i4_7gr_q,
        in_dir => redist4_sync_in_aunroll_x_in_c0_eni1_1_2_q,
        in_feedback_in_12 => i_acl_push_i4_cleanups_push12_gradient_out_feedback_out_12,
        in_feedback_valid_in_12 => i_acl_push_i4_cleanups_push12_gradient_out_feedback_valid_out_12,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_2_q,
        out_data_out => i_acl_pop_i4_cleanups_pop12_gradient_out_data_out,
        out_feedback_stall_out_12 => i_acl_pop_i4_cleanups_pop12_gradient_out_feedback_stall_out_12,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_gradient9(LOGICAL,117)@3
    i_unnamed_gradient9_q <= i_acl_pop_i4_cleanups_pop12_gradient_out_data_out and c_i4_1gr_q;

    -- i_unnamed_gradient9_vt_select_0(BITSELECT,120)@3
    i_unnamed_gradient9_vt_select_0_b <= i_unnamed_gradient9_q(0 downto 0);

    -- i_unnamed_gradient9_vt_join(BITJOIN,119)@3
    i_unnamed_gradient9_vt_join_q <= i_cleanups_shl_gradient_vt_const_3_q & i_unnamed_gradient9_vt_select_0_b;

    -- i_first_cleanup_gradient(LOGICAL,91)@3
    i_first_cleanup_gradient_q <= "1" WHEN i_unnamed_gradient9_vt_join_q /= c_i4_0gr_q ELSE "0";

    -- i_syncbuf_iterations_sync_buffer_gradient(BLACKBOX,111)@0
    -- in in_i_dependence@2
    -- in in_valid_in@2
    -- out out_buffer_out@2
    -- out out_valid_out@2
    thei_syncbuf_iterations_sync_buffer_gradient : i_syncbuf_iterations_sync_buffer_gradient38
    PORT MAP (
        in_buffer_in => in_iterations,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist5_sync_in_aunroll_x_in_i_valid_1_q,
        out_buffer_out => i_syncbuf_iterations_sync_buffer_gradient_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_c_i32_1gr_x(CONSTANT,5)
    dupName_0_c_i32_1gr_x_q <= "00000000000000000000000000000001";

    -- i_notexit_gradient(LOGICAL,106)@3
    i_notexit_gradient_q <= i_unnamed_gradient41_q xor VCC_q;

    -- i_acl_push_i1_notexitcond_gradient(BLACKBOX,75)@3
    -- out out_feedback_out_2@20000000
    -- out out_feedback_valid_out_2@20000000
    thei_acl_push_i1_notexitcond_gradient : i_acl_push_i1_notexitcond_gradient42
    PORT MAP (
        in_data_in => i_notexit_gradient_q,
        in_feedback_stall_in_2 => i_acl_pipeline_keep_going_gradient_out_not_exitcond_stall_out,
        in_first_cleanup => i_first_cleanup_gradient_q,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_2_q,
        out_feedback_out_2 => i_acl_push_i1_notexitcond_gradient_out_feedback_out_2,
        out_feedback_valid_out_2 => i_acl_push_i1_notexitcond_gradient_out_feedback_valid_out_2,
        clock => clock,
        resetn => resetn
    );

    -- rightShiftStage0Idx1Rng1_uid198_i_next_initerations_gradient_gradient17_shift_x(BITSELECT,197)@2
    rightShiftStage0Idx1Rng1_uid198_i_next_initerations_gradient_gradient17_shift_x_b <= i_acl_pop_i4_initerations_pop11_gradient_out_data_out(3 downto 1);

    -- rightShiftStage0Idx1_uid200_i_next_initerations_gradient_gradient17_shift_x(BITJOIN,199)@2
    rightShiftStage0Idx1_uid200_i_next_initerations_gradient_gradient17_shift_x_q <= GND_q & rightShiftStage0Idx1Rng1_uid198_i_next_initerations_gradient_gradient17_shift_x_b;

    -- i_acl_push_i4_initerations_push11_gradient(BLACKBOX,78)@2
    -- out out_feedback_out_11@20000000
    -- out out_feedback_valid_out_11@20000000
    thei_acl_push_i4_initerations_push11_gradient : i_acl_push_i4_initerations_push11_gradient18
    PORT MAP (
        in_data_in => i_next_initerations_gradient_vt_join_q,
        in_feedback_stall_in_11 => i_acl_pop_i4_initerations_pop11_gradient_out_feedback_stall_out_11,
        in_keep_going => redist1_i_acl_pipeline_keep_going_gradient_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist5_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_11 => i_acl_push_i4_initerations_push11_gradient_out_feedback_out_11,
        out_feedback_valid_out_11 => i_acl_push_i4_initerations_push11_gradient_out_feedback_valid_out_11,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i4_initerations_pop11_gradient(BLACKBOX,72)@2
    -- out out_feedback_stall_out_11@20000000
    thei_acl_pop_i4_initerations_pop11_gradient : i_acl_pop_i4_initerations_pop11_gradient15
    PORT MAP (
        in_data_in => c_i4_7gr_q,
        in_dir => redist3_sync_in_aunroll_x_in_c0_eni1_1_1_q,
        in_feedback_in_11 => i_acl_push_i4_initerations_push11_gradient_out_feedback_out_11,
        in_feedback_valid_in_11 => i_acl_push_i4_initerations_push11_gradient_out_feedback_valid_out_11,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist5_sync_in_aunroll_x_in_i_valid_1_q,
        out_data_out => i_acl_pop_i4_initerations_pop11_gradient_out_data_out,
        out_feedback_stall_out_11 => i_acl_pop_i4_initerations_pop11_gradient_out_feedback_stall_out_11,
        clock => clock,
        resetn => resetn
    );

    -- rightShiftStage0_uid202_i_next_initerations_gradient_gradient17_shift_x(MUX,201)@2
    rightShiftStage0_uid202_i_next_initerations_gradient_gradient17_shift_x_s <= VCC_q;
    rightShiftStage0_uid202_i_next_initerations_gradient_gradient17_shift_x_combproc: PROCESS (rightShiftStage0_uid202_i_next_initerations_gradient_gradient17_shift_x_s, i_acl_pop_i4_initerations_pop11_gradient_out_data_out, rightShiftStage0Idx1_uid200_i_next_initerations_gradient_gradient17_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid202_i_next_initerations_gradient_gradient17_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid202_i_next_initerations_gradient_gradient17_shift_x_q <= i_acl_pop_i4_initerations_pop11_gradient_out_data_out;
            WHEN "1" => rightShiftStage0_uid202_i_next_initerations_gradient_gradient17_shift_x_q <= rightShiftStage0Idx1_uid200_i_next_initerations_gradient_gradient17_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid202_i_next_initerations_gradient_gradient17_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_next_initerations_gradient_vt_select_2(BITSELECT,105)@2
    i_next_initerations_gradient_vt_select_2_b <= rightShiftStage0_uid202_i_next_initerations_gradient_gradient17_shift_x_q(2 downto 0);

    -- i_next_initerations_gradient_vt_join(BITJOIN,104)@2
    i_next_initerations_gradient_vt_join_q <= GND_q & i_next_initerations_gradient_vt_select_2_b;

    -- i_unnamed_gradient20_BitSelect_for_a(BITSELECT,207)@2
    i_unnamed_gradient20_BitSelect_for_a_b <= i_next_initerations_gradient_vt_join_q(0 downto 0);

    -- i_unnamed_gradient20_join(BITJOIN,208)@2
    i_unnamed_gradient20_join_q <= GND_q & GND_q & GND_q & i_unnamed_gradient20_BitSelect_for_a_b;

    -- i_unnamed_gradient20_vt_select_0(BITSELECT,115)@2
    i_unnamed_gradient20_vt_select_0_b <= i_unnamed_gradient20_join_q(0 downto 0);

    -- i_unnamed_gradient20_vt_join(BITJOIN,114)@2
    i_unnamed_gradient20_vt_join_q <= i_cleanups_shl_gradient_vt_const_3_q & i_unnamed_gradient20_vt_select_0_b;

    -- i_last_initeration_gradient(LOGICAL,96)@2
    i_last_initeration_gradient_q <= "1" WHEN i_unnamed_gradient20_vt_join_q /= c_i4_0gr_q ELSE "0";

    -- i_acl_push_i1_lastiniteration_gradient(BLACKBOX,74)@2
    -- out out_feedback_out_1@20000000
    -- out out_feedback_valid_out_1@20000000
    thei_acl_push_i1_lastiniteration_gradient : i_acl_push_i1_lastiniteration_gradient22
    PORT MAP (
        in_data_in => i_last_initeration_gradient_q,
        in_feedback_stall_in_1 => i_acl_pipeline_keep_going_gradient_out_initeration_stall_out,
        in_keep_going => redist1_i_acl_pipeline_keep_going_gradient_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist5_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_1 => i_acl_push_i1_lastiniteration_gradient_out_feedback_out_1,
        out_feedback_valid_out_1 => i_acl_push_i1_lastiniteration_gradient_out_feedback_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going_gradient(BLACKBOX,68)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going_gradient : i_acl_pipeline_keep_going_gradient11
    PORT MAP (
        in_data_in => in_c0_eni1_1,
        in_initeration_in => i_acl_push_i1_lastiniteration_gradient_out_feedback_out_1,
        in_initeration_valid_in => i_acl_push_i1_lastiniteration_gradient_out_feedback_valid_out_1,
        in_not_exitcond_in => i_acl_push_i1_notexitcond_gradient_out_feedback_out_2,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond_gradient_out_feedback_valid_out_2,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pipeline_keep_going_gradient_out_data_out,
        out_exiting_stall_out => i_acl_pipeline_keep_going_gradient_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going_gradient_out_exiting_valid_out,
        out_initeration_stall_out => i_acl_pipeline_keep_going_gradient_out_initeration_stall_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going_gradient_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going_gradient_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- redist1_i_acl_pipeline_keep_going_gradient_out_data_out_1(DELAY,219)
    redist1_i_acl_pipeline_keep_going_gradient_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pipeline_keep_going_gradient_out_data_out, xout => redist1_i_acl_pipeline_keep_going_gradient_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_acl_push_i32_count_08_push10_gradient(BLACKBOX,76)@2
    -- out out_feedback_out_10@20000000
    -- out out_feedback_valid_out_10@20000000
    thei_acl_push_i32_count_08_push10_gradient : i_acl_push_i32_count_08_push10_gradient36
    PORT MAP (
        in_data_in => redist9_bgTrunc_i_inc46_gradient_sel_x_b_1_q,
        in_feedback_stall_in_10 => i_acl_pop_i32_count_08_pop10_gradient_out_feedback_stall_out_10,
        in_keep_going => redist1_i_acl_pipeline_keep_going_gradient_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist5_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_10 => i_acl_push_i32_count_08_push10_gradient_out_feedback_out_10,
        out_feedback_valid_out_10 => i_acl_push_i32_count_08_push10_gradient_out_feedback_valid_out_10,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_599(CONSTANT,63)
    c_i32_599_q <= "11111111111111111111110110101001";

    -- i_acl_pop_i32_count_08_pop10_gradient(BLACKBOX,70)@1
    -- out out_feedback_stall_out_10@20000000
    thei_acl_pop_i32_count_08_pop10_gradient : i_acl_pop_i32_count_08_pop10_gradient24
    PORT MAP (
        in_data_in => c_i32_599_q,
        in_dir => in_c0_eni1_1,
        in_feedback_in_10 => i_acl_push_i32_count_08_push10_gradient_out_feedback_out_10,
        in_feedback_valid_in_10 => i_acl_push_i32_count_08_push10_gradient_out_feedback_valid_out_10,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_count_08_pop10_gradient_out_data_out,
        out_feedback_stall_out_10 => i_acl_pop_i32_count_08_pop10_gradient_out_feedback_stall_out_10,
        clock => clock,
        resetn => resetn
    );

    -- i_inc46_gradient(ADD,95)@1
    i_inc46_gradient_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i32_count_08_pop10_gradient_out_data_out);
    i_inc46_gradient_b <= STD_LOGIC_VECTOR("0" & dupName_0_c_i32_1gr_x_q);
    i_inc46_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc46_gradient_a) + UNSIGNED(i_inc46_gradient_b));
    i_inc46_gradient_q <= i_inc46_gradient_o(32 downto 0);

    -- bgTrunc_i_inc46_gradient_sel_x(BITSELECT,2)@1
    bgTrunc_i_inc46_gradient_sel_x_b <= i_inc46_gradient_q(31 downto 0);

    -- redist9_bgTrunc_i_inc46_gradient_sel_x_b_1(DELAY,227)
    redist9_bgTrunc_i_inc46_gradient_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_inc46_gradient_sel_x_b, xout => redist9_bgTrunc_i_inc46_gradient_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_cmp_gradient(LOGICAL,87)@2 + 1
    i_cmp_gradient_qi <= "1" WHEN redist9_bgTrunc_i_inc46_gradient_sel_x_b_1_q = i_syncbuf_iterations_sync_buffer_gradient_out_buffer_out ELSE "0";
    i_cmp_gradient_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp_gradient_qi, xout => i_cmp_gradient_q, clk => clock, aclr => resetn );

    -- i_syncbuf_iterations_sync_buffer993_gradient(BLACKBOX,110)@0
    -- in in_i_dependence@2
    -- in in_valid_in@2
    -- out out_buffer_out@2
    -- out out_valid_out@2
    thei_syncbuf_iterations_sync_buffer993_gradient : i_syncbuf_iterations_sync_buffer993_gradient30
    PORT MAP (
        in_buffer_in => in_iterations,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist5_sync_in_aunroll_x_in_i_valid_1_q,
        out_buffer_out => i_syncbuf_iterations_sync_buffer993_gradient_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp7_rm_gradient(LOGICAL,86)@2 + 1
    i_cmp7_rm_gradient_qi <= "1" WHEN i_syncbuf_iterations_sync_buffer993_gradient_out_buffer_out = c_i32_599_q ELSE "0";
    i_cmp7_rm_gradient_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp7_rm_gradient_qi, xout => i_cmp7_rm_gradient_q, clk => clock, aclr => resetn );

    -- i_unnamed_gradient41(LOGICAL,116)@3
    i_unnamed_gradient41_q <= i_cmp7_rm_gradient_q or i_cmp_gradient_q;

    -- i_masked_gradient(LOGICAL,97)@3
    i_masked_gradient_q <= i_unnamed_gradient41_q and i_first_cleanup_gradient_q;

    -- i_arrayidx45_gradient_gradient35_mult_multconst_x(CONSTANT,23)
    i_arrayidx45_gradient_gradient35_mult_multconst_x_q <= "0000000000000000000000000000000000000000000000000000000000000";

    -- redist0_i_acl_pop_i32_count_08_pop10_gradient_out_data_out_1(DELAY,218)
    redist0_i_acl_pop_i32_count_08_pop10_gradient_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_count_08_pop10_gradient_out_data_out, xout => redist0_i_acl_pop_i32_count_08_pop10_gradient_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_idxprom5_gradient_sel_x(BITSELECT,44)@2
    i_idxprom5_gradient_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist0_i_acl_pop_i32_count_08_pop10_gradient_out_data_out_1_q(31 downto 0)), 64)));

    -- i_arrayidx45_gradient_gradient35_mult_x_bs1_merged_bit_select(BITSELECT,217)@2
    i_arrayidx45_gradient_gradient35_mult_x_bs1_merged_bit_select_b <= i_idxprom5_gradient_sel_x_b(17 downto 0);
    i_arrayidx45_gradient_gradient35_mult_x_bs1_merged_bit_select_c <= i_idxprom5_gradient_sel_x_b(63 downto 54);
    i_arrayidx45_gradient_gradient35_mult_x_bs1_merged_bit_select_d <= i_idxprom5_gradient_sel_x_b(35 downto 18);
    i_arrayidx45_gradient_gradient35_mult_x_bs1_merged_bit_select_e <= i_idxprom5_gradient_sel_x_b(53 downto 36);

    -- i_arrayidx45_gradient_gradient35_mult_x_im3_shift0(BITSHIFT,210)@2
    i_arrayidx45_gradient_gradient35_mult_x_im3_shift0_qint <= i_arrayidx45_gradient_gradient35_mult_x_bs1_merged_bit_select_c & "00";
    i_arrayidx45_gradient_gradient35_mult_x_im3_shift0_q <= i_arrayidx45_gradient_gradient35_mult_x_im3_shift0_qint(11 downto 0);

    -- i_arrayidx45_gradient_gradient35_mult_x_align_15(BITSHIFT,150)@2
    i_arrayidx45_gradient_gradient35_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx45_gradient_gradient35_mult_x_im3_shift0_q) & "000000000000000";
    i_arrayidx45_gradient_gradient35_mult_x_align_15_q <= i_arrayidx45_gradient_gradient35_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx45_gradient_gradient35_mult_x_im6_shift0(BITSHIFT,211)@2
    i_arrayidx45_gradient_gradient35_mult_x_im6_shift0_qint <= i_arrayidx45_gradient_gradient35_mult_x_bs1_merged_bit_select_d & "00";
    i_arrayidx45_gradient_gradient35_mult_x_im6_shift0_q <= i_arrayidx45_gradient_gradient35_mult_x_im6_shift0_qint(19 downto 0);

    -- i_arrayidx45_gradient_gradient35_mult_x_align_14(BITSHIFT,149)@2
    i_arrayidx45_gradient_gradient35_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx45_gradient_gradient35_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx45_gradient_gradient35_mult_x_align_14_q <= i_arrayidx45_gradient_gradient35_mult_x_align_14_qint(38 downto 0);

    -- i_arrayidx45_gradient_gradient35_mult_x_join_16(BITJOIN,151)@2
    i_arrayidx45_gradient_gradient35_mult_x_join_16_q <= i_arrayidx45_gradient_gradient35_mult_x_align_15_q & i_arrayidx45_gradient_gradient35_mult_x_align_14_q;

    -- i_arrayidx45_gradient_gradient35_mult_x_im9_shift0(BITSHIFT,212)@2
    i_arrayidx45_gradient_gradient35_mult_x_im9_shift0_qint <= i_arrayidx45_gradient_gradient35_mult_x_bs1_merged_bit_select_e & "00";
    i_arrayidx45_gradient_gradient35_mult_x_im9_shift0_q <= i_arrayidx45_gradient_gradient35_mult_x_im9_shift0_qint(19 downto 0);

    -- i_arrayidx45_gradient_gradient35_mult_x_align_12(BITSHIFT,147)@2
    i_arrayidx45_gradient_gradient35_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx45_gradient_gradient35_mult_x_im9_shift0_q) & "000000000000000";
    i_arrayidx45_gradient_gradient35_mult_x_align_12_q <= i_arrayidx45_gradient_gradient35_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx45_gradient_gradient35_mult_x_im0_shift0(BITSHIFT,209)@2
    i_arrayidx45_gradient_gradient35_mult_x_im0_shift0_qint <= i_arrayidx45_gradient_gradient35_mult_x_bs1_merged_bit_select_b & "00";
    i_arrayidx45_gradient_gradient35_mult_x_im0_shift0_q <= i_arrayidx45_gradient_gradient35_mult_x_im0_shift0_qint(19 downto 0);

    -- i_arrayidx45_gradient_gradient35_mult_x_join_13(BITJOIN,148)@2
    i_arrayidx45_gradient_gradient35_mult_x_join_13_q <= i_arrayidx45_gradient_gradient35_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx45_gradient_gradient35_mult_x_im0_shift0_q);

    -- i_arrayidx45_gradient_gradient35_mult_x_result_add_0_0(ADD,152)@2
    i_arrayidx45_gradient_gradient35_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx45_gradient_gradient35_mult_x_join_13_q);
    i_arrayidx45_gradient_gradient35_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx45_gradient_gradient35_mult_x_join_16_q);
    i_arrayidx45_gradient_gradient35_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx45_gradient_gradient35_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx45_gradient_gradient35_mult_x_result_add_0_0_b));
    i_arrayidx45_gradient_gradient35_mult_x_result_add_0_0_q <= i_arrayidx45_gradient_gradient35_mult_x_result_add_0_0_o(67 downto 0);

    -- i_arrayidx45_gradient_gradient35_mult_extender_x(BITJOIN,22)@2
    i_arrayidx45_gradient_gradient35_mult_extender_x_q <= i_arrayidx45_gradient_gradient35_mult_multconst_x_q & i_arrayidx45_gradient_gradient35_mult_x_result_add_0_0_q(66 downto 0);

    -- i_arrayidx45_gradient_gradient35_trunc_sel_x(BITSELECT,24)@2
    i_arrayidx45_gradient_gradient35_trunc_sel_x_b <= i_arrayidx45_gradient_gradient35_mult_extender_x_q(63 downto 0);

    -- redist8_i_arrayidx45_gradient_gradient35_trunc_sel_x_b_1(DELAY,226)
    redist8_i_arrayidx45_gradient_gradient35_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx45_gradient_gradient35_trunc_sel_x_b, xout => redist8_i_arrayidx45_gradient_gradient35_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_frame_out_sync_buffer_gradient(BLACKBOX,109)@0
    -- in in_i_dependence@3
    -- in in_valid_in@3
    -- out out_buffer_out@3
    -- out out_valid_out@3
    thei_syncbuf_frame_out_sync_buffer_gradient : i_syncbuf_frame_out_sync_buffer_gradient33
    PORT MAP (
        in_buffer_in => in_frame_out,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_2_q,
        out_buffer_out => i_syncbuf_frame_out_sync_buffer_gradient_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx45_gradient_gradient35_add_x(ADD,25)@3
    i_arrayidx45_gradient_gradient35_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_frame_out_sync_buffer_gradient_out_buffer_out);
    i_arrayidx45_gradient_gradient35_add_x_b <= STD_LOGIC_VECTOR("0" & redist8_i_arrayidx45_gradient_gradient35_trunc_sel_x_b_1_q);
    i_arrayidx45_gradient_gradient35_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx45_gradient_gradient35_add_x_a) + UNSIGNED(i_arrayidx45_gradient_gradient35_add_x_b));
    i_arrayidx45_gradient_gradient35_add_x_q <= i_arrayidx45_gradient_gradient35_add_x_o(64 downto 0);

    -- i_arrayidx45_gradient_gradient35_dupName_0_trunc_sel_x(BITSELECT,19)@3
    i_arrayidx45_gradient_gradient35_dupName_0_trunc_sel_x_b <= i_arrayidx45_gradient_gradient35_add_x_q(63 downto 0);

    -- i_cmp4_xor_gradient(LOGICAL,84)@3
    i_cmp4_xor_gradient_q <= i_cmp4_gradient_c xor VCC_q;

    -- i_cmp7_phi_decision554_or_gradient(LOGICAL,85)@3
    i_cmp7_phi_decision554_or_gradient_q <= i_cmp7_rm_gradient_q or i_cmp4_xor_gradient_q;

    -- i_first_cleanup_xor_or_gradient(LOGICAL,92)@3
    i_first_cleanup_xor_or_gradient_q <= i_cmp7_phi_decision554_or_gradient_q or i_xor_gradient_q;

    -- i_arrayidx6_gradient_gradient29_mult_x_im3_shift0(BITSHIFT,214)@2
    i_arrayidx6_gradient_gradient29_mult_x_im3_shift0_qint <= i_arrayidx45_gradient_gradient35_mult_x_bs1_merged_bit_select_c & "00";
    i_arrayidx6_gradient_gradient29_mult_x_im3_shift0_q <= i_arrayidx6_gradient_gradient29_mult_x_im3_shift0_qint(11 downto 0);

    -- i_arrayidx6_gradient_gradient29_mult_x_align_15(BITSHIFT,168)@2
    i_arrayidx6_gradient_gradient29_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx6_gradient_gradient29_mult_x_im3_shift0_q) & "000000000000000";
    i_arrayidx6_gradient_gradient29_mult_x_align_15_q <= i_arrayidx6_gradient_gradient29_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx6_gradient_gradient29_mult_x_im6_shift0(BITSHIFT,215)@2
    i_arrayidx6_gradient_gradient29_mult_x_im6_shift0_qint <= i_arrayidx45_gradient_gradient35_mult_x_bs1_merged_bit_select_d & "00";
    i_arrayidx6_gradient_gradient29_mult_x_im6_shift0_q <= i_arrayidx6_gradient_gradient29_mult_x_im6_shift0_qint(19 downto 0);

    -- i_arrayidx6_gradient_gradient29_mult_x_align_14(BITSHIFT,167)@2
    i_arrayidx6_gradient_gradient29_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx6_gradient_gradient29_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx6_gradient_gradient29_mult_x_align_14_q <= i_arrayidx6_gradient_gradient29_mult_x_align_14_qint(38 downto 0);

    -- i_arrayidx6_gradient_gradient29_mult_x_join_16(BITJOIN,169)@2
    i_arrayidx6_gradient_gradient29_mult_x_join_16_q <= i_arrayidx6_gradient_gradient29_mult_x_align_15_q & i_arrayidx6_gradient_gradient29_mult_x_align_14_q;

    -- i_arrayidx6_gradient_gradient29_mult_x_im9_shift0(BITSHIFT,216)@2
    i_arrayidx6_gradient_gradient29_mult_x_im9_shift0_qint <= i_arrayidx45_gradient_gradient35_mult_x_bs1_merged_bit_select_e & "00";
    i_arrayidx6_gradient_gradient29_mult_x_im9_shift0_q <= i_arrayidx6_gradient_gradient29_mult_x_im9_shift0_qint(19 downto 0);

    -- i_arrayidx6_gradient_gradient29_mult_x_align_12(BITSHIFT,165)@2
    i_arrayidx6_gradient_gradient29_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx6_gradient_gradient29_mult_x_im9_shift0_q) & "000000000000000";
    i_arrayidx6_gradient_gradient29_mult_x_align_12_q <= i_arrayidx6_gradient_gradient29_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx6_gradient_gradient29_mult_x_im0_shift0(BITSHIFT,213)@2
    i_arrayidx6_gradient_gradient29_mult_x_im0_shift0_qint <= i_arrayidx45_gradient_gradient35_mult_x_bs1_merged_bit_select_b & "00";
    i_arrayidx6_gradient_gradient29_mult_x_im0_shift0_q <= i_arrayidx6_gradient_gradient29_mult_x_im0_shift0_qint(19 downto 0);

    -- i_arrayidx6_gradient_gradient29_mult_x_join_13(BITJOIN,166)@2
    i_arrayidx6_gradient_gradient29_mult_x_join_13_q <= i_arrayidx6_gradient_gradient29_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx6_gradient_gradient29_mult_x_im0_shift0_q);

    -- i_arrayidx6_gradient_gradient29_mult_x_result_add_0_0(ADD,170)@2
    i_arrayidx6_gradient_gradient29_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx6_gradient_gradient29_mult_x_join_13_q);
    i_arrayidx6_gradient_gradient29_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx6_gradient_gradient29_mult_x_join_16_q);
    i_arrayidx6_gradient_gradient29_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx6_gradient_gradient29_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx6_gradient_gradient29_mult_x_result_add_0_0_b));
    i_arrayidx6_gradient_gradient29_mult_x_result_add_0_0_q <= i_arrayidx6_gradient_gradient29_mult_x_result_add_0_0_o(67 downto 0);

    -- i_arrayidx6_gradient_gradient29_mult_extender_x(BITJOIN,32)@2
    i_arrayidx6_gradient_gradient29_mult_extender_x_q <= i_arrayidx45_gradient_gradient35_mult_multconst_x_q & i_arrayidx6_gradient_gradient29_mult_x_result_add_0_0_q(66 downto 0);

    -- i_arrayidx6_gradient_gradient29_trunc_sel_x(BITSELECT,34)@2
    i_arrayidx6_gradient_gradient29_trunc_sel_x_b <= i_arrayidx6_gradient_gradient29_mult_extender_x_q(63 downto 0);

    -- redist7_i_arrayidx6_gradient_gradient29_trunc_sel_x_b_1(DELAY,225)
    redist7_i_arrayidx6_gradient_gradient29_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx6_gradient_gradient29_trunc_sel_x_b, xout => redist7_i_arrayidx6_gradient_gradient29_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_frame_in_sync_buffer_gradient(BLACKBOX,108)@0
    -- in in_i_dependence@3
    -- in in_valid_in@3
    -- out out_buffer_out@3
    -- out out_valid_out@3
    thei_syncbuf_frame_in_sync_buffer_gradient : i_syncbuf_frame_in_sync_buffer_gradient27
    PORT MAP (
        in_buffer_in => in_frame_in,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_2_q,
        out_buffer_out => i_syncbuf_frame_in_sync_buffer_gradient_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx6_gradient_gradient29_add_x(ADD,35)@3
    i_arrayidx6_gradient_gradient29_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_frame_in_sync_buffer_gradient_out_buffer_out);
    i_arrayidx6_gradient_gradient29_add_x_b <= STD_LOGIC_VECTOR("0" & redist7_i_arrayidx6_gradient_gradient29_trunc_sel_x_b_1_q);
    i_arrayidx6_gradient_gradient29_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx6_gradient_gradient29_add_x_a) + UNSIGNED(i_arrayidx6_gradient_gradient29_add_x_b));
    i_arrayidx6_gradient_gradient29_add_x_q <= i_arrayidx6_gradient_gradient29_add_x_o(64 downto 0);

    -- i_arrayidx6_gradient_gradient29_dupName_0_trunc_sel_x(BITSELECT,29)@3
    i_arrayidx6_gradient_gradient29_dupName_0_trunc_sel_x_b <= i_arrayidx6_gradient_gradient29_add_x_q(63 downto 0);

    -- c_i32_1gr(CONSTANT,62)
    c_i32_1gr_q <= "11111111111111111111111111111111";

    -- i_cmp4_gradient(COMPARE,83)@2 + 1
    i_cmp4_gradient_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_1gr_q(31)) & c_i32_1gr_q));
    i_cmp4_gradient_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist0_i_acl_pop_i32_count_08_pop10_gradient_out_data_out_1_q(31)) & redist0_i_acl_pop_i32_count_08_pop10_gradient_out_data_out_1_q));
    i_cmp4_gradient_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp4_gradient_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp4_gradient_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp4_gradient_a) - SIGNED(i_cmp4_gradient_b));
        END IF;
    END PROCESS;
    i_cmp4_gradient_c(0) <= i_cmp4_gradient_o(33);

    -- redist2_i_acl_pipeline_keep_going_gradient_out_data_out_2(DELAY,220)
    redist2_i_acl_pipeline_keep_going_gradient_out_data_out_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist1_i_acl_pipeline_keep_going_gradient_out_data_out_1_q, xout => redist2_i_acl_pipeline_keep_going_gradient_out_data_out_2_q, clk => clock, aclr => resetn );

    -- i_coalesce_counter_lobit_gradient_vt_const_9(CONSTANT,88)
    i_coalesce_counter_lobit_gradient_vt_const_9_q <= "000000000";

    -- c_i10_1gr(CONSTANT,57)
    c_i10_1gr_q <= "0000000001";

    -- rightShiftStage1Idx1Rng1_uid180_i_coalesce_counter_lobit_gradient_gradient6_shift_x(BITSELECT,179)@3
    rightShiftStage1Idx1Rng1_uid180_i_coalesce_counter_lobit_gradient_gradient6_shift_x_b <= rightShiftStage0_uid179_i_coalesce_counter_lobit_gradient_gradient6_shift_x_q(9 downto 1);

    -- rightShiftStage1Idx1_uid182_i_coalesce_counter_lobit_gradient_gradient6_shift_x(BITJOIN,181)@3
    rightShiftStage1Idx1_uid182_i_coalesce_counter_lobit_gradient_gradient6_shift_x_q <= GND_q & rightShiftStage1Idx1Rng1_uid180_i_coalesce_counter_lobit_gradient_gradient6_shift_x_b;

    -- rightShiftStage0Idx1Pad8_uid176_i_coalesce_counter_lobit_gradient_gradient6_shift_x(CONSTANT,175)
    rightShiftStage0Idx1Pad8_uid176_i_coalesce_counter_lobit_gradient_gradient6_shift_x_q <= "00000000";

    -- rightShiftStage0Idx1Rng8_uid175_i_coalesce_counter_lobit_gradient_gradient6_shift_x(BITSELECT,174)@3
    rightShiftStage0Idx1Rng8_uid175_i_coalesce_counter_lobit_gradient_gradient6_shift_x_b <= i_acl_pop_i10_coalesce_counter_pop13_gradient_out_data_out(9 downto 8);

    -- rightShiftStage0Idx1_uid177_i_coalesce_counter_lobit_gradient_gradient6_shift_x(BITJOIN,176)@3
    rightShiftStage0Idx1_uid177_i_coalesce_counter_lobit_gradient_gradient6_shift_x_q <= rightShiftStage0Idx1Pad8_uid176_i_coalesce_counter_lobit_gradient_gradient6_shift_x_q & rightShiftStage0Idx1Rng8_uid175_i_coalesce_counter_lobit_gradient_gradient6_shift_x_b;

    -- rightShiftStage0_uid179_i_coalesce_counter_lobit_gradient_gradient6_shift_x(MUX,178)@3
    rightShiftStage0_uid179_i_coalesce_counter_lobit_gradient_gradient6_shift_x_s <= VCC_q;
    rightShiftStage0_uid179_i_coalesce_counter_lobit_gradient_gradient6_shift_x_combproc: PROCESS (rightShiftStage0_uid179_i_coalesce_counter_lobit_gradient_gradient6_shift_x_s, i_acl_pop_i10_coalesce_counter_pop13_gradient_out_data_out, rightShiftStage0Idx1_uid177_i_coalesce_counter_lobit_gradient_gradient6_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid179_i_coalesce_counter_lobit_gradient_gradient6_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid179_i_coalesce_counter_lobit_gradient_gradient6_shift_x_q <= i_acl_pop_i10_coalesce_counter_pop13_gradient_out_data_out;
            WHEN "1" => rightShiftStage0_uid179_i_coalesce_counter_lobit_gradient_gradient6_shift_x_q <= rightShiftStage0Idx1_uid177_i_coalesce_counter_lobit_gradient_gradient6_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid179_i_coalesce_counter_lobit_gradient_gradient6_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid184_i_coalesce_counter_lobit_gradient_gradient6_shift_x(MUX,183)@3
    rightShiftStage1_uid184_i_coalesce_counter_lobit_gradient_gradient6_shift_x_s <= VCC_q;
    rightShiftStage1_uid184_i_coalesce_counter_lobit_gradient_gradient6_shift_x_combproc: PROCESS (rightShiftStage1_uid184_i_coalesce_counter_lobit_gradient_gradient6_shift_x_s, rightShiftStage0_uid179_i_coalesce_counter_lobit_gradient_gradient6_shift_x_q, rightShiftStage1Idx1_uid182_i_coalesce_counter_lobit_gradient_gradient6_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid184_i_coalesce_counter_lobit_gradient_gradient6_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid184_i_coalesce_counter_lobit_gradient_gradient6_shift_x_q <= rightShiftStage0_uid179_i_coalesce_counter_lobit_gradient_gradient6_shift_x_q;
            WHEN "1" => rightShiftStage1_uid184_i_coalesce_counter_lobit_gradient_gradient6_shift_x_q <= rightShiftStage1Idx1_uid182_i_coalesce_counter_lobit_gradient_gradient6_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid184_i_coalesce_counter_lobit_gradient_gradient6_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_coalesce_counter_lobit_gradient_vt_select_0(BITSELECT,90)@3
    i_coalesce_counter_lobit_gradient_vt_select_0_b <= rightShiftStage1_uid184_i_coalesce_counter_lobit_gradient_gradient6_shift_x_q(0 downto 0);

    -- i_coalesce_counter_lobit_gradient_vt_join(BITJOIN,89)@3
    i_coalesce_counter_lobit_gradient_vt_join_q <= i_coalesce_counter_lobit_gradient_vt_const_9_q & i_coalesce_counter_lobit_gradient_vt_select_0_b;

    -- i_next_coalesce_select_gradient(LOGICAL,99)@3
    i_next_coalesce_select_gradient_q <= i_coalesce_counter_lobit_gradient_vt_join_q xor c_i10_1gr_q;

    -- i_next_coalesce_select_gradient_vt_select_0(BITSELECT,102)@3
    i_next_coalesce_select_gradient_vt_select_0_b <= i_next_coalesce_select_gradient_q(0 downto 0);

    -- i_next_coalesce_select_gradient_vt_join(BITJOIN,101)@3
    i_next_coalesce_select_gradient_vt_join_q <= i_coalesce_counter_lobit_gradient_vt_const_9_q & i_next_coalesce_select_gradient_vt_select_0_b;

    -- i_next_coalesce_gradient(SUB,98)@3
    i_next_coalesce_gradient_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i10_coalesce_counter_pop13_gradient_out_data_out);
    i_next_coalesce_gradient_b <= STD_LOGIC_VECTOR("0" & i_next_coalesce_select_gradient_vt_join_q);
    i_next_coalesce_gradient_o <= STD_LOGIC_VECTOR(UNSIGNED(i_next_coalesce_gradient_a) - UNSIGNED(i_next_coalesce_gradient_b));
    i_next_coalesce_gradient_q <= i_next_coalesce_gradient_o(10 downto 0);

    -- bgTrunc_i_next_coalesce_gradient_sel_x(BITSELECT,3)@3
    bgTrunc_i_next_coalesce_gradient_sel_x_b <= STD_LOGIC_VECTOR(i_next_coalesce_gradient_q(9 downto 0));

    -- i_acl_push_i10_coalesce_counter_push13_gradient(BLACKBOX,73)@3
    -- out out_feedback_out_13@20000000
    -- out out_feedback_valid_out_13@20000000
    thei_acl_push_i10_coalesce_counter_push13_gradient : i_acl_push_i10_coalesce_counter_push13_gradient13
    PORT MAP (
        in_data_in => bgTrunc_i_next_coalesce_gradient_sel_x_b,
        in_feedback_stall_in_13 => i_acl_pop_i10_coalesce_counter_pop13_gradient_out_feedback_stall_out_13,
        in_keep_going => redist2_i_acl_pipeline_keep_going_gradient_out_data_out_2_q,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_2_q,
        out_feedback_out_13 => i_acl_push_i10_coalesce_counter_push13_gradient_out_feedback_out_13,
        out_feedback_valid_out_13 => i_acl_push_i10_coalesce_counter_push13_gradient_out_feedback_valid_out_13,
        clock => clock,
        resetn => resetn
    );

    -- c_i10_295(CONSTANT,58)
    c_i10_295_q <= "0100100111";

    -- i_acl_pop_i10_coalesce_counter_pop13_gradient(BLACKBOX,69)@3
    -- out out_feedback_stall_out_13@20000000
    thei_acl_pop_i10_coalesce_counter_pop13_gradient : i_acl_pop_i10_coalesce_counter_pop13_gradient4
    PORT MAP (
        in_data_in => c_i10_295_q,
        in_dir => redist4_sync_in_aunroll_x_in_c0_eni1_1_2_q,
        in_feedback_in_13 => i_acl_push_i10_coalesce_counter_push13_gradient_out_feedback_out_13,
        in_feedback_valid_in_13 => i_acl_push_i10_coalesce_counter_push13_gradient_out_feedback_valid_out_13,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_2_q,
        out_data_out => i_acl_pop_i10_coalesce_counter_pop13_gradient_out_data_out,
        out_feedback_stall_out_13 => i_acl_pop_i10_coalesce_counter_pop13_gradient_out_feedback_stall_out_13,
        clock => clock,
        resetn => resetn
    );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,54)@3
    out_c0_exi7_0 <= GND_q;
    out_c0_exi7_1 <= i_acl_pop_i10_coalesce_counter_pop13_gradient_out_data_out;
    out_c0_exi7_2 <= redist2_i_acl_pipeline_keep_going_gradient_out_data_out_2_q;
    out_c0_exi7_3 <= i_cmp4_gradient_c;
    out_c0_exi7_4 <= i_arrayidx6_gradient_gradient29_dupName_0_trunc_sel_x_b;
    out_c0_exi7_5 <= i_first_cleanup_xor_or_gradient_q;
    out_c0_exi7_6 <= i_arrayidx45_gradient_gradient35_dupName_0_trunc_sel_x_b;
    out_c0_exi7_7 <= i_masked_gradient_q;
    out_o_valid <= redist6_sync_in_aunroll_x_in_i_valid_2_q;

    -- ext_sig_sync_out(GPOUT,67)
    out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_valid_out <= i_acl_pipeline_keep_going_gradient_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_stall_out <= i_acl_pipeline_keep_going_gradient_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,129)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going_gradient_out_pipeline_valid_out;

END normal;
