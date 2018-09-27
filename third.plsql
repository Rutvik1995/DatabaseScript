DECLARE

CURSOR proj IS 
select PNAME ,PNUMBER,PLOCATION,DNUM from PROJECT;


name PROJECT.PNAME%TYPE;
number2 PROJECT.PNUMBER%TYPE;
loc PROJECT.PLOCATION%TYPE;
number3 PROJECT.DNUM%TYPE;


BEGIN


open proj;
LOOP
FETCH proj into name,number2,loc,number3;
DBMS_OUTPUT.put_line(name|| '     ' || number2 || '      ' || loc || '      ' || number3);
EXIT WHEN proj%notfound;
END LOOP;
close proj;




END;
