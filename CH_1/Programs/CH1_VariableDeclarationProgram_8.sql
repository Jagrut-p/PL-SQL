DECLARE
A NUMBER:= '&NO';
B NUMBER:= 10;
C NUMBER:= A-B;
D NUMBER:= A/B;
BEGIN
DBMS_OUTPUT.PUT_LINE('A: ' || A || CHR(10) || 'B: ' || B || CHR(10) || 'C: ' || C || CHR(10) || 'D: ' || D);
END;
/ 