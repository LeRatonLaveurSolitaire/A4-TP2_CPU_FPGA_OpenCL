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

-- VHDL created from bb_gradient_B1_stall_region
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

entity bb_gradient_B1_stall_region is
    port (
        in_unnamed_gradient1_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_gradient1_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_gradient1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_gradient1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_gradient0_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_gradient0_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_gradient0_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_gradient0_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_gradient0_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_gradient0_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_gradient0_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        in_frame_in : in std_logic_vector(63 downto 0);  -- ufix64
        in_forked : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe7 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_gradient1_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_gradient1_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_gradient1_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_gradient1_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_gradient1_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_gradient1_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_gradient1_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        in_frame_out : in std_logic_vector(63 downto 0);  -- ufix64
        out_lsu_unnamed_gradient1_o_active : out std_logic_vector(0 downto 0);  -- ufix1
        in_iterations : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_gradient0_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_gradient0_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_gradient0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_gradient0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_gradient_B1_stall_region;

architecture normal of bb_gradient_B1_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component gradient_B1_merge_reg is
        port (
            in_data_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient is
        port (
            in_c0_eni1_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni1_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_frame_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_frame_out : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iterations : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_1 : out std_logic_vector(9 downto 0);  -- Fixed Point
            out_c0_exit_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_4 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_6 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c1_for_cond_preheader_gradient_c1_enter_gradient is
        port (
            in_c1_eni5_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_eni5_1 : in std_logic_vector(9 downto 0);  -- Fixed Point
            in_c1_eni5_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_eni5_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_eni5_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_eni5_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exit_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exit_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_gradient0_gradient48 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_gradient0_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_gradient0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_gradient0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_gradient0_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_gradient0_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_gradient0_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_gradient0_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_gradient0_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_gradient0_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_gradient0_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_gradient0_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_unnamed_gradient1_gradient177 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_gradient1_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_gradient1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_gradient1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_gradient1_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_lsu_unnamed_gradient1_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_gradient1_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_gradient1_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_gradient1_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_gradient1_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_gradient1_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_gradient1_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_gradient1_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component acl_data_fifo is
        generic (
            DEPTH : INTEGER := 0;
            DATA_WIDTH : INTEGER := 32;
            STRICT_DEPTH : INTEGER := 0;
            ALLOW_FULL_WRITE : INTEGER := 0;
            IMPL : STRING := "ram"
        );
        port (
            clock : in std_logic;
            resetn : in std_logic;
            valid_in : in std_logic;
            stall_in : in std_logic;
            data_in : in std_logic_vector(DATA_WIDTH - 1 downto 0);
            valid_out : out std_logic;
            stall_out : out std_logic;
            data_out : out std_logic_vector(DATA_WIDTH - 1 downto 0);
            full : out std_logic;
            almost_full : out std_logic
        );
    end component;






    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal gradient_B1_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal gradient_B1_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal gradient_B1_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1 : STD_LOGIC_VECTOR (9 downto 0);
    signal i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_4 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_cond_preheader_gradient_c1_enter_gradient_aunroll_x_out_c1_exit_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c1_for_cond_preheader_gradient_c1_enter_gradient_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_cond_preheader_gradient_c1_enter_gradient_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_gradient0_gradient_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_gradient0_gradient_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_gradient0_gradient_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_gradient0_gradient_out_unnamed_gradient0_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal i_load_unnamed_gradient0_gradient_out_unnamed_gradient0_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal i_load_unnamed_gradient0_gradient_out_unnamed_gradient0_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_gradient0_gradient_out_unnamed_gradient0_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_gradient0_gradient_out_unnamed_gradient0_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_gradient0_gradient_out_unnamed_gradient0_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_gradient0_gradient_out_unnamed_gradient0_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_store_unnamed_gradient1_gradient_out_lsu_unnamed_gradient1_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_gradient1_gradient_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_gradient1_gradient_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_gradient1_gradient_out_unnamed_gradient1_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal i_store_unnamed_gradient1_gradient_out_unnamed_gradient1_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal i_store_unnamed_gradient1_gradient_out_unnamed_gradient1_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_unnamed_gradient1_gradient_out_unnamed_gradient1_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_gradient1_gradient_out_unnamed_gradient1_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_gradient1_gradient_out_unnamed_gradient1_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_gradient1_gradient_out_unnamed_gradient1_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist1_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_2_3_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_2_3_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_2_3_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_3_3_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_3_3_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_3_3_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_data_in : STD_LOGIC_VECTOR (63 downto 0);
    signal redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_gradient_B1_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_gradient_B1_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_q : STD_LOGIC_VECTOR (141 downto 0);
    signal bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_b : STD_LOGIC_VECTOR (9 downto 0);
    signal bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_e : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_f : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_g : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_h : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_sfc_c1_for_cond_preheader_gradient_c1_enter_gradient_aunroll_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c1_for_cond_preheader_gradient_c1_enter_gradient_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_load_unnamed_gradient0_gradient_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_load_unnamed_gradient0_gradient_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_gradient_B1_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_gradient_B1_merge_reg_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_gradient_B1_merge_reg_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_gradient_B1_merge_reg_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_gradient_B1_merge_reg_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_gradient_B1_merge_reg_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_gradient_B1_merge_reg_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_gradient_B1_merge_reg_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_gradient_B1_merge_reg_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_gradient_B1_merge_reg_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_gradient_B1_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_gradient_B1_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_gradient_B1_merge_reg_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_toReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_consumed4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_or3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_V4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_gradient0_gradient_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_gradient0_gradient_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_gradient0_gradient_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_load_unnamed_gradient0_gradient_data_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_load_unnamed_gradient0_gradient_data_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_load_unnamed_gradient0_gradient_data_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_load_unnamed_gradient0_gradient_data_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_load_unnamed_gradient0_gradient_data_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_load_unnamed_gradient0_gradient_data_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_load_unnamed_gradient0_gradient_data_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_load_unnamed_gradient0_gradient_data_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_load_unnamed_gradient0_gradient_data_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_load_unnamed_gradient0_gradient_data_reg_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_out_i_load_unnamed_gradient0_gradient_data_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_load_unnamed_gradient0_gradient_data_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_load_unnamed_gradient0_gradient_data_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_load_unnamed_gradient0_gradient_data_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_load_unnamed_gradient0_gradient_data_reg_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_r_data0 : STD_LOGIC_VECTOR (9 downto 0);
    signal SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_r_data1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_r_data2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_D0 : STD_LOGIC_VECTOR (9 downto 0);
    signal SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_D1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_D2 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- redist2_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_3_3_0(REG,51)
    redist2_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_3_3_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_3_3_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_backEN = "1") THEN
                redist2_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_3_3_0_q <= STD_LOGIC_VECTOR(bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_d);
            END IF;
        END IF;
    END PROCESS;

    -- redist1_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_2_3_0(REG,48)
    redist1_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_2_3_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_2_3_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_backEN = "1") THEN
                redist1_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_2_3_0_q <= STD_LOGIC_VECTOR(bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_c);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0(REG,45)
    redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_q <= "0000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_backEN = "1") THEN
                redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_q <= STD_LOGIC_VECTOR(bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_b);
            END IF;
        END IF;
    END PROCESS;

    -- SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1(STALLREG,157)
    SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_r_valid <= (others => '0');
            SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_r_data0 <= (others => '-');
            SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_r_data1 <= (others => '-');
            SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_r_data2 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_r_valid <= SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_backStall and (SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_r_valid or SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_i_valid);

            IF (SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_r_data0 <= STD_LOGIC_VECTOR(redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_q);
                SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_r_data1 <= STD_LOGIC_VECTOR(redist1_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_2_3_0_q);
                SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_r_data2 <= STD_LOGIC_VECTOR(redist2_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_3_3_0_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_i_valid <= SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_V0;
    -- Stall signal propagation
    SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_backStall <= SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_r_valid or not (SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_i_valid);

    -- Valid
    SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_V <= SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_r_valid WHEN SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_r_valid = "1" ELSE SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_i_valid;

    -- Data0
    SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_D0 <= SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_r_data0 WHEN SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_r_valid = "1" ELSE redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_q;
    -- Data1
    SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_D1 <= SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_r_data1 WHEN SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_r_valid = "1" ELSE redist1_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_2_3_0_q;
    -- Data2
    SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_D2 <= SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_r_data2 WHEN SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_r_valid = "1" ELSE redist2_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_3_3_0_q;

    -- SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1(STALLENABLE,100)
    -- Valid signal propagation
    SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_V0 <= SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_R_v_0;
    -- Stall signal propagation
    SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_s_tv_0 <= SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_backStall and SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_R_v_0;
    -- Backward Enable generation
    SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_backEN <= not (SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_v_s_0 <= SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_backEN and SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_V;
    -- Backward Stall generation
    SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_backStall <= not (SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_backEN);
    SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_backEN = "0") THEN
                SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_R_v_0 <= SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_R_v_0 and SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_s_tv_0;
            ELSE
                SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_R_v_0 <= SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2(STALLENABLE,101)
    -- Valid signal propagation
    SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_V0 <= SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_R_v_0;
    -- Stall signal propagation
    SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_s_tv_0 <= SE_out_bubble_out_i_load_unnamed_gradient0_gradient_data_backStall and SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_R_v_0;
    -- Backward Enable generation
    SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_backEN <= not (SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_v_s_0 <= SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_backEN and SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_V0;
    -- Backward Stall generation
    SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_backStall <= not (SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_v_s_0);
    SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_backEN = "0") THEN
                SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_R_v_0 <= SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_R_v_0 and SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_s_tv_0;
            ELSE
                SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_R_v_0 <= SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_stall_entry(STALLENABLE,97)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= gradient_B1_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_join_stall_entry(BITJOIN,72)
    bubble_join_stall_entry_q <= in_forked;

    -- bubble_select_stall_entry(BITSELECT,73)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(0 downto 0));

    -- gradient_B1_merge_reg_aunroll_x(BLACKBOX,19)@0
    -- in in_stall_in@20000000
    -- out out_data_out_0@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    thegradient_B1_merge_reg_aunroll_x : gradient_B1_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_b,
        in_stall_in => SE_out_gradient_B1_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => gradient_B1_merge_reg_aunroll_x_out_data_out_0,
        out_stall_out => gradient_B1_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => gradient_B1_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_gradient_B1_merge_reg_aunroll_x(BITJOIN,59)
    bubble_join_gradient_B1_merge_reg_aunroll_x_q <= gradient_B1_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_gradient_B1_merge_reg_aunroll_x(BITSELECT,60)
    bubble_select_gradient_B1_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_gradient_B1_merge_reg_aunroll_x_q(0 downto 0));

    -- SE_out_gradient_B1_merge_reg_aunroll_x(STALLENABLE,88)
    SE_out_gradient_B1_merge_reg_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_gradient_B1_merge_reg_aunroll_x_fromReg0 <= (others => '0');
            SE_out_gradient_B1_merge_reg_aunroll_x_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_gradient_B1_merge_reg_aunroll_x_fromReg0 <= SE_out_gradient_B1_merge_reg_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_gradient_B1_merge_reg_aunroll_x_fromReg1 <= SE_out_gradient_B1_merge_reg_aunroll_x_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_gradient_B1_merge_reg_aunroll_x_consumed0 <= (not (i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_o_stall) and SE_out_gradient_B1_merge_reg_aunroll_x_wireValid) or SE_out_gradient_B1_merge_reg_aunroll_x_fromReg0;
    SE_out_gradient_B1_merge_reg_aunroll_x_consumed1 <= (not (redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_stall_out) and SE_out_gradient_B1_merge_reg_aunroll_x_wireValid) or SE_out_gradient_B1_merge_reg_aunroll_x_fromReg1;
    -- Consuming
    SE_out_gradient_B1_merge_reg_aunroll_x_StallValid <= SE_out_gradient_B1_merge_reg_aunroll_x_backStall and SE_out_gradient_B1_merge_reg_aunroll_x_wireValid;
    SE_out_gradient_B1_merge_reg_aunroll_x_toReg0 <= SE_out_gradient_B1_merge_reg_aunroll_x_StallValid and SE_out_gradient_B1_merge_reg_aunroll_x_consumed0;
    SE_out_gradient_B1_merge_reg_aunroll_x_toReg1 <= SE_out_gradient_B1_merge_reg_aunroll_x_StallValid and SE_out_gradient_B1_merge_reg_aunroll_x_consumed1;
    -- Backward Stall generation
    SE_out_gradient_B1_merge_reg_aunroll_x_or0 <= SE_out_gradient_B1_merge_reg_aunroll_x_consumed0;
    SE_out_gradient_B1_merge_reg_aunroll_x_wireStall <= not (SE_out_gradient_B1_merge_reg_aunroll_x_consumed1 and SE_out_gradient_B1_merge_reg_aunroll_x_or0);
    SE_out_gradient_B1_merge_reg_aunroll_x_backStall <= SE_out_gradient_B1_merge_reg_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_gradient_B1_merge_reg_aunroll_x_V0 <= SE_out_gradient_B1_merge_reg_aunroll_x_wireValid and not (SE_out_gradient_B1_merge_reg_aunroll_x_fromReg0);
    SE_out_gradient_B1_merge_reg_aunroll_x_V1 <= SE_out_gradient_B1_merge_reg_aunroll_x_wireValid and not (SE_out_gradient_B1_merge_reg_aunroll_x_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_gradient_B1_merge_reg_aunroll_x_wireValid <= gradient_B1_merge_reg_aunroll_x_out_valid_out;

    -- redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo(STALLFIFO,57)
    redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_valid_in <= SE_out_gradient_B1_merge_reg_aunroll_x_V1;
    redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_stall_in <= SE_out_bubble_out_i_load_unnamed_gradient0_gradient_data_backStall;
    redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_data_in <= bubble_select_gradient_B1_merge_reg_aunroll_x_b;
    redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_valid_in_bitsignaltemp <= redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_valid_in(0);
    redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_stall_in_bitsignaltemp <= redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_stall_in(0);
    redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_valid_out(0) <= redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_valid_out_bitsignaltemp;
    redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_stall_out(0) <= redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_stall_out_bitsignaltemp;
    theredist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 9,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_valid_in_bitsignaltemp,
        stall_in => redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_gradient_B1_merge_reg_aunroll_x_b,
        valid_out => redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_valid_out_bitsignaltemp,
        stall_out => redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_stall_out_bitsignaltemp,
        data_out => redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_load_unnamed_gradient0_gradient(BITJOIN,68)
    bubble_join_i_load_unnamed_gradient0_gradient_q <= i_load_unnamed_gradient0_gradient_out_o_readdata;

    -- bubble_out_i_load_unnamed_gradient0_gradient_data_reg(STALLFIFO,156)
    bubble_out_i_load_unnamed_gradient0_gradient_data_reg_valid_in <= SE_out_i_load_unnamed_gradient0_gradient_V0;
    bubble_out_i_load_unnamed_gradient0_gradient_data_reg_stall_in <= SE_out_bubble_out_i_load_unnamed_gradient0_gradient_data_backStall;
    bubble_out_i_load_unnamed_gradient0_gradient_data_reg_data_in <= bubble_join_i_load_unnamed_gradient0_gradient_q;
    bubble_out_i_load_unnamed_gradient0_gradient_data_reg_valid_in_bitsignaltemp <= bubble_out_i_load_unnamed_gradient0_gradient_data_reg_valid_in(0);
    bubble_out_i_load_unnamed_gradient0_gradient_data_reg_stall_in_bitsignaltemp <= bubble_out_i_load_unnamed_gradient0_gradient_data_reg_stall_in(0);
    bubble_out_i_load_unnamed_gradient0_gradient_data_reg_valid_out(0) <= bubble_out_i_load_unnamed_gradient0_gradient_data_reg_valid_out_bitsignaltemp;
    bubble_out_i_load_unnamed_gradient0_gradient_data_reg_stall_out(0) <= bubble_out_i_load_unnamed_gradient0_gradient_data_reg_stall_out_bitsignaltemp;
    thebubble_out_i_load_unnamed_gradient0_gradient_data_reg : acl_data_fifo
    GENERIC MAP (
        DEPTH => 1,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 1,
        DATA_WIDTH => 32,
        IMPL => "zl_reg"
    )
    PORT MAP (
        valid_in => bubble_out_i_load_unnamed_gradient0_gradient_data_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_load_unnamed_gradient0_gradient_data_reg_stall_in_bitsignaltemp,
        data_in => bubble_join_i_load_unnamed_gradient0_gradient_q,
        valid_out => bubble_out_i_load_unnamed_gradient0_gradient_data_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_load_unnamed_gradient0_gradient_data_reg_stall_out_bitsignaltemp,
        data_out => bubble_out_i_load_unnamed_gradient0_gradient_data_reg_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_i_load_unnamed_gradient0_gradient_data(STALLENABLE,129)
    -- Valid signal propagation
    SE_out_bubble_out_i_load_unnamed_gradient0_gradient_data_V0 <= SE_out_bubble_out_i_load_unnamed_gradient0_gradient_data_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_i_load_unnamed_gradient0_gradient_data_backStall <= i_sfc_c1_for_cond_preheader_gradient_c1_enter_gradient_aunroll_x_out_o_stall or not (SE_out_bubble_out_i_load_unnamed_gradient0_gradient_data_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_i_load_unnamed_gradient0_gradient_data_and0 <= bubble_out_i_load_unnamed_gradient0_gradient_data_reg_valid_out;
    SE_out_bubble_out_i_load_unnamed_gradient0_gradient_data_and1 <= redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_valid_out and SE_out_bubble_out_i_load_unnamed_gradient0_gradient_data_and0;
    SE_out_bubble_out_i_load_unnamed_gradient0_gradient_data_wireValid <= SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_V0 and SE_out_bubble_out_i_load_unnamed_gradient0_gradient_data_and1;

    -- bubble_select_i_load_unnamed_gradient0_gradient(BITSELECT,69)
    bubble_select_i_load_unnamed_gradient0_gradient_b <= STD_LOGIC_VECTOR(bubble_out_i_load_unnamed_gradient0_gradient_data_reg_data_out(31 downto 0));

    -- redist2_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_3_3_1(REG,52)
    redist2_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_3_3_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_3_3_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_backEN = "1") THEN
                redist2_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_3_3_1_q <= STD_LOGIC_VECTOR(SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_D2);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_3_3_2(REG,53)
    redist2_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_3_3_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_3_3_2_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_backEN = "1") THEN
                redist2_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_3_3_2_q <= STD_LOGIC_VECTOR(redist2_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_3_3_1_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist1_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_2_3_1(REG,49)
    redist1_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_2_3_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_2_3_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_backEN = "1") THEN
                redist1_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_2_3_1_q <= STD_LOGIC_VECTOR(SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_D1);
            END IF;
        END IF;
    END PROCESS;

    -- redist1_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_2_3_2(REG,50)
    redist1_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_2_3_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_2_3_2_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_backEN = "1") THEN
                redist1_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_2_3_2_q <= STD_LOGIC_VECTOR(redist1_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_2_3_1_q);
            END IF;
        END IF;
    END PROCESS;

    -- bubble_join_redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo(BITJOIN,85)
    bubble_join_redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_q <= redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_data_out;

    -- bubble_select_redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo(BITSELECT,86)
    bubble_select_redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_q(0 downto 0));

    -- redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1(REG,46)
    redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_q <= "0000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_backEN = "1") THEN
                redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_q <= STD_LOGIC_VECTOR(SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2(REG,47)
    redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_q <= "0000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_backEN = "1") THEN
                redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_q <= STD_LOGIC_VECTOR(redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_q);
            END IF;
        END IF;
    END PROCESS;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_sfc_c1_for_cond_preheader_gradient_c1_enter_gradient_aunroll_x(BLACKBOX,21)@9
    -- in in_i_stall@20000000
    -- out out_c1_exit_0@21
    -- out out_c1_exit_1@21
    -- out out_o_stall@20000000
    -- out out_o_valid@21
    thei_sfc_c1_for_cond_preheader_gradient_c1_enter_gradient_aunroll_x : i_sfc_c1_for_cond_preheader_gradient_c1_enter_gradient
    PORT MAP (
        in_c1_eni5_0 => GND_q,
        in_c1_eni5_1 => redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_2_q,
        in_c1_eni5_2 => bubble_select_redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_b,
        in_c1_eni5_3 => redist1_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_2_3_2_q,
        in_c1_eni5_4 => redist2_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_3_3_2_q,
        in_c1_eni5_5 => bubble_select_i_load_unnamed_gradient0_gradient_b,
        in_c0_exe2 => redist1_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_2_3_2_q,
        in_forked => bubble_select_redist6_gradient_B1_merge_reg_aunroll_x_out_data_out_0_8_fifo_b,
        in_i_stall => SE_out_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_backStall,
        in_i_valid => SE_out_bubble_out_i_load_unnamed_gradient0_gradient_data_V0,
        out_c1_exit_1 => i_sfc_c1_for_cond_preheader_gradient_c1_enter_gradient_aunroll_x_out_c1_exit_1,
        out_o_stall => i_sfc_c1_for_cond_preheader_gradient_c1_enter_gradient_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c1_for_cond_preheader_gradient_c1_enter_gradient_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_sfc_c1_for_cond_preheader_gradient_c1_enter_gradient_aunroll_x(BITJOIN,65)
    bubble_join_i_sfc_c1_for_cond_preheader_gradient_c1_enter_gradient_aunroll_x_q <= i_sfc_c1_for_cond_preheader_gradient_c1_enter_gradient_aunroll_x_out_c1_exit_1;

    -- bubble_select_i_sfc_c1_for_cond_preheader_gradient_c1_enter_gradient_aunroll_x(BITSELECT,66)
    bubble_select_i_sfc_c1_for_cond_preheader_gradient_c1_enter_gradient_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c1_for_cond_preheader_gradient_c1_enter_gradient_aunroll_x_q(31 downto 0));

    -- SE_out_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo(STALLENABLE,111)
    -- Valid signal propagation
    SE_out_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_V0 <= SE_out_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_backStall <= i_store_unnamed_gradient1_gradient_out_o_stall or not (SE_out_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_and0 <= redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_valid_out;
    SE_out_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_and1 <= redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_valid_out and SE_out_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_and0;
    SE_out_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_wireValid <= i_sfc_c1_for_cond_preheader_gradient_c1_enter_gradient_aunroll_x_out_o_valid and SE_out_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_and1;

    -- bubble_join_redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo(BITJOIN,76)
    bubble_join_redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_q <= redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_data_out;

    -- bubble_select_redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo(BITSELECT,77)
    bubble_select_redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_q(0 downto 0));

    -- bubble_join_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo(BITJOIN,79)
    bubble_join_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_q <= redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_data_out;

    -- bubble_select_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo(BITSELECT,80)
    bubble_select_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_q(63 downto 0));

    -- i_store_unnamed_gradient1_gradient(BLACKBOX,28)@21
    -- in in_i_stall@20000000
    -- out out_lsu_unnamed_gradient1_o_active@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@23
    -- out out_unnamed_gradient1_avm_address@20000000
    -- out out_unnamed_gradient1_avm_burstcount@20000000
    -- out out_unnamed_gradient1_avm_byteenable@20000000
    -- out out_unnamed_gradient1_avm_enable@20000000
    -- out out_unnamed_gradient1_avm_read@20000000
    -- out out_unnamed_gradient1_avm_write@20000000
    -- out out_unnamed_gradient1_avm_writedata@20000000
    thei_store_unnamed_gradient1_gradient : i_store_unnamed_gradient1_gradient177
    PORT MAP (
        in_flush => in_flush,
        in_i_address => bubble_select_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_b,
        in_i_predicate => bubble_select_redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_b,
        in_i_stall => SE_out_redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_backStall,
        in_i_valid => SE_out_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_V0,
        in_i_writedata => bubble_select_i_sfc_c1_for_cond_preheader_gradient_c1_enter_gradient_aunroll_x_b,
        in_unnamed_gradient1_avm_readdata => in_unnamed_gradient1_avm_readdata,
        in_unnamed_gradient1_avm_readdatavalid => in_unnamed_gradient1_avm_readdatavalid,
        in_unnamed_gradient1_avm_waitrequest => in_unnamed_gradient1_avm_waitrequest,
        in_unnamed_gradient1_avm_writeack => in_unnamed_gradient1_avm_writeack,
        out_lsu_unnamed_gradient1_o_active => i_store_unnamed_gradient1_gradient_out_lsu_unnamed_gradient1_o_active,
        out_o_stall => i_store_unnamed_gradient1_gradient_out_o_stall,
        out_o_valid => i_store_unnamed_gradient1_gradient_out_o_valid,
        out_unnamed_gradient1_avm_address => i_store_unnamed_gradient1_gradient_out_unnamed_gradient1_avm_address,
        out_unnamed_gradient1_avm_burstcount => i_store_unnamed_gradient1_gradient_out_unnamed_gradient1_avm_burstcount,
        out_unnamed_gradient1_avm_byteenable => i_store_unnamed_gradient1_gradient_out_unnamed_gradient1_avm_byteenable,
        out_unnamed_gradient1_avm_enable => i_store_unnamed_gradient1_gradient_out_unnamed_gradient1_avm_enable,
        out_unnamed_gradient1_avm_read => i_store_unnamed_gradient1_gradient_out_unnamed_gradient1_avm_read,
        out_unnamed_gradient1_avm_write => i_store_unnamed_gradient1_gradient_out_unnamed_gradient1_avm_write,
        out_unnamed_gradient1_avm_writedata => i_store_unnamed_gradient1_gradient_out_unnamed_gradient1_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo(STALLENABLE,113)
    -- Valid signal propagation
    SE_out_redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_V0 <= SE_out_redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_backStall <= in_stall_in or not (SE_out_redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_and0 <= redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_valid_out;
    SE_out_redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_wireValid <= i_store_unnamed_gradient1_gradient_out_o_valid and SE_out_redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_and0;

    -- redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo(STALLFIFO,56)
    redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_valid_in <= SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_V4;
    redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_stall_in <= SE_out_redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_backStall;
    redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_data_in <= bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_h;
    redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_valid_in_bitsignaltemp <= redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_valid_in(0);
    redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_stall_in_bitsignaltemp <= redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_stall_in(0);
    redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_valid_out(0) <= redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_valid_out_bitsignaltemp;
    redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_stall_out(0) <= redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_stall_out_bitsignaltemp;
    theredist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 18,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_valid_in_bitsignaltemp,
        stall_in => redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_h,
        valid_out => redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_valid_out_bitsignaltemp,
        stall_out => redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_stall_out_bitsignaltemp,
        data_out => redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo(STALLFIFO,55)
    redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_valid_in <= SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_V3;
    redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_stall_in <= SE_out_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_backStall;
    redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_data_in <= bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_g;
    redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_valid_in_bitsignaltemp <= redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_valid_in(0);
    redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_stall_in_bitsignaltemp <= redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_stall_in(0);
    redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_valid_out(0) <= redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_valid_out_bitsignaltemp;
    redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_stall_out(0) <= redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_stall_out_bitsignaltemp;
    theredist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 16,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 64,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_valid_in_bitsignaltemp,
        stall_in => redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_g,
        valid_out => redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_valid_out_bitsignaltemp,
        stall_out => redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_stall_out_bitsignaltemp,
        data_out => redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo(STALLFIFO,54)
    redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_valid_in <= SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_V2;
    redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_stall_in <= SE_out_redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_backStall;
    redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_data_in <= bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_f;
    redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_valid_in_bitsignaltemp <= redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_valid_in(0);
    redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_stall_in_bitsignaltemp <= redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_stall_in(0);
    redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_valid_out(0) <= redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_valid_out_bitsignaltemp;
    redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_stall_out(0) <= redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_stall_out_bitsignaltemp;
    theredist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 16,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_valid_in_bitsignaltemp,
        stall_in => redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_f,
        valid_out => redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_valid_out_bitsignaltemp,
        stall_out => redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_stall_out_bitsignaltemp,
        data_out => redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0(STALLENABLE,99)
    -- Valid signal propagation
    SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_V0 <= SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_R_v_0;
    -- Stall signal propagation
    SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_s_tv_0 <= SR_SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_1_backStall and SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_R_v_0;
    -- Backward Enable generation
    SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_backEN <= not (SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_v_s_0 <= SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_backEN and SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_V0;
    -- Backward Stall generation
    SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_backStall <= not (SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_v_s_0);
    SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_backEN = "0") THEN
                SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_R_v_0 <= SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_R_v_0 and SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_s_tv_0;
            ELSE
                SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_R_v_0 <= SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x(BLACKBOX,20)@1
    -- in in_i_stall@20000000
    -- out out_c0_exit_0@6
    -- out out_c0_exit_1@6
    -- out out_c0_exit_2@6
    -- out out_c0_exit_3@6
    -- out out_c0_exit_4@6
    -- out out_c0_exit_5@6
    -- out out_c0_exit_6@6
    -- out out_c0_exit_7@6
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_stall_out@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_valid_out@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@6
    -- out out_pipeline_valid_out@20000000
    thei_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x : i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient
    PORT MAP (
        in_c0_eni1_0 => GND_q,
        in_c0_eni1_1 => bubble_select_gradient_B1_merge_reg_aunroll_x_b,
        in_frame_in => in_frame_in,
        in_frame_out => in_frame_out,
        in_i_stall => SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_backStall,
        in_i_valid => SE_out_gradient_B1_merge_reg_aunroll_x_V0,
        in_iterations => in_iterations,
        in_pipeline_stall_in => in_pipeline_stall_in,
        out_c0_exit_1 => i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1,
        out_c0_exit_2 => i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_2,
        out_c0_exit_3 => i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_3,
        out_c0_exit_4 => i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_4,
        out_c0_exit_5 => i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5,
        out_c0_exit_6 => i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6,
        out_c0_exit_7 => i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_stall_out => i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_valid_out => i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_valid_out,
        out_o_stall => i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_o_valid,
        out_pipeline_valid_out => i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x(STALLENABLE,90)
    SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg0 <= (others => '0');
            SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg1 <= (others => '0');
            SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg2 <= (others => '0');
            SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg3 <= (others => '0');
            SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg4 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg0 <= SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg1 <= SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_toReg1;
            -- Succesor 2
            SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg2 <= SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_toReg2;
            -- Succesor 3
            SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg3 <= SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_toReg3;
            -- Succesor 4
            SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg4 <= SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_toReg4;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_consumed0 <= (not (SE_redist0_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1_3_0_backStall) and SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg0;
    SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_consumed1 <= (not (i_load_unnamed_gradient0_gradient_out_o_stall) and SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg1;
    SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_consumed2 <= (not (redist3_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5_15_fifo_stall_out) and SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg2;
    SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_consumed3 <= (not (redist4_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6_15_fifo_stall_out) and SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg3;
    SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_consumed4 <= (not (redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_stall_out) and SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg4;
    -- Consuming
    SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_StallValid <= SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_backStall and SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_wireValid;
    SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_toReg0 <= SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_StallValid and SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_consumed0;
    SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_toReg1 <= SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_StallValid and SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_consumed1;
    SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_toReg2 <= SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_StallValid and SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_consumed2;
    SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_toReg3 <= SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_StallValid and SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_consumed3;
    SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_toReg4 <= SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_StallValid and SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_consumed4;
    -- Backward Stall generation
    SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_or0 <= SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_consumed0;
    SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_or1 <= SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_consumed1 and SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_or0;
    SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_or2 <= SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_consumed2 and SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_or1;
    SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_or3 <= SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_consumed3 and SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_or2;
    SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_wireStall <= not (SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_consumed4 and SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_or3);
    SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_backStall <= SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_V0 <= SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg0);
    SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_V1 <= SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg1);
    SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_V2 <= SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg2);
    SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_V3 <= SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg3);
    SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_V4 <= SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_fromReg4);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_wireValid <= i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_o_valid;

    -- SE_out_i_load_unnamed_gradient0_gradient(STALLENABLE,94)
    -- Valid signal propagation
    SE_out_i_load_unnamed_gradient0_gradient_V0 <= SE_out_i_load_unnamed_gradient0_gradient_wireValid;
    -- Backward Stall generation
    SE_out_i_load_unnamed_gradient0_gradient_backStall <= bubble_out_i_load_unnamed_gradient0_gradient_data_reg_stall_out or not (SE_out_i_load_unnamed_gradient0_gradient_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_load_unnamed_gradient0_gradient_wireValid <= i_load_unnamed_gradient0_gradient_out_o_valid;

    -- bubble_join_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x(BITJOIN,62)
    bubble_join_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_q <= i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7 & i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_6 & i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_5 & i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_4 & i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_3 & i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_2 & i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_1;

    -- bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x(BITSELECT,63)
    bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_q(9 downto 0));
    bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_q(10 downto 10));
    bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_q(11 downto 11));
    bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_e <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_q(75 downto 12));
    bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_f <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_q(76 downto 76));
    bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_g <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_q(140 downto 77));
    bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_h <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_q(141 downto 141));

    -- i_load_unnamed_gradient0_gradient(BLACKBOX,27)@6
    -- in in_i_stall@20000000
    -- out out_o_readdata@9
    -- out out_o_stall@20000000
    -- out out_o_valid@9
    -- out out_unnamed_gradient0_avm_address@20000000
    -- out out_unnamed_gradient0_avm_burstcount@20000000
    -- out out_unnamed_gradient0_avm_byteenable@20000000
    -- out out_unnamed_gradient0_avm_enable@20000000
    -- out out_unnamed_gradient0_avm_read@20000000
    -- out out_unnamed_gradient0_avm_write@20000000
    -- out out_unnamed_gradient0_avm_writedata@20000000
    thei_load_unnamed_gradient0_gradient : i_load_unnamed_gradient0_gradient48
    PORT MAP (
        in_flush => in_flush,
        in_i_address => bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_e,
        in_i_predicate => bubble_select_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_f,
        in_i_stall => SE_out_i_load_unnamed_gradient0_gradient_backStall,
        in_i_valid => SE_out_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_V1,
        in_unnamed_gradient0_avm_readdata => in_unnamed_gradient0_avm_readdata,
        in_unnamed_gradient0_avm_readdatavalid => in_unnamed_gradient0_avm_readdatavalid,
        in_unnamed_gradient0_avm_waitrequest => in_unnamed_gradient0_avm_waitrequest,
        in_unnamed_gradient0_avm_writeack => in_unnamed_gradient0_avm_writeack,
        out_o_readdata => i_load_unnamed_gradient0_gradient_out_o_readdata,
        out_o_stall => i_load_unnamed_gradient0_gradient_out_o_stall,
        out_o_valid => i_load_unnamed_gradient0_gradient_out_o_valid,
        out_unnamed_gradient0_avm_address => i_load_unnamed_gradient0_gradient_out_unnamed_gradient0_avm_address,
        out_unnamed_gradient0_avm_burstcount => i_load_unnamed_gradient0_gradient_out_unnamed_gradient0_avm_burstcount,
        out_unnamed_gradient0_avm_byteenable => i_load_unnamed_gradient0_gradient_out_unnamed_gradient0_avm_byteenable,
        out_unnamed_gradient0_avm_enable => i_load_unnamed_gradient0_gradient_out_unnamed_gradient0_avm_enable,
        out_unnamed_gradient0_avm_read => i_load_unnamed_gradient0_gradient_out_unnamed_gradient0_avm_read,
        out_unnamed_gradient0_avm_write => i_load_unnamed_gradient0_gradient_out_unnamed_gradient0_avm_write,
        out_unnamed_gradient0_avm_writedata => i_load_unnamed_gradient0_gradient_out_unnamed_gradient0_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,3)
    out_unnamed_gradient0_avm_address <= i_load_unnamed_gradient0_gradient_out_unnamed_gradient0_avm_address;
    out_unnamed_gradient0_avm_enable <= i_load_unnamed_gradient0_gradient_out_unnamed_gradient0_avm_enable;
    out_unnamed_gradient0_avm_read <= i_load_unnamed_gradient0_gradient_out_unnamed_gradient0_avm_read;
    out_unnamed_gradient0_avm_write <= i_load_unnamed_gradient0_gradient_out_unnamed_gradient0_avm_write;
    out_unnamed_gradient0_avm_writedata <= i_load_unnamed_gradient0_gradient_out_unnamed_gradient0_avm_writedata;
    out_unnamed_gradient0_avm_byteenable <= i_load_unnamed_gradient0_gradient_out_unnamed_gradient0_avm_byteenable;
    out_unnamed_gradient0_avm_burstcount <= i_load_unnamed_gradient0_gradient_out_unnamed_gradient0_avm_burstcount;

    -- bubble_join_redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo(BITJOIN,82)
    bubble_join_redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_q <= redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_data_out;

    -- bubble_select_redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo(BITSELECT,83)
    bubble_select_redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_q(0 downto 0));

    -- dupName_0_sync_out_x(GPOUT,8)@23
    out_c0_exe7 <= bubble_select_redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_b;
    out_valid_out <= SE_out_redist5_i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_c0_exit_7_17_fifo_V0;

    -- dupName_1_ext_sig_sync_out_x(GPOUT,9)
    out_unnamed_gradient1_avm_address <= i_store_unnamed_gradient1_gradient_out_unnamed_gradient1_avm_address;
    out_unnamed_gradient1_avm_enable <= i_store_unnamed_gradient1_gradient_out_unnamed_gradient1_avm_enable;
    out_unnamed_gradient1_avm_read <= i_store_unnamed_gradient1_gradient_out_unnamed_gradient1_avm_read;
    out_unnamed_gradient1_avm_write <= i_store_unnamed_gradient1_gradient_out_unnamed_gradient1_avm_write;
    out_unnamed_gradient1_avm_writedata <= i_store_unnamed_gradient1_gradient_out_unnamed_gradient1_avm_writedata;
    out_unnamed_gradient1_avm_byteenable <= i_store_unnamed_gradient1_gradient_out_unnamed_gradient1_avm_byteenable;
    out_unnamed_gradient1_avm_burstcount <= i_store_unnamed_gradient1_gradient_out_unnamed_gradient1_avm_burstcount;

    -- dupName_2_ext_sig_sync_out_x(GPOUT,13)
    out_lsu_unnamed_gradient1_o_active <= i_store_unnamed_gradient1_gradient_out_lsu_unnamed_gradient1_o_active;

    -- ext_sig_sync_out(GPOUT,26)
    out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_valid_out <= i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_stall_out <= i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,32)
    out_pipeline_valid_out <= i_sfc_c0_for_cond_preheader_gradient_c0_enter_gradient_aunroll_x_out_pipeline_valid_out;

    -- sync_out(GPOUT,37)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
