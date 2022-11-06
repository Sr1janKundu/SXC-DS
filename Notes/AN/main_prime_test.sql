--main_prime_test.sql : Write main program to use user defined 
DECLARE
n integer :=&n;
cnt integer;
i integer;
flag integer;
	BEGIN
	cnt :=0;
	dbms_output.put_line('Prime numbers<='||n||'===>');
		for i in 2..n
		LOOP
		flag :=is_prime(i);
			if flag !=0
			THEN
			dbms_output.put(i ||',');
			cnt :=cnt + 1;
			END IF;
		END LOOP;
		dbms_output.put_line('');
		dbms_output.put_line('Total Prime numbers <='||n||' ='||cnt);
	END;
/

	