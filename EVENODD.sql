SET SERVEROUTPUT ON;
SET VERIFY OFF;

accept x number prompt"Enter the last digit of your id: "

	declare

	a number;
	b integer;

	begin
	a:=&x;

	begin
	b:=(mod(a,2)) 
	end;

	if(b=0) then 
	 dbms_ouput.put_line(a|| 'is even');
	 else
	 dbms_output.put_line(a|| 'is odd');
	 end if;
	 end;
	 /