DECLARE




CURSOR proj IS
select *  from w;

 value proj%rowtype;
BEGIN

open proj;
LOOP
FETCH proj into value;

DBMS_OUTPUT.put_line(value.ESSN ||'      '||  value.PNO || '      ' || value.HOURS );
EXIT when proj%notfound;
END LOOP;
close proj;

END;