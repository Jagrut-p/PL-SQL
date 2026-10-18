DECLARE
X NUMBER:= 10;
PY NUMBER;
PZ NUMBER;
BEGIN

      DECLARE
	  Y NUMBER:= 20;
           BEGIN
                DBMS_OUTPUT.PUT_LINE('X: ' || X);
				DBMS_OUTPUT.PUT_LINE('Y: ' || Y);
				DBMS_OUTPUT.PUT_LINE('X + Y: ' || (X+Y));
				PY := Y;
      END;
      DECLARE
	  Z NUMBER:= 30;
           BEGIN 
		        DBMS_OUTPUT.PUT_LINE('X: ' || X);
                DBMS_OUTPUT.PUT_LINE('Z: ' || Z);
                DBMS_OUTPUT.PUT_LINE('X - Z' || (X - Z));
				PZ := Z;
		   END;
			DBMS_OUTPUT.PUT_LINE('X: ' || X);
		    DBMS_OUTPUT.PUT_LINE('Y: ' || PY);
		    DBMS_OUTPUT.PUT_LINE('Z: ' || PZ); 
            DBMS_OUTPUT.PUT_LINE('X * Y * Z: ' || (X * PY * PZ));
                
END;
/
/*
DON'T USE BIND VARIABLE

REM 1 PARENT BLOCK : 2 CHILD BLOCKS

REM PARENT X

REM CHILD1 : Y

REM CHILD2 : Z

REM CHILD1 : DISPLAY X , Y , X + Y

REM CHILD2 : DISPLAY X , Z , X - Z

REM PARENT : DISPLAY X , Y , Z , X * Y * Z
*/
