DECLARE				 
	v_lname e.lname%TYPE;   

BEGIN
	search_emp(‘123456789’, v_lname);
	DBMS_OUTPUT.PUT_LINE(‘Employee: 123456789 || ‘ name is: ‘ || v_lname);
END;
