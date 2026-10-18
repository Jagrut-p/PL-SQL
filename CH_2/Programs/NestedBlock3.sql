/*
USE BIND/HOST VARIABLE

REM 1 PARENT BLOCK : 2 CHILD BLOCKS

REM PARENT X

REM CHILD1 : Y

REM CHILD2 : Y

REM CHILD1 : DISPLAY X , Y , X + Y

REM CHILD2 : DISPLAY X , Y , X - Y

REM PARENT : DISPLAY X , Y (of child1) , Y (of child2) , X + Y (of child1) + Y (of child2)
*/
VAR PY1 NUMBER
VAR PY2 NUMBER
<<OUTER>>
DECLARE
X NUMBER:= 10;
BEGIN

      <<"MIDDLE">>DECLARE
	  Y NUMBER:= 20;
		   BEGIN
                DBMS_OUTPUT.PUT_LINE('X: ' || X);
				DBMS_OUTPUT.PUT_LINE('Y: ' || Y);
				DBMS_OUTPUT.PUT_LINE('X + Y: ' || (X+Y));
				:PY1 := Y;
      END;
      <<INNER>>
	  DECLARE
	  Y NUMBER:= 30;
           BEGIN 
		        DBMS_OUTPUT.PUT_LINE('X: ' || X);
                DBMS_OUTPUT.PUT_LINE('Z: ' || Y);
                DBMS_OUTPUT.PUT_LINE('X - Y' || (X - Y));
				:PY2 := Y;
		   END;
			DBMS_OUTPUT.PUT_LINE('X: ' || X);
		    DBMS_OUTPUT.PUT_LINE('Y (Child 1): ' || :PY1);
		    DBMS_OUTPUT.PUT_LINE('Y: (CHILD 2)' || :PY2); 
			DBMS_OUTPUT.PUT_LINE('X + Y (CHILD 1): ' || (X + :PY1));
		    DBMS_OUTPUT.PUT_LINE('Y (Child 2): ' || :PY2);
END;
/
