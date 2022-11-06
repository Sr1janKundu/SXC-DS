--hcf_lcm_main.sql : Write main program to call hcf() function
DECLARE
a  number :=&a;
b  number :=&b;
h  number;
lc number;
	BEGIN
	h :=hcf(a,b);
	lc :=lcm(a,b);
	dbms_output.put_line('HCF('||a||','||b||')='||h);
	dbms_output.put_line('LCM('||a||','||b||')='||lc);
	END;
/

