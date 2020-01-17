----------------------------------------------------------------------------------
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

entity mult_approx_a8 is
generic (word_size: integer:=8); 
Port (
a : in  STD_LOGIC_VECTOR (word_size-1 downto 0);
b : in  STD_LOGIC_VECTOR (word_size-1 downto 0);
prod: out STD_LOGIC_VECTOR (word_size * 2 - 1 downto 0));
end mult_approx_a8;

architecture Behavioral of mult_approx_a8 is

type data_type is array(14 downto 0) of std_logic_vector(14 downto 0);
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
    
Type_1: 
            for i in 0 to (word_size - 2) generate 
                lut_inst0: lut6_2 
                generic map(INIT => X"7888788880008000")
                port map(
                I0 => b(0), --h
                I1 => a(i+1), --c
                I2 => b(1), -- g
                I3 => a(i), -- d
                I4 => '1',
                I5 => '1',
                O5 => gen(0)(i),
                O6 => prop(0)(i)
                );
            end generate Type_1;
            
            lut_inst1: lut6_2 
                generic map(INIT => X"88888888F000F000")
                port map(
                I0 => b(0), 
                I1 => a(0), 
                I2 => b(1), 
                I3 => a(word_size-1), 
                I4 => '1',
                I5 => '1',
                O5 => prop(0)(7) ,
                O6 => prod1(0)
                );
              
              gen(0)(7) <= '0';
              --prop(0)(7) <= temp1;
              
              carry_chain_1:
                        for z in 0 to 1 generate            
                            carry_inst2: CARRY4                                        
                            port map (                                                    
                            DI => gen(0)(z*4+3 downto z*4),                                             
                            S => prop(0)(z*4+3 downto z*4),                                            
                            O => output(0)(z*4+3 downto z*4),                                
                            CO => carries(0)(z*4+3 downto z*4),                                        
                            CI => input_carry(0)(z),                            
                            CYINIT => '0'
                            );
                            input_carry(0)(z+1) <= carries(0)(z*4+3);
                            chain(0)(z*4+3 downto z*4) <= output(0)(z*4+3 downto z*4);
                        end generate carry_chain_1;
                        chain(0)(8) <= carries(0)(7);
                        
                        
             Type_2: 
                   for i in 0 to (word_size - 2) generate 
                   lut_inst0: lut6_2 
                   generic map(INIT => X"7888788880008000")
                   port map(
                   I0 => b(2), --h
                   I1 => a(i+1), --c
                   I2 => b(3), -- g
                   I3 => a(i), -- d
                   I4 => '1',
                   I5 => '1',
                   O5 => gen(1)(i),
                   O6 => prop(1)(i)
                   );
                   end generate Type_2;           
                        
              lut_inst2: lut6_2 
                   generic map(INIT => X"88888888F000F000")
                   port map(
                   I0 => b(2), 
                   I1 => a(0), 
                   I2 => b(3), 
                   I3 => a(word_size-1), 
                   I4 => '1',
                   I5 => '1',
                   O5 => prop(1)(7) ,
                   O6 => prod2(0)
                   );
                                          
                   gen(1)(7) <= '0';
                   --prop(1)(7) <= temp2;
                                          
              carry_chain_2:
                   for z in 0 to 1 generate            
                   carry_inst2: CARRY4                                        
                   port map (                                                    
                   DI => gen(1)(z*4+3 downto z*4),                                             
                   S => prop(1)(z*4+3 downto z*4),                                            
                   O => output(1)(z*4+3 downto z*4),                                
                   CO => carries(1)(z*4+3 downto z*4),                                        
                   CI => input_carry(1)(z),                            
                   CYINIT => '0'
                   );
                   input_carry(1)(z+1) <= carries(1)(z*4+3);
                   chain(1)(z*4+3 downto z*4) <= output(1)(z*4+3 downto z*4);
                   end generate carry_chain_2;
                   chain(1)(8) <= carries(1)(7);       
                   
    --          add: for i in 0 to 2 generate
    --               lut_inst3: lut6_2 
    --                         generic map(INIT => X"666666660FF00FF0")
    --                         port map(
    --                         I0 => chain(1)(2*i), 
    --                         I1 => chain(0)(2*(i+1)), 
    --                         I2 => chain(1)((2*i)+1), 
    --                         I3 => chain(0)((2*(i+1))+1), 
    --                         I4 => '1',
    --                         I5 => '1',
    --                         O5 => prod1(2*(i+2)) ,
    --                         O6 => prod1((2*(i+2)-1))
    --                         );               
    --               end generate add;
    
            lut_inst5: lut6_2 
                  generic map(INIT => X"9666666666666666")
                  port map(
                  I0 => chain(1)(0), 
                  I1 => chain(0)(2), 
                  I2 => b(2), 
                  I3 => a(0), 
                  I4 => b(1),
                  I5 => a(1),
                  O5 => temp,
                  O6 => prod1(3)
                 );  
                
                add: for i in 1 to 5 generate
                   lut_inst3: lut6_2 
                             generic map(INIT => X"9666666666666666")
                             port map(
                             I0 => chain(1)(i), 
                             I1 => chain(0)(i+2), 
                             I2 => b(1), 
                             I3 => a(i+1), 
                             I4 => b(2),
                             I5 => a(i),
                             O5 => temp,
                             O6 => prod1(i+3)
                             );               
                   end generate add;
                   
              lut_inst4: lut6_2 
                  generic map(INIT => X"666666660FF00FF0")
                  port map(
                  I0 => prod2(0), 
                  I1 => chain(0)(1), 
                  I2 => chain(1)(6), 
                  I3 => chain(0)(8), 
                  I4 => '1',
                  I5 => '1',
                  O5 => prod1(9) ,
                  O6 => prod1(2)
                 );  
              prod1(1) <= chain(0)(0);
              prod1(10) <= chain(1)(7);
              prod1(11) <= chain(1)(8); 
              
prod(3 downto 0) <= prod1(3 downto 0);

lut_inst_2LSB: lut6_2 
    generic map(INIT => X"9696969696969696")
    port map(
    I0 => b(4), --h
    I1 => a(0), --c
    I2 => prod1(4), -- g
    I3 => '1', -- d
    I4 => '1',
    I5 => '1',
    --O5 => prod1(0),
    O6 => prod(4)
    ); 
    
lut_inst_2LSB_1: lut6_2 
        generic map(INIT => X"77F7788877F77888")
        port map(
        I0 => b(0), --h
        I1 => a(0), --c
        I2 => b(1), -- g
        I3 => a(1), -- d
        I4 => prod1(5),
        I5 => '1',
        --O5 => prod1(0),
        O6 => prod(5)
        );                  
        
lut_inst_2P60: lut6_2 
                               generic map(INIT => X"7878787880808080")
                               port map(
                               I0 => b(4), --h
                               I1 => a(2), --c
                               I2 => prod1(6), -- g
                               I3 => '1', -- d
                               I4 => '1',
                               I5 => '1',
                               O5 => gen(2)(0),
                               O6 => prop(2)(0)
                               );     
                                                                       
                             lut_inst_2P61: lut6_2 
                               generic map(INIT => X"7888788880008000")
                               port map(
                               I0 => b(6), --h
                               I1 => a(0), --c
                               I2 => b(5), -- g
                               I3 => a(1), -- d
                               I4 => '1',
                               I5 => '1',
                               O5 => gen(2)(1),
                               O6 => prop(2)(1)
                               );   
                                                                   
                             lut_inst_2P6: lut6_2 
                               generic map(INIT => X"6666666666666666")
                               port map(
                               I0 => prop(2)(1), --h
                               I1 => prop(2)(0), --c
                               I2 => '1', -- g
                               I3 => '1', -- d
                               I4 => '1',
                               I5 => '1',
                               --O5 => temp,
                               O6 => prod(6)
                               );        

lut_inst_2P70: lut6_2 
                               generic map(INIT => X"8777788887777888")
                               port map(
                               I0 => b(4), --h
                               I1 => a(3), --c
                               I2 => b(5), -- g
                               I3 => a(2), -- d
                               I4 => prod1(7),
                               I5 => '1',
                               O5 => gen(2)(2),
                               O6 => prop(2)(2)
                               );     
                                                                       
                             lut_inst_2P71: lut6_2 
                               generic map(INIT => X"7888788878887888")
                               port map(
                               I0 => b(6), --h
                               I1 => a(1), --c
                               I2 => b(7), -- g
                               I3 => a(0), -- d
                               I4 => '1',
                               I5 => '1',
                               O5 => gen(2)(3),
                               O6 => prop(2)(3)
                               );   
                                                                   
                             lut_inst_2P7: lut6_2 
                               generic map(INIT => X"6666666666666666")
                               port map(
                               I0 => prop(1)(3), --h
                               I1 => prop(1)(2), --c
                               I2 => '1', -- g
                               I3 => '1', -- d
                               I4 => '1',
                               I5 => '1',
                               --O5 => temp,
                               O6 => prod(7)
                               );    
                               
lut_inst_2P80: lut6_2 
                generic map(INIT => X"8777788887777888")
                port map(
                I0 => b(4), --h
                I1 => a(4), --c
                I2 => b(5), -- g
                I3 => a(3), -- d
                I4 => prod1(8),
                I5 => '1',
                O5 => gen(2)(4),
                O6 => prop(2)(4)
                );     
                                                                                                    
                lut_inst_2P81: lut6_2 
                generic map(INIT => X"7888788878887888")
                port map(
                I0 => b(6), --h
                I1 => a(2), --c
                I2 => b(7), -- g
                I3 => a(1), -- d
                I4 => '1',
                I5 => '1',
                O5 => gen(2)(5),
                O6 => prop(2)(5)
                );   
                                                                                                  
                lut_inst_2P8: lut6_2 
                generic map(INIT => X"6666666666666666")
                port map(
                I0 => prop(2)(5), --h
                I1 => prop(2)(4), --c
                I2 => '1', -- g
                I3 => '1', -- d
                I4 => '1',
                I5 => '1',
                --O5 => temp,
                O6 => prod(8)
                );   
                
 lut_inst_2P90: lut6_2 
                                generic map(INIT => X"8777788887777888")
                                port map(
                                I0 => b(4), --h
                                I1 => a(5), --c
                                I2 => b(5), -- g
                                I3 => a(4), -- d
                                I4 => prod1(9),
                                I5 => '1',
                                O5 => gen(2)(6),
                                O6 => prop(2)(6)
                                );     
                                                                                                                    
                                lut_inst_2P91: lut6_2 
                                generic map(INIT => X"7888788878887888")
                                port map(
                                I0 => b(6), --h
                                I1 => a(3), --c
                                I2 => b(7), -- g
                                I3 => a(2), -- d
                                I4 => '1',
                                I5 => '1',
                                O5 => gen(2)(7),
                                O6 => prop(2)(7)
                                );   
                                                                                                                  
                                lut_inst_2P9: lut6_2 
                                generic map(INIT => X"6666666666666666")
                                port map(
                                I0 => prop(2)(7), --h
                                I1 => prop(2)(6), --c
                                I2 => '1', -- g
                                I3 => '1', -- d
                                I4 => '1',
                                I5 => '1',
                                O5 => temp,
                                O6 => prod(9)
                                );                                               

lut_inst_2P100: lut6_2 
                                generic map(INIT => X"8777788887777888")
                                port map(
                                I0 => b(4), --h
                                I1 => a(6), --c
                                I2 => b(5), -- g
                                I3 => a(5), -- d
                                I4 => prod1(10),
                                I5 => '1',
                                O5 => gen(2)(8),
                                O6 => prop(2)(8)
                                );     
                                                                                                                    
                                lut_inst_2P101: lut6_2 
                                generic map(INIT => X"7888788878887888")
                                port map(
                                I0 => b(6), --h
                                I1 => a(4), --c
                                I2 => b(7), -- g
                                I3 => a(3), -- d
                                I4 => '1',
                                I5 => '1',
                                O5 => gen(2)(9),
                                O6 => prop(2)(9)
                                );   
                                                                                                                  
                                lut_inst_2P10: lut6_2 
                                generic map(INIT => X"6666666666666666")
                                port map(
                                I0 => prop(2)(9), --h
                                I1 => prop(2)(8), --c
                                I2 => '1', -- g
                                I3 => '1', -- d
                                I4 => '1',
                                I5 => '1',
                                O5 => temp,
                                O6 => prod(10)
                                );
                                
 lut_inst_2P110: lut6_2 
                                                                generic map(INIT => X"8777788887777888")
                                                                port map(
                                                                I0 => b(4), --h
                                                                I1 => a(7), --c
                                                                I2 => b(5), -- g
                                                                I3 => a(6), -- d
                                                                I4 => prod1(11),
                                                                I5 => '1',
                                                                O5 => gen(2)(10),
                                                                O6 => prop(2)(10)
                                                                );     
                                                                                                                                                    
                                                                lut_inst_2P111: lut6_2 
                                                                generic map(INIT => X"7888788878887888")
                                                                port map(
                                                                I0 => b(6), --h
                                                                I1 => a(5), --c
                                                                I2 => b(7), -- g
                                                                I3 => a(4), -- d
                                                                I4 => '1',
                                                                I5 => '1',
                                                                O5 => gen(2)(11),
                                                                O6 => prop(2)(11)
                                                                );   
                                                                                                                                                  
                                                                lut_inst_2P11: lut6_2 
                                                                generic map(INIT => X"6666666666666666")
                                                                port map(
                                                                I0 => prop(2)(11), --h
                                                                I1 => prop(2)(10), --c
                                                                I2 => '1', -- g
                                                                I3 => '1', -- d
                                                                I4 => '1',
                                                                I5 => '1',
                                                                O5 => temp,
                                                                O6 => prod(11)
                                                                );                               

lut_inst_P12: lut6_2 
    generic map(INIT => X"8777788878887888")--47777888B8887888")
    port map(
    I0 => a(7), --h
    I1 => b(5), --c
    I2 => a(6), -- g
    I3 => b(6), -- d
    I4 => a(5),
    I5 => b(7),
   -- O5 => gen(1)(1),
    O6 => prod(12)
    );
    
lut_inst_2MSB1: lut6_2 
                  generic map(INIT => X"6AC06AC080008000")
                  port map(
                  I0 => b(7), --h
                  I1 => a(7), --c
                  I2 => b(6), -- g
                  I3 => a(6), -- d
                  I4 => '1',
                  I5 => '1',
                  O5 => gen(2)(12),
                  O6 => prod(13)
                  );
                  
               lut_inst_2MSB: lut6_2 
                  generic map(INIT => X"7878787880808080")
                  port map(
                  I0 => b(3), --h
                  I1 => a(7), --c
                  I2 => gen(2)(12), -- g
                  I3 => '1', -- d
                  I4 => '1',
                  I5 => '1',
                  O5 => prod(15),
                  O6 => prod(14)
                  );    

end Behavioral;
