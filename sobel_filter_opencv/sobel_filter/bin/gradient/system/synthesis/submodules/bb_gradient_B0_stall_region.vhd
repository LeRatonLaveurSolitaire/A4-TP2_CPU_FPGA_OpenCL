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

-- VHDL created from bb_gradient_B0_stall_region
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

entity bb_gradient_B0_stall_region is
    port (
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_feedback_in_0 : in std_logic_vector(7 downto 0);  -- ufix8
        out_feedback_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        in_feedback_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_gradient_B0_stall_region;

architecture normal of bb_gradient_B0_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component gradient_B0_merge_reg is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_throttle_pop_gradient0 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_0 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal gradient_B0_merge_reg_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal gradient_B0_merge_reg_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_throttle_pop_gradient_out_feedback_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_throttle_pop_gradient_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_throttle_pop_gradient_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_gradient_B0_merge_reg_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_gradient_B0_merge_reg_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_gradient_B0_merge_reg_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_throttle_pop_gradient_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_throttle_pop_gradient_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_throttle_pop_gradient_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- SE_stall_entry(STALLENABLE,29)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= gradient_B0_merge_reg_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- gradient_B0_merge_reg(BLACKBOX,14)@0
    -- in in_stall_in@20000000
    -- out out_data_out@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    thegradient_B0_merge_reg : gradient_B0_merge_reg
    PORT MAP (
        in_data_in => GND_q,
        in_stall_in => SE_out_gradient_B0_merge_reg_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_stall_out => gradient_B0_merge_reg_out_stall_out,
        out_valid_out => gradient_B0_merge_reg_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_gradient_B0_merge_reg(STALLENABLE,26)
    -- Valid signal propagation
    SE_out_gradient_B0_merge_reg_V0 <= SE_out_gradient_B0_merge_reg_wireValid;
    -- Backward Stall generation
    SE_out_gradient_B0_merge_reg_backStall <= i_acl_pop_i1_throttle_pop_gradient_out_stall_out or not (SE_out_gradient_B0_merge_reg_wireValid);
    -- Computing multiple Valid(s)
    SE_out_gradient_B0_merge_reg_wireValid <= gradient_B0_merge_reg_out_valid_out;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_acl_pop_i1_throttle_pop_gradient(BLACKBOX,15)@1
    -- in in_stall_in@20000000
    -- out out_data_out@2
    -- out out_feedback_stall_out_0@20000000
    -- out out_stall_out@20000000
    -- out out_valid_out@2
    thei_acl_pop_i1_throttle_pop_gradient : i_acl_pop_i1_throttle_pop_gradient0
    PORT MAP (
        in_data_in => GND_q,
        in_dir => GND_q,
        in_feedback_in_0 => in_feedback_in_0,
        in_feedback_valid_in_0 => in_feedback_valid_in_0,
        in_predicate => GND_q,
        in_stall_in => SE_out_i_acl_pop_i1_throttle_pop_gradient_backStall,
        in_valid_in => SE_out_gradient_B0_merge_reg_V0,
        out_feedback_stall_out_0 => i_acl_pop_i1_throttle_pop_gradient_out_feedback_stall_out_0,
        out_stall_out => i_acl_pop_i1_throttle_pop_gradient_out_stall_out,
        out_valid_out => i_acl_pop_i1_throttle_pop_gradient_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_acl_pop_i1_throttle_pop_gradient(STALLENABLE,28)
    -- Valid signal propagation
    SE_out_i_acl_pop_i1_throttle_pop_gradient_V0 <= SE_out_i_acl_pop_i1_throttle_pop_gradient_wireValid;
    -- Backward Stall generation
    SE_out_i_acl_pop_i1_throttle_pop_gradient_backStall <= in_stall_in or not (SE_out_i_acl_pop_i1_throttle_pop_gradient_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_acl_pop_i1_throttle_pop_gradient_wireValid <= i_acl_pop_i1_throttle_pop_gradient_out_valid_out;

    -- dupName_0_sync_out_x(GPOUT,5)@2
    out_valid_out <= SE_out_i_acl_pop_i1_throttle_pop_gradient_V0;

    -- feedback_stall_out_0_sync(GPOUT,12)
    out_feedback_stall_out_0 <= i_acl_pop_i1_throttle_pop_gradient_out_feedback_stall_out_0;

    -- sync_out(GPOUT,21)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
