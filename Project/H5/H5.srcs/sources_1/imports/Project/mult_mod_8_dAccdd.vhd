library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity mult_mod_8_dAccdd is
Port (
A : in STD_LOGIC_VECTOR (7 downto 0);
B : in STD_LOGIC_VECTOR (7 downto 0);
PROD : out STD_LOGIC_VECTOR (15 downto 0));
end mult_mod_8_dAccdd;

architecture Behavioral of mult_mod_8_dAccdd is

component mult_accurate is
		Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
			   b : in  STD_LOGIC_VECTOR (3 downto 0);
			   prod : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component mult_approx_o4 is
		Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
			   b : in  STD_LOGIC_VECTOR (3 downto 0);
			   prod : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component mult_approx_d4 is
		Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
			   b : in  STD_LOGIC_VECTOR (3 downto 0);
			   prod : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component mult_approx_a4 is
		Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
			   b : in  STD_LOGIC_VECTOR (3 downto 0);
			   prod : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

signal prod1 : STD_LOGIC_VECTOR (7 downto 0);
signal prod2 : STD_LOGIC_VECTOR (7 downto 0);
signal prod3 : STD_LOGIC_VECTOR (7 downto 0);
signal prod4 : STD_LOGIC_VECTOR (7 downto 0);
signal gen : STD_LOGIC_VECTOR (7 downto 0);
signal prop : STD_LOGIC_VECTOR (7 downto 0);
signal carries : STD_LOGIC_VECTOR (7 downto 0);
signal output : STD_LOGIC_VECTOR (7 downto 0);
signal input_carry : STD_LOGIC_VECTOR (7 downto 0);
signal chain : STD_LOGIC_VECTOR (7 downto 0);
signal temp : STD_LOGIC;

begin
inst1_mult: mult_approx_d4 port map(
a => A(3 downto 0),
b => B(3 downto 0),
prod => prod1
);

inst2_mult: mult_accurate port map(
a => A(7 downto 4),
b => B(3 downto 0),
prod => prod2
);

inst3_mult: mult_approx_d4 port map(
a => A(3 downto 0),
b => B(7 downto 4),
prod => prod3
);

inst4_mult: mult_approx_d4 port map(
a => A(7 downto 4),
b => B(7 downto 4),
prod => prod4
);

PROD(3 downto 0) <= prod1(3 downto 0);

lut_inst0: lut6_2
		generic map(INIT => X"17E8E817E81717E8")
		port map(
		I0 => prod1(4),
		I1 => prod2(0),
		I2 => prod3(0),
		I3 => prod1(5),
		I4 => prod2(1),
		I5 => prod3(1),
		O5 => gen(0),
		O6 => prop(0)
		);

PROD(4) <= prop(0);
PROD(5) <= prop(0);

lut_inst11: lut6_2
		generic map(INIT => X"17E8E817E81717E8")
		port map(
		I0 => prod1(5),
		I1 => prod2(1),
		I2 => prod3(1),
		I3 => prod1(6),
		I4 => prod2(2),
		I5 => prod3(2),
		--O5 => gen(1),
		O6 => PROD(6)
		);

lut_inst1: lut6_2
		generic map(INIT => X"17E8E817E81717E8")
		port map(
		I0 => prod1(6),
		I1 => prod2(2),
		I2 => prod3(2),
		I3 => prod1(7),
		I4 => prod2(3),
		I5 => prod3(3),
		O5 => gen(1),
		O6 => prop(1)
		);

--PROD(6) <= prop(1);
PROD(7) <= prop(1);

lut_inst21: lut6_2
		generic map(INIT => X"17E8E817E81717E8")
		port map(
		I0 => prod1(7),
		I1 => prod2(3),
		I2 => prod3(3),
		I3 => prod2(4),
		I4 => prod3(4),
		I5 => prod4(0),
		--O5 => gen(2),
		O6 => PROD(8)
		);

lut_inst2: lut6_2
		generic map(INIT => X"17E8E817E81717E8")
		port map(
		I0 => prod2(4),
		I1 => prod3(4),
		I2 => prod4(0),
		I3 => prod2(5),
		I4 => prod3(5),
		I5 => prod4(1),
		O5 => gen(2),
		O6 => prop(2)
		);

--PROD(8) <= prop(2);
PROD(9) <= prop(2);

lut_inst31: lut6_2
		generic map(INIT => X"17E8E817E81717E8")
		port map(
		I0 => prod2(5),
		I1 => prod3(5),
		I2 => prod4(1),
		I3 => prod2(6),
		I4 => prod3(6),
		I5 => prod4(2),
		--O5 => gen(3),
		O6 => PROD(10)
		);

lut_inst3: lut6_2
		generic map(INIT => X"17E8E817E81717E8")
		port map(
		I0 => prod2(6),
		I1 => prod3(6),
		I2 => prod4(2),
		I3 => prod2(7),
		I4 => prod3(7),
		I5 => prod4(3),
		O5 => gen(3),
		O6 => prop(3)
		);

--PROD(10) <= prop(3);
PROD(11) <= prop(3);

lut_inst4: lut6_2
		generic map(INIT => X"FFFFFFE8FFE8E800")
		port map(
		I0 => prod2(6),
		I1 => prod3(6),
		I2 => prod4(2),
		I3 => prod2(7),
		I4 => prod3(7),
		I5 => prod4(3),
		--O5 => temp,
		O6 => temp
		);

lut_inst5: lut6_2
		generic map(INIT => X"6666666678787878")
		port map(
		I0 => temp,
		I1 => prod4(4),
		I2 => prod4(5),
		I3 => '1',
		I4 => '1',
		I5 => '1',
		O5 => gen(4),
		O6 => prop(4)
		);

PROD(12) <= prop(4);
PROD(13) <= gen(4);

lut_inst6: lut6_2
		generic map(INIT => X"7F807F807FFF8000")
		port map(
		I0 => temp,
		I1 => prod4(4),
		I2 => prod4(5),
		I3 => prod4(6),
		I4 => prod4(7),
		I5 => '1',
		O5 => gen(5),
		O6 => prop(5)
		);

PROD(14) <= prop(5);
PROD(15) <= gen(5);

end Behavioral;