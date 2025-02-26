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

-- VHDL created from bb_gradient_B1
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

entity bb_gradient_B1 is
    port (
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_frame_in : in std_logic_vector(63 downto 0);  -- ufix64
        in_frame_out : in std_logic_vector(63 downto 0);  -- ufix64
        in_iterations : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_gradient0_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_gradient0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_gradient0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_gradient0_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_gradient1_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_gradient1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_gradient1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_gradient1_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_lsu_unnamed_gradient1_o_active : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
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
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_gradient_B1;

architecture normal of bb_gradient_B1 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_gradient_B1_stall_region is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_frame_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_frame_out : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_iterations : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_gradient0_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_gradient0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_gradient0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_gradient0_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_gradient1_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_gradient1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_gradient1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_gradient1_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_lsu_unnamed_gradient1_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component gradient_B1_branch is
        port (
            in_c0_exe7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component gradient_B1_merge is
        port (
            in_forked_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_forked : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_gradient_B1_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_stall_region_out_c0_exe7 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_stall_region_out_lsu_unnamed_gradient1_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_stall_region_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_stall_region_out_unnamed_gradient0_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_gradient_B1_stall_region_out_unnamed_gradient0_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_gradient_B1_stall_region_out_unnamed_gradient0_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_gradient_B1_stall_region_out_unnamed_gradient0_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_stall_region_out_unnamed_gradient0_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_stall_region_out_unnamed_gradient0_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_stall_region_out_unnamed_gradient0_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_gradient_B1_stall_region_out_unnamed_gradient1_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_gradient_B1_stall_region_out_unnamed_gradient1_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_gradient_B1_stall_region_out_unnamed_gradient1_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_gradient_B1_stall_region_out_unnamed_gradient1_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_stall_region_out_unnamed_gradient1_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_stall_region_out_unnamed_gradient1_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_gradient_B1_stall_region_out_unnamed_gradient1_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_gradient_B1_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal gradient_B1_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal gradient_B1_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal gradient_B1_branch_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal gradient_B1_merge_out_forked : STD_LOGIC_VECTOR (0 downto 0);
    signal gradient_B1_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal gradient_B1_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal gradient_B1_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- gradient_B1_branch(BLACKBOX,3)
    thegradient_B1_branch : gradient_B1_branch
    PORT MAP (
        in_c0_exe7 => bb_gradient_B1_stall_region_out_c0_exe7,
        in_stall_in_0 => in_stall_in_0,
        in_stall_in_1 => in_stall_in_1,
        in_valid_in => bb_gradient_B1_stall_region_out_valid_out,
        out_stall_out => gradient_B1_branch_out_stall_out,
        out_valid_out_0 => gradient_B1_branch_out_valid_out_0,
        out_valid_out_1 => gradient_B1_branch_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- gradient_B1_merge(BLACKBOX,4)
    thegradient_B1_merge : gradient_B1_merge
    PORT MAP (
        in_forked_0 => in_forked_0,
        in_forked_1 => in_forked_1,
        in_stall_in => bb_gradient_B1_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_forked => gradient_B1_merge_out_forked,
        out_stall_out_0 => gradient_B1_merge_out_stall_out_0,
        out_stall_out_1 => gradient_B1_merge_out_stall_out_1,
        out_valid_out => gradient_B1_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_gradient_B1_stall_region(BLACKBOX,2)
    thebb_gradient_B1_stall_region : bb_gradient_B1_stall_region
    PORT MAP (
        in_flush => in_flush,
        in_forked => gradient_B1_merge_out_forked,
        in_frame_in => in_frame_in,
        in_frame_out => in_frame_out,
        in_iterations => in_iterations,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => gradient_B1_branch_out_stall_out,
        in_unnamed_gradient0_avm_readdata => in_unnamed_gradient0_avm_readdata,
        in_unnamed_gradient0_avm_readdatavalid => in_unnamed_gradient0_avm_readdatavalid,
        in_unnamed_gradient0_avm_waitrequest => in_unnamed_gradient0_avm_waitrequest,
        in_unnamed_gradient0_avm_writeack => in_unnamed_gradient0_avm_writeack,
        in_unnamed_gradient1_avm_readdata => in_unnamed_gradient1_avm_readdata,
        in_unnamed_gradient1_avm_readdatavalid => in_unnamed_gradient1_avm_readdatavalid,
        in_unnamed_gradient1_avm_waitrequest => in_unnamed_gradient1_avm_waitrequest,
        in_unnamed_gradient1_avm_writeack => in_unnamed_gradient1_avm_writeack,
        in_valid_in => gradient_B1_merge_out_valid_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_stall_out => bb_gradient_B1_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_valid_out => bb_gradient_B1_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_valid_out,
        out_c0_exe7 => bb_gradient_B1_stall_region_out_c0_exe7,
        out_lsu_unnamed_gradient1_o_active => bb_gradient_B1_stall_region_out_lsu_unnamed_gradient1_o_active,
        out_pipeline_valid_out => bb_gradient_B1_stall_region_out_pipeline_valid_out,
        out_stall_out => bb_gradient_B1_stall_region_out_stall_out,
        out_unnamed_gradient0_avm_address => bb_gradient_B1_stall_region_out_unnamed_gradient0_avm_address,
        out_unnamed_gradient0_avm_burstcount => bb_gradient_B1_stall_region_out_unnamed_gradient0_avm_burstcount,
        out_unnamed_gradient0_avm_byteenable => bb_gradient_B1_stall_region_out_unnamed_gradient0_avm_byteenable,
        out_unnamed_gradient0_avm_enable => bb_gradient_B1_stall_region_out_unnamed_gradient0_avm_enable,
        out_unnamed_gradient0_avm_read => bb_gradient_B1_stall_region_out_unnamed_gradient0_avm_read,
        out_unnamed_gradient0_avm_write => bb_gradient_B1_stall_region_out_unnamed_gradient0_avm_write,
        out_unnamed_gradient0_avm_writedata => bb_gradient_B1_stall_region_out_unnamed_gradient0_avm_writedata,
        out_unnamed_gradient1_avm_address => bb_gradient_B1_stall_region_out_unnamed_gradient1_avm_address,
        out_unnamed_gradient1_avm_burstcount => bb_gradient_B1_stall_region_out_unnamed_gradient1_avm_burstcount,
        out_unnamed_gradient1_avm_byteenable => bb_gradient_B1_stall_region_out_unnamed_gradient1_avm_byteenable,
        out_unnamed_gradient1_avm_enable => bb_gradient_B1_stall_region_out_unnamed_gradient1_avm_enable,
        out_unnamed_gradient1_avm_read => bb_gradient_B1_stall_region_out_unnamed_gradient1_avm_read,
        out_unnamed_gradient1_avm_write => bb_gradient_B1_stall_region_out_unnamed_gradient1_avm_write,
        out_unnamed_gradient1_avm_writedata => bb_gradient_B1_stall_region_out_unnamed_gradient1_avm_writedata,
        out_valid_out => bb_gradient_B1_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- out_exiting_stall_out(GPOUT,23)
    out_exiting_stall_out <= bb_gradient_B1_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_stall_out;

    -- out_exiting_valid_out(GPOUT,24)
    out_exiting_valid_out <= bb_gradient_B1_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_gradient_exiting_valid_out;

    -- out_lsu_unnamed_gradient1_o_active(GPOUT,25)
    out_lsu_unnamed_gradient1_o_active <= bb_gradient_B1_stall_region_out_lsu_unnamed_gradient1_o_active;

    -- out_stall_out_0(GPOUT,26)
    out_stall_out_0 <= gradient_B1_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,27)
    out_stall_out_1 <= gradient_B1_merge_out_stall_out_1;

    -- out_unnamed_gradient0_avm_address(GPOUT,28)
    out_unnamed_gradient0_avm_address <= bb_gradient_B1_stall_region_out_unnamed_gradient0_avm_address;

    -- out_unnamed_gradient0_avm_burstcount(GPOUT,29)
    out_unnamed_gradient0_avm_burstcount <= bb_gradient_B1_stall_region_out_unnamed_gradient0_avm_burstcount;

    -- out_unnamed_gradient0_avm_byteenable(GPOUT,30)
    out_unnamed_gradient0_avm_byteenable <= bb_gradient_B1_stall_region_out_unnamed_gradient0_avm_byteenable;

    -- out_unnamed_gradient0_avm_enable(GPOUT,31)
    out_unnamed_gradient0_avm_enable <= bb_gradient_B1_stall_region_out_unnamed_gradient0_avm_enable;

    -- out_unnamed_gradient0_avm_read(GPOUT,32)
    out_unnamed_gradient0_avm_read <= bb_gradient_B1_stall_region_out_unnamed_gradient0_avm_read;

    -- out_unnamed_gradient0_avm_write(GPOUT,33)
    out_unnamed_gradient0_avm_write <= bb_gradient_B1_stall_region_out_unnamed_gradient0_avm_write;

    -- out_unnamed_gradient0_avm_writedata(GPOUT,34)
    out_unnamed_gradient0_avm_writedata <= bb_gradient_B1_stall_region_out_unnamed_gradient0_avm_writedata;

    -- out_unnamed_gradient1_avm_address(GPOUT,35)
    out_unnamed_gradient1_avm_address <= bb_gradient_B1_stall_region_out_unnamed_gradient1_avm_address;

    -- out_unnamed_gradient1_avm_burstcount(GPOUT,36)
    out_unnamed_gradient1_avm_burstcount <= bb_gradient_B1_stall_region_out_unnamed_gradient1_avm_burstcount;

    -- out_unnamed_gradient1_avm_byteenable(GPOUT,37)
    out_unnamed_gradient1_avm_byteenable <= bb_gradient_B1_stall_region_out_unnamed_gradient1_avm_byteenable;

    -- out_unnamed_gradient1_avm_enable(GPOUT,38)
    out_unnamed_gradient1_avm_enable <= bb_gradient_B1_stall_region_out_unnamed_gradient1_avm_enable;

    -- out_unnamed_gradient1_avm_read(GPOUT,39)
    out_unnamed_gradient1_avm_read <= bb_gradient_B1_stall_region_out_unnamed_gradient1_avm_read;

    -- out_unnamed_gradient1_avm_write(GPOUT,40)
    out_unnamed_gradient1_avm_write <= bb_gradient_B1_stall_region_out_unnamed_gradient1_avm_write;

    -- out_unnamed_gradient1_avm_writedata(GPOUT,41)
    out_unnamed_gradient1_avm_writedata <= bb_gradient_B1_stall_region_out_unnamed_gradient1_avm_writedata;

    -- out_valid_out_0(GPOUT,42)
    out_valid_out_0 <= gradient_B1_branch_out_valid_out_0;

    -- out_valid_out_1(GPOUT,43)
    out_valid_out_1 <= gradient_B1_branch_out_valid_out_1;

    -- pipeline_valid_out_sync(GPOUT,45)
    out_pipeline_valid_out <= bb_gradient_B1_stall_region_out_pipeline_valid_out;

END normal;
