CREATE OR REPLACE FUNCTION circle_area(radius number)
RETURN number IS

pi CONSTANT NUMBER(7,3):=3.14;
area NUMBER(7,3);

BEGIN
 
 area:=pi*(radius*radius);
 RETURN area;

 END;
 