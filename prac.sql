SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
A NUMBER;
B NUMBER;


PROCEDURE FINDleapyear(X IN  NUMBER,Z OUT NUMBER) IS
BEGIN
	IF((MOD(X,4) = 0) AND (MOD(X,100) != 0) OR (MOD(X,400) = 0)) THEN
		Z:=1;
		
	ELSE
		Z:=0;
	END IF;
END;

BEGIN 
   A := 2100; 

   FINDleapyear(A,B);

   IF(B=1) THEN
    dbms_output.put_line( A || ' LEAP YEAR ' ); 
	ELSE
	dbms_output.put_line( A || ' NOT LEAP YEAR ' ); 
	END IF;
   
END; 
/

DECLARE
A NUMBER;
B NUMBER;


PROCEDURE FINDleapyear(X IN OUT NUMBER) IS
BEGIN
	IF((MOD(X,4) = 0) AND (MOD(X,100) != 0) OR (MOD(X,400) = 0)) THEN
		X:=1;
		
	ELSE
		X:=0;
	END IF;
END;

BEGIN 
   A := 2000; 

   FINDleapyear(A);

   IF(A=1) THEN
    dbms_output.put_line(  ' LEAP YEAR ' ); 
	ELSE
	dbms_output.put_line( ' NOT LEAP YEAR ' ); 
	END IF;
   
END; 
/
