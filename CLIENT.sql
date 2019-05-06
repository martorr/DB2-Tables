--*************************************************
--THIS COMMAND WILL DROP THE TABLESPACE.  IF YOU
--DO NOT HAVE AN TABLESPACE NAMED THIS, DO NOT RUN
--THIS PORTION OF THE CODE
--*************************************************
 DROP TABLESPACE P070DB.P001TSAB;                              
 COMMIT;                                                       
                                                               
 --*************************************************           
 --THIS CODE CREATES THE CLIENT TABLESPACE                      
 --*************************************************           
 CREATE TABLESPACE P001TSCL IN P070DB USING STOGROUP UNTDISK;


--*************************************************          
--THIS CODE CREATES THE CLIENT TABLE                          
--*************************************************          
 CREATE TABLE CLIENT         
(CL_ID INTEGER NOT NULL,    
 CL_NAME CHAR(25) NOT NULL, 
 CL_CNTCT CHAR(25) NOT NULL,
 CL_PHONE CHAR(25) NOT NULL,
 PRIMARY KEY (CL_ID))       
 IN P070DB.P001TSCL;                                             

--*************************************************
--THIS CODE CREATES THE PK INDEX ON CLIENT
--*************************************************
 CREATE UNIQUE INDEX UNTP001.X1CL
 ON UNTP070.CLIENT(CL_ID)        
 USING STOGROUP UNTDISK;                                             
 COMMIT;

--*************************************************
--THIS CODE WILL POPULATE THE CLIENT TABLE
--*************************************************                            
--INSERT INTO CONSULTANT VALUES(CID, NAME, CONTACT, PHONE);

 INSERT INTO CLIENT VALUES(1, 'MARVEL STUDIOS', 'STAN LEE', '99900011');
 INSERT INTO CLIENT VALUES(2, 'CAPCOM', 'MANNY PAC', '4567890123');     
 INSERT INTO CLIENT VALUES(3, 'DISNEY', 'MARTH VADER', '6665551234');   
 INSERT INTO CLIENT VALUES(4, 'UNIVERSAL', 'BRUCE BANNER', '159753014');
 INSERT INTO CLIENT VALUES(5, 'SONY', 'PETER PARKER', '7412369845');    
