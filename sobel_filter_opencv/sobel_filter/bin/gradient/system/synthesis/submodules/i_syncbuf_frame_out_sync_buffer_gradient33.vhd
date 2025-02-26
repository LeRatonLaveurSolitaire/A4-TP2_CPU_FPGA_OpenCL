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

-- VHDL created from i_syncbuf_frame_out_sync_buffer_gradient33
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

entity i_syncbuf_frame_out_sync_buffer_gradient33 is
    port (
        in_i_dependence : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_buffer_out : out std_logic_vector(63 downto 0);  -- ufix64
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_buffer_in : in std_logic_vector(63 downto 0);  -- ufix64
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_syncbuf_frame_out_sync_buffer_gradient33;

architecture normal of i_syncbuf_frame_out_sync_buffer_gradient33 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component acl_dspba_buffer is
        generic (
            WIDTH : INTEGER := 64
        );
        port (
            buffer_in : in std_logic_vector(63 downto 0);
            buffer_out : out std_logic_vector(63 downto 0)
        );
    end component;


    signal i_syncbuf_frame_out_sync_buffer_gradient34_buffer_in : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_frame_out_sync_buffer_gradient34_buffer_out : STD_LOGIC_VECTOR (63 downto 0);

begin


    -- i_syncbuf_frame_out_sync_buffer_gradient34(EXTIFACE,4)@3
    i_syncbuf_frame_out_sync_buffer_gradient34_buffer_in <= in_buffer_in;
    thei_syncbuf_frame_out_sync_buffer_gradient34 : acl_dspba_buffer
    GENERIC MAP (
        WIDTH => 64
    )
    PORT MAP (
        buffer_in => in_buffer_in,
        buffer_out => i_syncbuf_frame_out_sync_buffer_gradient34_buffer_out
    );

    -- dupName_0_sync_out_x(GPOUT,3)@3
    out_buffer_out <= i_syncbuf_frame_out_sync_buffer_gradient34_buffer_out;
    out_valid_out <= in_valid_in;

    -- sync_out(GPOUT,8)@0
    out_stall_out <= in_stall_in;

END normal;
