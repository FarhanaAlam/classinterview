spool prog1
 DESCRIBE temp_business_area;

 SELECT * FROM temp_business_area;


 SELECT * FROM enum;

 DESCRIBE enum;

 CREATE OR REPLACE procedure test AS
 i integer := 1;
 BEGIN
 FOR x IN (SELECT DISTINCT bname FROM temp_business_area) LOOP
 INSERT INTO enum (identifier,language_id,code,data,company_limit)
 SELECT 'BUSINESS_UNIT',0,i*100,x.bname,126 FROM temp_business_area;
 i := i+1;
 END LOOP;
 END;
 /

 SELECT * FROM enum;

 exec test


SELECT * FROM enum;



 TRUNCATE table temp_business_area;


 TRUNCATE table enum;

 INSERT INTO temp_business_area VALUES('AA');


 INSERT INTO temp_business_area VALUES('AB');


 INSERT INTO temp_business_area VALUES('AC');

 INSERT INTO temp_business_area VALUES('AD');

 INSERT INTO temp_business_area VALUES('AE');


 INSERT INTO temp_business_area VALUES('AF');


 SELECT * FROM enu

 exec test();

 SELECT * from enum;

 TRUNCATE table temp_business_area;

 TRUNCATE table enum;


 exec test ();


 SELECT * FROM enum;



 spool off
