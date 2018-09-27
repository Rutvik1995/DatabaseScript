CREATE OR REPLACE PROCEDURE STP2(Id number, salary number )
IS


BEGIN

update PROJECT set PNUMBER = salary where DNUM =Id;



END STP2;
