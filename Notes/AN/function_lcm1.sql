--function_lcm1.sql : Write a program in PL/SQL to calculate
--lcm of 2 numbers using in built function lcm(a,b)
CREATE OR REPLACE FUNCTION lcm(a in number, b in number)
RETURN number
AS
x number;
y number;
lc number;
	BEGIN
	x :=a;
	y :=b;
	lc :=x*y/hcf(x,y);
	return lc;
	END;
/