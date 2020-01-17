library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity mult_mod_16_AccAccAccAcc_AccAccAccAcc_a8_aAccod is
Port (
A : in STD_LOGIC_VECTOR (15 downto 0);
B : in STD_LOGIC_VECTOR (15 downto 0);
PROD : out STD_LOGIC_VECTOR (31 downto 0));
end mult_mod_16_AccAccAccAcc_AccAccAccAcc_a8_aAccod;

architecture Behavioral of mult_mod_16_AccAccAccAcc_AccAccAccAcc_a8_aAccod is

component mult_mod_8_AccAccAccAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccAccAcco is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccAccAccd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccAccAcca is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccAccoAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccAccoo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccAccod is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccAccoa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccAccdAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccAccdo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccAccdd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccAccda is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccAccaAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccAccao is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccAccad is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccAccaa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccoAccAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccoAcco is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccoAccd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccoAcca is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccooAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accooo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accood is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accooa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccodAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accodo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accodd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accoda is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccoaAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accoao is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accoad is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accoaa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccdAccAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccdAcco is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccdAccd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccdAcca is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccdoAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accdoo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accdod is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accdoa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccddAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accddo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accddd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accdda is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccdaAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accdao is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accdad is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accdaa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccaAccAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccaAcco is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccaAccd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccaAcca is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccaoAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accaoo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accaod is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accaoa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccadAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accado is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accadd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accada is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_AccaaAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accaao is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accaad is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_Accaaa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oAccAccAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oAccAcco is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oAccAccd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oAccAcca is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oAccoAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oAccoo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oAccod is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oAccoa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oAccdAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oAccdo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oAccdd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oAccda is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oAccaAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oAccao is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oAccad is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oAccaa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_ooAccAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_ooAcco is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_ooAccd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_ooAcca is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oooAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oooo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oood is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oooa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oodAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oodo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oodd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_ooda is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_ooaAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_ooao is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_ooad is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_ooaa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_odAccAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_odAcco is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_odAccd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_odAcca is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_odoAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_odoo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_odod is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_odoa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oddAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oddo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oddd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_odda is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_odaAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_odao is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_odad is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_odaa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oaAccAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oaAcco is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oaAccd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oaAcca is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oaoAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oaoo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oaod is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oaoa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oadAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oado is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oadd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oada is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oaaAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oaao is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oaad is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_oaaa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dAccAccAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dAccAcco is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dAccAccd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dAccAcca is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dAccoAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dAccoo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dAccod is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dAccoa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dAccdAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dAccdo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dAccdd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dAccda is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dAccaAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dAccao is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dAccad is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dAccaa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_doAccAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_doAcco is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_doAccd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_doAcca is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dooAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dooo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dood is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dooa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dodAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dodo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dodd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_doda is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_doaAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_doao is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_doad is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_doaa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_ddAccAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_ddAcco is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_ddAccd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_ddAcca is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_ddoAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_ddoo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_ddod is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_ddoa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dddAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dddo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dddd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_ddda is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_ddaAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_ddao is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_ddad is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_ddaa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_daAccAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_daAcco is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_daAccd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_daAcca is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_daoAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_daoo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_daod is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_daoa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dadAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dado is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dadd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_dada is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_daaAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_daao is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_daad is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_daaa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aAccAccAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aAccAcco is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aAccAccd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aAccAcca is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aAccoAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aAccoo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aAccod is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aAccoa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aAccdAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aAccdo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aAccdd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aAccda is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aAccaAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aAccao is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aAccad is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aAccaa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aoAccAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aoAcco is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aoAccd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aoAcca is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aooAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aooo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aood is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aooa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aodAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aodo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aodd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aoda is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aoaAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aoao is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aoad is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aoaa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_adAccAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_adAcco is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_adAccd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_adAcca is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_adoAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_adoo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_adod is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_adoa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_addAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_addo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_addd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_adda is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_adaAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_adao is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_adad is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_adaa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aaAccAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aaAcco is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aaAccd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aaAcca is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aaoAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aaoo is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aaod is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aaoa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aadAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aado is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aadd is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aada is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aaaAcc is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aaao is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aaad is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_mod_8_aaaa is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_accurate is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_approx_o8 is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_approx_oacc8 is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_approx_d8 is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_approx_dacc8 is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_approx_a8 is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mult_approx_aacc8 is
		Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			   B : in  STD_LOGIC_VECTOR (7 downto 0);
			   PROD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

signal prod1 : STD_LOGIC_VECTOR (15 downto 0);
signal prod2 : STD_LOGIC_VECTOR (15 downto 0);
signal prod3 : STD_LOGIC_VECTOR (15 downto 0);
signal prod4 : STD_LOGIC_VECTOR (15 downto 0);
signal gen : STD_LOGIC_VECTOR (15 downto 0);
signal prop : STD_LOGIC_VECTOR (15 downto 0);
signal carries : STD_LOGIC_VECTOR (15 downto 0);
signal output : STD_LOGIC_VECTOR (15 downto 0);
signal input_carry : STD_LOGIC_VECTOR (15 downto 0);
signal chain : STD_LOGIC_VECTOR (15 downto 0);
signal temp : STD_LOGIC;
signal temp1 : STD_LOGIC;

begin
inst1_mult: mult_mod_8_AccAccAccAcc port map(
A => A(7 downto 0),
B => B(7 downto 0),
PROD => prod1
);

inst2_mult: mult_mod_8_AccAccAccAcc port map(
A => A(15 downto 8),
B => B(7 downto 0),
PROD => prod2
);

inst3_mult: mult_approx_a8 port map(
A => A(7 downto 0),
B => B(15 downto 8),
PROD => prod3
);

inst4_mult: mult_mod_8_aAccod port map(
A => A(15 downto 8),
B => B(15 downto 8),
PROD => prod4
);

PROD(7 downto 0) <= prod1(7 downto 0);

lut_inst0: lut6_2
		generic map(INIT => X"17E8E817E81717E8")
		port map(
		I0 => prod1(8),
		I1 => prod2(0),
		I2 => prod3(0),
		I3 => prod1(9),
		I4 => prod2(1),
		I5 => prod3(1),
		O5 => gen(0),
		O6 => prop(0)
		);

PROD(8) <= prop(0);
PROD(9) <= prop(0);

lut_inst1: lut6_2
		generic map(INIT => X"17E8E817E81717E8")
		port map(
		I0 => prod1(10),
		I1 => prod2(2),
		I2 => prod3(2),
		I3 => prod1(11),
		I4 => prod2(3),
		I5 => prod3(3),
		O5 => gen(1),
		O6 => prop(1)
		);

PROD(10) <= prop(1);
PROD(11) <= prop(1);

lut_inst21: lut6_2
		generic map(INIT => X"17E8E817E81717E8")
		port map(
		I0 => prod1(11),
		I1 => prod2(3),
		I2 => prod3(3),
		I3 => prod1(12),
		I4 => prod2(4),
		I5 => prod3(4),
		--O5 => gen(1),
		O6 => PROD(12)
		);

lut_inst2: lut6_2
		generic map(INIT => X"17E8E817E81717E8")
		port map(
		I0 => prod1(12),
		I1 => prod2(4),
		I2 => prod3(4),
		I3 => prod1(13),
		I4 => prod2(5),
		I5 => prod3(5),
		O5 => gen(2),
		O6 => prop(2)
		);

--PROD(6) <= prop(1);
PROD(13) <= prop(2);

lut_inst31: lut6_2
		generic map(INIT => X"17E8E817E81717E8")
		port map(
		I0 => prod1(13),
		I1 => prod2(5),
		I2 => prod3(5),
		I3 => prod1(14),
		I4 => prod2(6),
		I5 => prod3(6),
		--O5 => gen(2),
		O6 => PROD(14)
		);

lut_inst3: lut6_2
		generic map(INIT => X"17E8E817E81717E8")
		port map(
		I0 => prod1(14),
		I1 => prod2(6),
		I2 => prod3(6),
		I3 => prod1(15),
		I4 => prod2(7),
		I5 => prod3(7),
		O5 => gen(3),
		O6 => prop(3)
		);

--PROD(8) <= prop(2);
PROD(15) <= prop(3);

lut_inst41: lut6_2
		generic map(INIT => X"17E8E817E81717E8")
		port map(
		I0 => prod1(15),
		I1 => prod2(7),
		I2 => prod3(7),
		I3 => prod2(8),
		I4 => prod3(8),
		I5 => prod4(0),
		--O5 => gen(3),
		O6 => PROD(16)
		);

lut_inst4: lut6_2
		generic map(INIT => X"17E8E817E81717E8")
		port map(
		I0 => prod2(8),
		I1 => prod3(8),
		I2 => prod4(0),
		I3 => prod2(9),
		I4 => prod3(9),
		I5 => prod4(1),
		O5 => gen(4),
		O6 => prop(4)
		);

--PROD(10) <= prop(3);
PROD(17) <= prop(4);

lut_inst51: lut6_2
		generic map(INIT => X"17E8E817E81717E8")
		port map(
		I0 => prod2(9),
		I1 => prod3(9),
		I2 => prod4(1),
		I3 => prod2(10),
		I4 => prod3(10),
		I5 => prod4(2),
		--O5 => gen(3),
		O6 => PROD(18)
		);

lut_inst5: lut6_2
		generic map(INIT => X"17E8E817E81717E8")
		port map(
		I0 => prod2(10),
		I1 => prod3(10),
		I2 => prod4(2),
		I3 => prod2(11),
		I4 => prod3(11),
		I5 => prod4(3),
		O5 => gen(5),
		O6 => prop(5)
		);

--PROD(10) <= prop(3);
PROD(19) <= prop(5);

lut_inst61: lut6_2
		generic map(INIT => X"17E8E817E81717E8")
		port map(
		I0 => prod2(11),
		I1 => prod3(11),
		I2 => prod4(3),
		I3 => prod2(12),
		I4 => prod3(12),
		I5 => prod4(4),
		--O5 => gen(3),
		O6 => PROD(20)
		);

lut_inst6: lut6_2
		generic map(INIT => X"17E8E817E81717E8")
		port map(
		I0 => prod2(12),
		I1 => prod3(12),
		I2 => prod4(4),
		I3 => prod2(13),
		I4 => prod3(13),
		I5 => prod4(5),
		O5 => gen(6),
		O6 => prop(6)
		);

--PROD(10) <= prop(3);
PROD(21) <= prop(6);

lut_inst71: lut6_2
		generic map(INIT => X"17E8E817E81717E8")
		port map(
		I0 => prod2(13),
		I1 => prod3(13),
		I2 => prod4(5),
		I3 => prod2(14),
		I4 => prod3(14),
		I5 => prod4(6),
		--O5 => gen(3),
		O6 => PROD(22)
		);

lut_inst7: lut6_2
		generic map(INIT => X"17E8E817E81717E8")
		port map(
		I0 => prod2(14),
		I1 => prod3(14),
		I2 => prod4(6),
		I3 => prod2(15),
		I4 => prod3(15),
		I5 => prod4(7),
		O5 => gen(7),
		O6 => prop(7)
		);

--PROD(10) <= prop(3);
PROD(23) <= prop(7);

lut_inst8: lut6_2
		generic map(INIT => X"FFFFFFE8FFE8E800")
		port map(
		I0 => prod2(14),
		I1 => prod3(14),
		I2 => prod4(6),
		I3 => prod2(15),
		I4 => prod3(15),
		I5 => prod4(7),
		--O5 => temp,
		O6 => temp
		);

lut_inst9: lut6_2
		generic map(INIT => X"6666666678787878")
		port map(
		I0 => temp,
		I1 => prod4(8),
		I2 => prod4(9),
		I3 => '1',
		I4 => '1',
		I5 => '1',
		O5 => gen(8),
		O6 => prop(8)
		);

PROD(24) <= prop(8);
PROD(25) <= gen(8);

lut_inst10: lut6_2
		generic map(INIT => X"7F807F807FFF8000")
		port map(
		I0 => temp,
		I1 => prod4(8),
		I2 => prod4(9),
		I3 => prod4(10),
		I4 => prod4(11),
		I5 => '1',
		O5 => gen(9),
		O6 => prop(9)
		);

PROD(26) <= prop(9);
PROD(27) <= gen(9);

lut_inst11: lut6_2
		generic map(INIT => X"8000000080000000")
		port map(
		I0 => temp,
		I1 => prod4(8),
		I2 => prod4(9),
		I3 => prod4(10),
		I4 => prod4(11),
		I5 => '1',
		--O5 => gen(9),
		O6 => temp1
		);

lut_inst12: lut6_2
		generic map(INIT => X"6666666678787878")
		port map(
		I0 => temp1,
		I1 => prod4(12),
		I2 => prod4(13),
		I3 => '1',
		I4 => '1',
		I5 => '1',
		O5 => gen(10),
		O6 => prop(10)
		);

PROD(28) <= prop(10);
PROD(29) <= gen(10);

lut_inst13: lut6_2
		generic map(INIT => X"7F807F807FFF8000")
		port map(
		I0 => temp1,
		I1 => prod4(12),
		I2 => prod4(13),
		I3 => prod4(14),
		I4 => prod4(15),
		I5 => '1',
		O5 => gen(11),
		O6 => prop(11)
		);

PROD(30) <= prop(11);
PROD(31) <= gen(11);

end Behavioral;