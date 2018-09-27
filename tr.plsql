DECLARE
message varchar(100):='rutvik';



l_message varchar(100):='Hello rutvik';
i number;
v_salary number;


BEGIN



DBMS_OUTPUT.put_line ('Hello World!');
    DBMS_OUTPUT.put_line(l_message);
     i:=1;
     loop
     DBMS_OUTPUT.put_line(i);
     i:=i+1;
     exit when i > 5;
     end loop;



     Select SALARY into v_salary from e where SALARY=30000;
 DBMS_OUTPUT.put_line (v_salary);

SELECT PNAME INTO  v_name FROM PROJECT WHERE  PNUMBER =10;

DBMS_OUTPUT.put_line(v_name);


END