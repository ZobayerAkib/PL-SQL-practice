SET SERVEROUTPUT ON;
SET VERIFY OFF;

declare
a number;
b number;
c number;

procedure findMIN(x in number,y in number,z out number) is
begin
	 if(x>y) then
		z:=y;
	 else 
		z:=x;
	 end if;

end;

begin
	a:=10;
	b:=5;
	findMIN(a,b,c);
	
	dbms_output.put_line('Minimum number is : ' || c); 

end;
/