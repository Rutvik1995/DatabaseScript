CREATE OR REPLACE PROCEDURE SP3(FF OUT VARCHAR2, ID IN NUMBER)
IS


BEGIN

SELECT FIRSTNAME INTO FF from persons WHERE PERSONID=ID;
DBMS_OUTPUT.PUT_LINE(FF);

END sp3;