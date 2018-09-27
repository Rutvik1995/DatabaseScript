
undefine dnum

DECLARE




CURSOR proj1(p_number PROJECT.PNUMBER%TYPE) IS

select * from PROJECT where PNUMBER=p_number;
dept_num        PROJECT.PNUMBER%type :=&&dnum;  


proj_rec proj1%ROWTYPE;

BEGIN



open proj1(dept_num);
LOOP
FETCH proj1 into proj_rec;

DBMS_OUTPUT.put_line(proj_rec.PNAME ||'      '||  proj_rec.PNUMBER || '      ' || proj_rec.PLOCATION ||'  ' ||proj_rec.DNUM );
EXIT when proj1%notfound;
END LOOP;
close proj1;





END;