DECLARE


message varchar(255):='Rutvik';
name1 PERSONS.FIRSTNAME%TYPE;

CURSOR proj IS
select PNAME ,PNUMBER,PLOCATION,DNUM from PROJECT;


name PROJECT.PNAME%TYPE;
number2 PROJECT.PNUMBER%TYPE;
loc PROJECT.PLOCATION%TYPE;
number3 PROJECT.DNUM%TYPE;


BEGIN

DBMS_OUTPUT.put_line ('Hello World!');
DBMS_OUTPUT.put_line (message);




SELECT FIRSTNAME INTO name FROM PERSONS WHERE PERSONID=1;
DBMS_OUTPUT.put_line (name1);



open proj;
LOOP
FETCH proj into name,number2,loc,number3;
DBMS_OUTPUT.put_line(name|| '     ' || number2 || '      ' || loc || '      ' || number3);
EXIT WHEN proj%notfound;
END LOOP;
close proj;



END;
