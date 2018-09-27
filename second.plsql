DECLARE
message varchar(100):='rutvik';

display number;
location DEPARTMENT.DLOCATION%TYPE;

display_person DEPARTMENT.DLOCATION%TYPE;

CURSOR c_customers IS  select FIRSTNAME from persons;

CURSOR proj IS 
select PNAME ,PNUMBER,PLOCATION,DNUM from PROJECT;


name PROJECT.PNAME%TYPE;
number2 PROJECT.PNUMBER%TYPE;
loc PROJECT.PLOCATION%TYPE;
number3 PROJECT.DNUM%TYPE;


hello number;


BEGIN
hello:=9;
DBMS_OUTPUT.put_line (hello);
DBMS_OUTPUT.put_line ('Hello World!');
DBMS_OUTPUT.put_line (message);


select  X into display from t4 where Y=5;
DBMS_OUTPUT.put_line (display);

DBMS_OUTPUT.put_line (systimestamp);

open c_customers;
Loop
    fetch c_customers into display_person;
    DBMS_OUTPUT.put_line (display_person);
    EXIT WHEN c_customers%notfound; 
    DBMS_OUTPUT.put_line (display_person);
END LOOP;
close c_customers;


open proj;
LOOP
FETCH proj into name,number2,loc,number3;
DBMS_OUTPUT.put_line(name|| '     ' || number2 || '      ' || loc || '      ' || number3);
EXIT WHEN proj%notfound;
END LOOP;
close proj;




END;
