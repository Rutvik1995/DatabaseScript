CREATE TABLE e AS SELECT * FROM COMPANY.EMPLOYEE;
CREATE TABLE t AS SELECT * FROM COMPANY.WORKS_ON;



DECLARE
	CURSOR Q1_R IS
	SELECT essn, pno, hours
	FROM t, e where t.ESSN = e.SSN
	AND e.lname = 'Smith'
	FOR UPDATE of hours;
	
	temp_rec t%ROWTYPE
BEGIN
	OPEN Q1_R;
	FETCH Q1_R into temp_rec;
	WHILE Q1_R%FOUND LOOP
	DBMS_OUTPUT.PUT_LINE(temp_rec.ESSN || '   ' || temp_rec.PNO || '   ' || temp_rec.HOURS)
	FETCH Q1_R INTO temp_rec;
	END LOOP;
	CLOSE Q1_R;
END;
/


DECLARE
	CURSOR Q1_R IS
	SELECT essn, pno, hours
	FROM t1, e1 where t1.ESSN = e1.SSN
	AND e1.lname = 'Smith'
	FOR UPDATE of hours;
	
	temp_rec t1%ROWTYPE
BEGIN
	OPEN Q1_R;
	FETCH Q1_R into temp_rec;
	WHILE Q1_R%FOUND LOOP
	IF(temp_rec.PNO = 1) THEN
	UPDATE t1 SET hours = 27
	WHERE CURRENT OF Q1_R;
	
	ELSEIF(temp_rec.PNO = 2) THEN
	UPDATE t1 SET hours = 13
	WHERE CURRENT OF Q1_R;
	
	END IF;
	
	FETCH Q1_R INTO temp_rec;
	
	END LOOP;
	CLOSE Q1_R;
END;
/