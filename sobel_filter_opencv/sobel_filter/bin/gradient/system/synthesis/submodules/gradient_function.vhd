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

-- VHDL created from gradient_function
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

entity gradient_function is
    port (
        in_arg_frame_in : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_frame_out : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_global_size_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_global_size_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_global_size_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_iterations : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_size_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_size_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_size_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_threshold : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_start : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_gradient0_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_gradient0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_gradient0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_gradient0_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_gradient1_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_gradient1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_gradient1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_gradient1_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_o_active_unnamed_gradient1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_gradient0_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_gradient0_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_gradient0_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_gradient0_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_gradient0_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_gradient0_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_gradient0_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_gradient1_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_gradient1_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_gradient1_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_gradient1_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_gradient1_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_gradient1_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_gradient1_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end gradient_function;

architecture normal of gradient_function is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_gradient_B1_sr_1 is
        port (
            in_i_data_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_gradient_B2_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_gradient_B0 is
        port (
            in_feedback_in_0 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_frame_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_frame_out : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_iterations : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_gradient_B1 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_frame_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_frame_out : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_iterations : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_gradient0_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_gradient0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_gradient0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_gradient0_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_gradient1_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_gradient1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_gradient1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_gradient1_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_lsu_unnamed_gradient1_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_gradient0_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_gradient0_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_gradient0_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_gradient0_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_gradient0_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_gradient0_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_gradient0_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_unnamed_gradient1_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_gradient1_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_gradient1_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_gradient1_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_gradient1_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_gradient1_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_gradient1_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_gradient_B2 is
        port (
            in_feedback_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_0 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pipeline_keep_going_gradient_sr is
        port (
            in_i_data : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pipeline_keep_going_gradient_valid_fifo is
        port (
            in_data_in : in std_logic_vector(1 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B2_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B2_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B0_out_feedback_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B0_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B0_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_out_lsu_unnamed_gradient1_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_out_unnamed_gradient0_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_gradient_B1_out_unnamed_gradient0_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_gradient_B1_out_unnamed_gradient0_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_gradient_B1_out_unnamed_gradient0_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_out_unnamed_gradient0_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_out_unnamed_gradient0_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_out_unnamed_gradient0_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_gradient_B1_out_unnamed_gradient1_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_gradient_B1_out_unnamed_gradient1_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_gradient_B1_out_unnamed_gradient1_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_gradient_B1_out_unnamed_gradient1_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_out_unnamed_gradient1_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_out_unnamed_gradient1_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_out_unnamed_gradient1_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_gradient_B1_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B2_out_feedback_out_0 : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_gradient_B2_out_feedback_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B2_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B2_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal c_i2_0gr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal i_acl_pipeline_keep_going_gradient_sr_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_gradient_sr_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_gradient_valid_fifo_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_gradient_valid_fifo_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- c_i2_0gr(CONSTANT,12)
    c_i2_0gr_q <= "00";

    -- i_acl_pipeline_keep_going_gradient_valid_fifo(BLACKBOX,14)
    thei_acl_pipeline_keep_going_gradient_valid_fifo : i_acl_pipeline_keep_going_gradient_valid_fifo
    PORT MAP (
        in_data_in => c_i2_0gr_q,
        in_stall_in => bb_gradient_B1_out_stall_out_0,
        in_valid_in => i_acl_pipeline_keep_going_gradient_sr_out_o_valid,
        out_stall_out => i_acl_pipeline_keep_going_gradient_valid_fifo_out_stall_out,
        out_valid_out => i_acl_pipeline_keep_going_gradient_valid_fifo_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_gradient_B0(BLACKBOX,7)
    thebb_gradient_B0 : bb_gradient_B0
    PORT MAP (
        in_feedback_in_0 => bb_gradient_B2_out_feedback_out_0,
        in_feedback_valid_in_0 => bb_gradient_B2_out_feedback_valid_out_0,
        in_frame_in => in_arg_frame_in,
        in_frame_out => in_arg_frame_out,
        in_iterations => in_arg_iterations,
        in_stall_in_0 => bb_gradient_B1_sr_1_aunroll_x_out_o_stall,
        in_valid_in_0 => in_valid_in,
        out_feedback_stall_out_0 => bb_gradient_B0_out_feedback_stall_out_0,
        out_stall_out_0 => bb_gradient_B0_out_stall_out_0,
        out_valid_out_0 => bb_gradient_B0_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_gradient_B2(BLACKBOX,9)
    thebb_gradient_B2 : bb_gradient_B2
    PORT MAP (
        in_feedback_stall_in_0 => bb_gradient_B0_out_feedback_stall_out_0,
        in_stall_in_0 => in_stall_in,
        in_valid_in_0 => bb_gradient_B2_sr_0_aunroll_x_out_o_valid,
        out_feedback_out_0 => bb_gradient_B2_out_feedback_out_0,
        out_feedback_valid_out_0 => bb_gradient_B2_out_feedback_valid_out_0,
        out_stall_out_0 => bb_gradient_B2_out_stall_out_0,
        out_valid_out_0 => bb_gradient_B2_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_gradient_B2_sr_0_aunroll_x(BLACKBOX,3)
    thebb_gradient_B2_sr_0_aunroll_x : bb_gradient_B2_sr_0
    PORT MAP (
        in_i_data_0 => GND_q,
        in_i_stall => bb_gradient_B2_out_stall_out_0,
        in_i_valid => bb_gradient_B1_out_valid_out_0,
        out_o_stall => bb_gradient_B2_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_gradient_B2_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going_gradient_sr(BLACKBOX,13)
    thei_acl_pipeline_keep_going_gradient_sr : i_acl_pipeline_keep_going_gradient_sr
    PORT MAP (
        in_i_data => GND_q,
        in_i_stall => i_acl_pipeline_keep_going_gradient_valid_fifo_out_stall_out,
        in_i_valid => bb_gradient_B1_out_pipeline_valid_out,
        out_o_stall => i_acl_pipeline_keep_going_gradient_sr_out_o_stall,
        out_o_valid => i_acl_pipeline_keep_going_gradient_sr_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- bb_gradient_B1_sr_1_aunroll_x(BLACKBOX,2)
    thebb_gradient_B1_sr_1_aunroll_x : bb_gradient_B1_sr_1
    PORT MAP (
        in_i_data_0 => VCC_q,
        in_i_stall => bb_gradient_B1_out_stall_out_1,
        in_i_valid => bb_gradient_B0_out_valid_out_0,
        out_o_data_0 => bb_gradient_B1_sr_1_aunroll_x_out_o_data_0,
        out_o_stall => bb_gradient_B1_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_gradient_B1_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- bb_gradient_B1(BLACKBOX,8)
    thebb_gradient_B1 : bb_gradient_B1
    PORT MAP (
        in_flush => in_start,
        in_forked_0 => GND_q,
        in_forked_1 => bb_gradient_B1_sr_1_aunroll_x_out_o_data_0,
        in_frame_in => in_arg_frame_in,
        in_frame_out => in_arg_frame_out,
        in_iterations => in_arg_iterations,
        in_pipeline_stall_in => i_acl_pipeline_keep_going_gradient_sr_out_o_stall,
        in_stall_in_0 => bb_gradient_B2_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => GND_q,
        in_unnamed_gradient0_avm_readdata => in_unnamed_gradient0_avm_readdata,
        in_unnamed_gradient0_avm_readdatavalid => in_unnamed_gradient0_avm_readdatavalid,
        in_unnamed_gradient0_avm_waitrequest => in_unnamed_gradient0_avm_waitrequest,
        in_unnamed_gradient0_avm_writeack => in_unnamed_gradient0_avm_writeack,
        in_unnamed_gradient1_avm_readdata => in_unnamed_gradient1_avm_readdata,
        in_unnamed_gradient1_avm_readdatavalid => in_unnamed_gradient1_avm_readdatavalid,
        in_unnamed_gradient1_avm_waitrequest => in_unnamed_gradient1_avm_waitrequest,
        in_unnamed_gradient1_avm_writeack => in_unnamed_gradient1_avm_writeack,
        in_valid_in_0 => i_acl_pipeline_keep_going_gradient_valid_fifo_out_valid_out,
        in_valid_in_1 => bb_gradient_B1_sr_1_aunroll_x_out_o_valid,
        out_lsu_unnamed_gradient1_o_active => bb_gradient_B1_out_lsu_unnamed_gradient1_o_active,
        out_pipeline_valid_out => bb_gradient_B1_out_pipeline_valid_out,
        out_stall_out_0 => bb_gradient_B1_out_stall_out_0,
        out_stall_out_1 => bb_gradient_B1_out_stall_out_1,
        out_unnamed_gradient0_avm_address => bb_gradient_B1_out_unnamed_gradient0_avm_address,
        out_unnamed_gradient0_avm_burstcount => bb_gradient_B1_out_unnamed_gradient0_avm_burstcount,
        out_unnamed_gradient0_avm_byteenable => bb_gradient_B1_out_unnamed_gradient0_avm_byteenable,
        out_unnamed_gradient0_avm_enable => bb_gradient_B1_out_unnamed_gradient0_avm_enable,
        out_unnamed_gradient0_avm_read => bb_gradient_B1_out_unnamed_gradient0_avm_read,
        out_unnamed_gradient0_avm_write => bb_gradient_B1_out_unnamed_gradient0_avm_write,
        out_unnamed_gradient0_avm_writedata => bb_gradient_B1_out_unnamed_gradient0_avm_writedata,
        out_unnamed_gradient1_avm_address => bb_gradient_B1_out_unnamed_gradient1_avm_address,
        out_unnamed_gradient1_avm_burstcount => bb_gradient_B1_out_unnamed_gradient1_avm_burstcount,
        out_unnamed_gradient1_avm_byteenable => bb_gradient_B1_out_unnamed_gradient1_avm_byteenable,
        out_unnamed_gradient1_avm_enable => bb_gradient_B1_out_unnamed_gradient1_avm_enable,
        out_unnamed_gradient1_avm_read => bb_gradient_B1_out_unnamed_gradient1_avm_read,
        out_unnamed_gradient1_avm_write => bb_gradient_B1_out_unnamed_gradient1_avm_write,
        out_unnamed_gradient1_avm_writedata => bb_gradient_B1_out_unnamed_gradient1_avm_writedata,
        out_valid_out_0 => bb_gradient_B1_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- out_o_active_unnamed_gradient1(GPOUT,36)
    out_o_active_unnamed_gradient1 <= bb_gradient_B1_out_lsu_unnamed_gradient1_o_active;

    -- out_stall_out(GPOUT,37)
    out_stall_out <= bb_gradient_B0_out_stall_out_0;

    -- out_unnamed_gradient0_avm_address(GPOUT,38)
    out_unnamed_gradient0_avm_address <= bb_gradient_B1_out_unnamed_gradient0_avm_address;

    -- out_unnamed_gradient0_avm_burstcount(GPOUT,39)
    out_unnamed_gradient0_avm_burstcount <= bb_gradient_B1_out_unnamed_gradient0_avm_burstcount;

    -- out_unnamed_gradient0_avm_byteenable(GPOUT,40)
    out_unnamed_gradient0_avm_byteenable <= bb_gradient_B1_out_unnamed_gradient0_avm_byteenable;

    -- out_unnamed_gradient0_avm_enable(GPOUT,41)
    out_unnamed_gradient0_avm_enable <= bb_gradient_B1_out_unnamed_gradient0_avm_enable;

    -- out_unnamed_gradient0_avm_read(GPOUT,42)
    out_unnamed_gradient0_avm_read <= bb_gradient_B1_out_unnamed_gradient0_avm_read;

    -- out_unnamed_gradient0_avm_write(GPOUT,43)
    out_unnamed_gradient0_avm_write <= bb_gradient_B1_out_unnamed_gradient0_avm_write;

    -- out_unnamed_gradient0_avm_writedata(GPOUT,44)
    out_unnamed_gradient0_avm_writedata <= bb_gradient_B1_out_unnamed_gradient0_avm_writedata;

    -- out_unnamed_gradient1_avm_address(GPOUT,45)
    out_unnamed_gradient1_avm_address <= bb_gradient_B1_out_unnamed_gradient1_avm_address;

    -- out_unnamed_gradient1_avm_burstcount(GPOUT,46)
    out_unnamed_gradient1_avm_burstcount <= bb_gradient_B1_out_unnamed_gradient1_avm_burstcount;

    -- out_unnamed_gradient1_avm_byteenable(GPOUT,47)
    out_unnamed_gradient1_avm_byteenable <= bb_gradient_B1_out_unnamed_gradient1_avm_byteenable;

    -- out_unnamed_gradient1_avm_enable(GPOUT,48)
    out_unnamed_gradient1_avm_enable <= bb_gradient_B1_out_unnamed_gradient1_avm_enable;

    -- out_unnamed_gradient1_avm_read(GPOUT,49)
    out_unnamed_gradient1_avm_read <= bb_gradient_B1_out_unnamed_gradient1_avm_read;

    -- out_unnamed_gradient1_avm_write(GPOUT,50)
    out_unnamed_gradient1_avm_write <= bb_gradient_B1_out_unnamed_gradient1_avm_write;

    -- out_unnamed_gradient1_avm_writedata(GPOUT,51)
    out_unnamed_gradient1_avm_writedata <= bb_gradient_B1_out_unnamed_gradient1_avm_writedata;

    -- out_valid_out(GPOUT,52)
    out_valid_out <= bb_gradient_B2_out_valid_out_0;

END normal;
