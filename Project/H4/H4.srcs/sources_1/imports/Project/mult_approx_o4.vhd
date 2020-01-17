--d----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/28/2017 05:10:03 PM
-- Design Name: 
-- Module Name: mult_approx_o4 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.NUMERIC_STD.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity mult_approx_o4 is
generic (word_size: integer:=4); 
Port (
a : in  STD_LOGIC_VECTOR (word_size-1 downto 0);
b : in  STD_LOGIC_VECTOR (word_size-1 downto 0);
prod: out STD_LOGIC_VECTOR (word_size * 2 - 1 downto 0));
end mult_approx_o4;

architecture Behavioral of mult_approx_o4 is

type data_type is array(11 downto 0) of std_logic_vector(11 downto 0);
signal prop: data_type;
signal gen: data_type;
signal carries: data_type;
signal output: data_type;
type input_carries is array((word_size - 2 ) downto 0) of std_logic_vector(word_size/4 downto 0);
signal input_carry: data_type; --input_carries;
type interm_results is array((word_size - 2) downto 0) of std_logic_vector(word_size downto 0);
signal chain: data_type; --interm_results;
signal anding1 : std_logic;
signal anding2 : std_logic;
signal anding3 : std_logic;
signal temp : std_logic;
signal prod1: STD_LOGIC_VECTOR (word_size + 3 downto 0);
signal prod2: STD_LOGIC_VECTOR (word_size + 3 downto 0);

begin

 set_initial_carry:
    for car in 0 to (word_size - 2) generate
        input_carry(car)(0) <= '0';
    end generate set_initial_carry; 
    
 lut_inst_LSB: lut6_2 
    generic map(INIT => X"6AC06AC088888888")
    port map(
    I0 => b(0), --h
    I1 => a(0), --c
    I2 => b(1), -- g
    I3 => a(1), -- d
    I4 => '1',
    I5 => '1',
    O5 => prod(0),
    O6 => prod(1)
    );    

lut_inst_P2: lut6_2 
    generic map(INIT => X"47777888B8887888")
    port map(
    I0 => a(2), --h
    I1 => b(0), --c
    I2 => a(1), -- g
    I3 => b(1), -- d
    I4 => a(0),
    I5 => b(2),
    O5 => gen(1)(0),
    O6 => prod(2)
    );
    
lut_inst_P30: lut6_2 
              generic map(INIT => X"7888788878887888")
              port map(
              I0 => b(1), --h
              I1 => a(2), --c
              I2 => b(0), -- g
              I3 => a(3), -- d
              I4 => '1',
              I5 => '1',
              O5 => gen(0)(10),
              O6 => prop(0)(10)
              );     
                                                      
            lut_inst_P31: lut6_2 
              generic map(INIT => X"7888788878887888")
              port map(
              I0 => b(3), --h
              I1 => a(0), --c
              I2 => b(2), -- g
              I3 => a(1), -- d
              I4 => '1',
              I5 => '1',
              O5 => gen(0)(11),
              O6 => prop(0)(11)
              );   
                                                  
            lut_inst_P3: lut6_2 
              generic map(INIT => X"6666666666666666")
              port map(
              I0 => prop(0)(11), --h
              I1 => prop(0)(10), --c
              I2 => '1', -- g
              I3 => '1', -- d
              I4 => '1',
              I5 => '1',
              O5 => temp,
              O6 => prod(3)
              );       

 lut_inst_P4: lut6_2 
    generic map(INIT => X"8777788878887888")--47777888B8887888")
    port map(
    I0 => a(3), --h
    I1 => b(1), --c
    I2 => a(2), -- g
    I3 => b(2), -- d
    I4 => a(1),
    I5 => b(3),
    O5 => gen(1)(1),
    O6 => prod(4)
    );
    
    lut_inst_MSB1: lut6_2 
              generic map(INIT => X"6AC06AC080008000")
              port map(
              I0 => b(3), --h
              I1 => a(3), --c
              I2 => b(2), -- g
              I3 => a(2), -- d
              I4 => '1',
              I5 => '1',
              O5 => gen(0)(0),
              O6 => prod(5)
              );
              
           lut_inst_MSB: lut6_2 
              generic map(INIT => X"7878787880808080")
              port map(
              I0 => b(3), --h
              I1 => a(3), --c
              I2 => gen(0)(0), -- g
              I3 => '1', -- d
              I4 => '1',
              I5 => '1',
              O5 => prod(7),
              O6 => prod(6)
              );

end Behavioral;
