

CREATE OR REPLACE PROCEDURE search_emp	(p_ssn IN VARCHAR2,p_lname OUT VARCHAR2)

IS
BEGIN
	SELECT	lname
			INTO p_lname
			FROM E
			WHERE SSN = p_ssn;

			

	EXCEPTION
			WHEN OTHERS THEN
				DBMS_OUTPUT.PUT_LINE(p_ssn || ‘ was not found’);
END search_emp;
