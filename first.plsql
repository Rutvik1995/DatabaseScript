
DECLARE
l_message varchar(100):='Hello rutvik';
i number;
v_salary number;



v_name PROJECT.PNAME%TYPE;
BEGIN


  DBMS_OUTPUT.put_line ('Hello World!');
  
    DBMS_OUTPUT.put_line(l_message);
     i:=1;
     loop
     DBMS_OUTPUT.put_line(i);
     i:=i+1;
     exit when i > 5;
     end loop;



SELECT PNAME INTO  v_name FROM PROJECT WHERE  PNUMBER =10;

DBMS_OUTPUT.put_line(v_name);
END;