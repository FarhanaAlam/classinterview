
 CREATE OR REPLACE procedure test AS
  2  i integer := 1;
  3  BEGIN
  4  FOR x IN (SELECT DISTINCT bname FROM temp_business_area) LOOP
  5  INSERT INTO enum (identifier,language_id,code,data,company_limit)
  6  SELECT 'BUSINESS_UNIT',0,i*100,x.bname,126 FROM temp_business_area;
  7  i := i+1;
  8  END LOOP;
  9  END;
 10  /