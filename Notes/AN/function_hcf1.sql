--function_hcf1.sql : Write a program in PL/SQL to calculate
--hcf of 2 numbers
CREATE OR REPLACE FUNCTION hcf(a in number, b in number)
RETURN number
AS
x number;
y number;
r number;
	BEGIN
	x :=a;
	y :=b;
	r :=mod(x,y);
		while r !=0
		LOOP
		x :=y;
		y :=r;
		r :=mod(x,y);
		END LOOP;
	return y;
	END;
/
	