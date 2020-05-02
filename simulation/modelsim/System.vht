-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "12/05/2019 19:11:54"
                                                            
-- Vhdl Test Bench template for design  :  System
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY System_vhd_tst IS
END System_vhd_tst;
ARCHITECTURE System_arch OF System_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL buzzer : STD_LOGIC;
SIGNAL fire : STD_LOGIC;
SIGNAL led : STD_LOGIC;
SIGNAL light : STD_LOGIC;
SIGNAL pump : STD_LOGIC;
SIGNAL stop : STD_LOGIC;
COMPONENT System
	PORT (
	buzzer : OUT STD_LOGIC;
	fire : IN STD_LOGIC;
	led : OUT STD_LOGIC;
	light : IN STD_LOGIC;
	pump : OUT STD_LOGIC;
	stop : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : System
	PORT MAP (
-- list connections between master ports and signals
	buzzer => buzzer,
	fire => fire,
	led => led,
	light => light,
	pump => pump,
	stop => stop
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END System_arch;
