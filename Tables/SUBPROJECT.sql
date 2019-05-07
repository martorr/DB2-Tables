 --*************************************************           
 --THIS CODE CREATES THE CONSKILL TABLESPACE                      
 --*************************************************           
  CREATE TABLESPACE P001TSSP IN P070DB USING STOGROUP UNTDISK;


--*************************************************          
--THIS CODE CREATES THE CONSKILL TABLE                          
--*************************************************          
 CREATE TABLE SUBPROJ                   
(SP_ID   INTEGER   NOT NULL,           
 P_ID    INTEGER   NOT NULL,           
 SP_NAME CHAR(25)  NOT NULL,           
 PRIMARY KEY(SP_ID),                   
 FOREIGN KEY(P_ID) REFERENCES PROJECT) 
 IN P070DB.P001TSSP; COMMIT;                                                  

--*************************************************
--THIS CODE CREATES THE PK INDEX ON CONSKILL
--*************************************************
 CREATE UNIQUE INDEX UNTP001.X1SP
ON UNTP070.SUBPROJ(SP_ID)       
USING STOGROUP UNTDISK; COMMIT;        




--*************************************************
--THIS CODE WILL POPULATE THE PROJECT TABLE
--*************************************************                            

INSERT INTO SUBPROJ VALUES(1, 1, 'SUB ALPHA');     
INSERT INTO SUBPROJ VALUES(2, 2, 'SUB BETA');    
INSERT INTO SUBPROJ VALUES(3, 3, 'SUB CHARLIE');   
INSERT INTO SUBPROJ VALUES(4, 4, 'SUB DELTA');   
INSERT INTO SUBPROJ VALUES(5, 5, 'SUB ECHO');  
