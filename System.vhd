library IEEE;
use IEEE.STD_LOGIC_1164.all;

ENTITY System IS
PORT( stop , fire , smoke : IN STD_LOGIC ;
		buzzer , pump , motor : OUT STD_LOGIC );
END System ;

ARCHITECTURE Sys OF System IS
SIGNAL buzz , pump2 , motor2 : STD_LOGIC;
BEGIN 
PROCESS (stop , fire , smoke )
BEGIN 
IF (stop = '0') THEN buzz <= '0' ;
						 pump2 <= '0' ;
						 motor2 <= '0'  ;
ELSIF (fire = '1' ) THEN buzz <= '1';
								 pump2 <= '1';
								 IF (smoke = '1') THEN motor2 <= '1';
								 ELSIF (smoke = '0') THEN motor2 <= '0';
								 END IF;
ELSIF (fire ='0') THEN buzz <= '0' ;
							  pump2 <= '0';
							  IF (smoke = '1') THEN motor2 <= '1';
							  ELSIF (smoke = '0') THEN motor2 <= '0';
							  END IF;
							 
END IF ;
END PROCESS;
buzzer <= buzz;
pump <= pump2 ;
motor <= motor2;
END Sys ;
						 
