SQL> set echo on
SQL> connect project/project
Connected.
SQL> DESCRIBE temp_business_area;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 BNAME                                              CHAR(2)

SQL> SELECT * FROM temp_business_area;

BN                                                                              
--                                                                              
AA                                                                              
BB                                                                              
AB                                                                              
AC                                                                              
AC                                                                              
BB                                                                              
AA                                                                              
AA                                                                              
AB                                                                              
AC                                                                              

10 rows selected.

SQL> SELECT * FROM enum;

no rows selected

SQL> DESCRIBE enum;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 IDENTIFIER                                         VARCHAR2(30)
 LANGUAGE_ID                                        NUMBER(2)
 CODE                                               VARCHAR2(10)
 DATA                                               VARCHAR2(20)
 COMPANY_LIMIT                                      VARCHAR2(30)

SQL> CREATE OR REPLACE test () AS
  2  BEGIN
  3  i integer := 1;
CREATE OR REPLACE test () AS
                  *
ERROR at line 1:
ORA-00922: missing or invalid option 


SQL> CREATE OR REPLACE test AS
  2  BEGIN
  3  i integer:=1;
CREATE OR REPLACE test AS
                  *
ERROR at line 1:
ORA-00922: missing or invalid option 


SQL> CREATE OR REPLACE test AS
  2  DESCRIBE enum;;
CREATE OR REPLACE test AS
                  *
ERROR at line 1:
ORA-00922: missing or invalid option 


SQL> CREATE OR REPLACE procedure test AS
  2  i integer := 1;
  3  BEGIN
  4  FOR x IN (SELECT DISTINCT bname FROM temp_business_area) LOOP
  5  INSERT INTO enum (identifier,language_id,code,data,company_limit)
  6  SELECT 'BUSINESS_UNIT',0,i*100,x.bname,126 FROM temp_business_area;
  7  i := i+1;
  8  END LOOP;
  9  END;
 10  /

Procedure created.

SQL> SELECT * FROM enum;

no rows selected

SQL> @test
SP2-0310: unable to open file "test.sql"
SQL> show error;
No errors.
SQL> exec test () ==>execute
BEGIN test () ==>execute; END;

              *
ERROR at line 1:
ORA-06550: line 1, column 15: 
PLS-00103: Encountered the symbol "=" when expecting one of the following: 
:= . ( % ; 


SQL> show error
No errors.
SQL> exec test

PL/SQL procedure successfully completed.

SQL> SELECT * FROM enum;

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 100        AA                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 100        AA                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 100        AA                        
126                                                                             
                                                                                

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 100        AA                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 100        AA                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 100        AA                        
126                                                                             
                                                                                

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 100        AA                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 100        AA                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 100        AA                        
126                                                                             
                                                                                

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 100        AA                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 200        BB                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 200        BB                        
126                                                                             
                                                                                

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 200        BB                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 200        BB                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 200        BB                        
126                                                                             
                                                                                

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 200        BB                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 200        BB                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 200        BB                        
126                                                                             
                                                                                

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 200        BB                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 200        BB                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 300        AC                        
126                                                                             
                                                                                

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 300        AC                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 300        AC                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 300        AC                        
126                                                                             
                                                                                

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 300        AC                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 300        AC                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 300        AC                        
126                                                                             
                                                                                

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 300        AC                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 300        AC                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 300        AC                        
126                                                                             
                                                                                

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 400        AB                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 400        AB                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 400        AB                        
126                                                                             
                                                                                

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 400        AB                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 400        AB                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 400        AB                        
126                                                                             
                                                                                

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 400        AB                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 400        AB                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 400        AB                        
126                                                                             
                                                                                

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 400        AB                        
126                                                                             
                                                                                

40 rows selected.

SQL> TRUNCATE table temp_business_area;

Table truncated.

SQL> TRUNCATE table enum;

Table truncated.

SQL> INSERT INTO temp_business_area VALUES('AA');

1 row created.

SQL> INSERT INTO temp_business_area VALUES('AB');

1 row created.

SQL> INSERT INTO temp_business_area VALUES('AC');

1 row created.

SQL> INSERT INTO temp_business_area VALUES('AD');

1 row created.

SQL> INSERT INTO temp_business_area VALUES('AE');

1 row created.

SQL> INSERT INTO temp_business_area VALUES('AF');

1 row created.

SQL> SELECT * FROM enum;

no rows selected

SQL> exec test();

PL/SQL procedure successfully completed.

SQL> SELECT * from enum;

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 100        AA                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 100        AA                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 100        AA                        
126                                                                             
                                                                                

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 100        AA                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 100        AA                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 100        AA                        
126                                                                             
                                                                                

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 200        AF                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 200        AF                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 200        AF                        
126                                                                             
                                                                                

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 200        AF                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 200        AF                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 200        AF                        
126                                                                             
                                                                                

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 300        AD                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 300        AD                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 300        AD                        
126                                                                             
                                                                                

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 300        AD                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 300        AD                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 300        AD                        
126                                                                             
                                                                                

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 400        AE                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 400        AE                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 400        AE                        
126                                                                             
                                                                                

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 400        AE                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 400        AE                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 400        AE                        
126                                                                             
                                                                                

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 500        AC                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 500        AC                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 500        AC                        
126                                                                             
                                                                                

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 500        AC                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 500        AC                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 500        AC                        
126                                                                             
                                                                                

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 600        AB                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 600        AB                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 600        AB                        
126                                                                             
                                                                                

IDENTIFIER                     LANGUAGE_ID CODE       DATA                      
------------------------------ ----------- ---------- --------------------      
COMPANY_LIMIT                                                                   
------------------------------                                                  
BUSINESS_UNIT                            0 600        AB                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 600        AB                        
126                                                                             
                                                                                
BUSINESS_UNIT                            0 600        AB                        
126                                                                             
                                                                                

36 rows selected.

SQL> TRUNCATE table temp_business_area;

Table truncated.

SQL> TRUNCATE table enum;

Table truncated.

SQL> exec test ();

PL/SQL procedure successfully completed.

SQL> SELECT * FROM enum;

no rows selected

SQL> @test
SP2-0310: unable to open file "test.sql"
SQL> spool off
