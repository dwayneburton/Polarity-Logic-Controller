-- Import IEEE standard logic library
LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- Import the local design library
LIBRARY work;

-- Entity defines interface for polarity-controlled signal outputs
ENTITY polarity_controller IS
	PORT (
			POLARITY_CNTRL,IN_1,IN_2,IN_3,IN_4: IN STD_LOGIC;
			OUT_1, OUT_2, OUT_3, OUT_4: OUT STD_LOGIC
			);
END ENTITY polarity_controller;

-- Architecture implements conditional polarity inversion using XNOR logic
ARCHITECTURE simple_gates OF polarity_controller IS
BEGIN

OUT_1 <= IN_1 XNOR POLARITY_CNTRL;
OUT_2 <= IN_2 XNOR POLARITY_CNTRL;
OUT_3 <= IN_3 XNOR POLARITY_CNTRL;
OUT_4 <= IN_4 XNOR POLARITY_CNTRL;

END ARCHITECTURE simple_gates;