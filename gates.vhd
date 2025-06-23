-- Import IEEE standard logic library
LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- Import the local design library
LIBRARY work;

-- Entity defines input/output interface for logic gates
ENTITY gates IS
	PORT (
			AND_IN1,AND_IN2,NAND_IN1,NAND_IN2,OR_IN1,OR_IN2,XOR_IN1,XOR_IN2:IN STD_LOGIC;
			AND_OUT,NAND_OUT,OR_OUT,XOR_OUT:OUT STD_LOGIC
			);
END gates;

-- Architecture defines behavior of each logic gate
ARCHITECTURE simple_gates OF gates IS
BEGIN

AND_OUT <= AND_IN1 AND AND_IN2;
NAND_OUT <= NAND_IN1 NAND NAND_IN2;
OR_OUT <= OR_IN1 OR OR_IN2;
XOR_OUT <= XOR_IN1 XOR XOR_IN2;

END simple_gates;