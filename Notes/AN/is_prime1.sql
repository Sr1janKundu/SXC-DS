--is_prime1.sql : Write a function in Pl/SQL to implement is_prime(n) 
CREATE OR REPLACE FUNCTION is_prime(n in number)
RETURN number
AS
flag number;
n1 number;
i number;
r number;
	BEGIN
	n1 :=floor(n/2);
	flag :=1;
		for i in 2..n1
		LOOP
		r:=mod(n,i);
			if r=0 then
			flag :=0;
			EXIT;
			END IF;
		END LOOP;
	RETURN flag;
	END;
/
