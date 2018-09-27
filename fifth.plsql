DECLARE




CURSOR proj IS
select *  from w;

 value w%rowtype;
BEGIN

FOR L_x IN proj
LOOP
DBMS_OUTPUT.put_line(L_x.ESSN ||'      '||  L_x.PNO || '      ' || L_x.HOURS );

END LOOP;


END;