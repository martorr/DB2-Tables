--*************************************************           
 --THIS CODE CREATES THE CONSKILL TABLESPACE                      
 --*************************************************           
CREATE TABLESPACE P001TSPE IN P070DB USING STOGROUP UNTDISK;

--*************************************************          
--THIS CODE CREATES THE CONSKILL TABLE                          
--*************************************************          
 CREATE TABLE PROJECT_EVAL                 
(P_ID         INTEGER    NOT NULL,        
 C_ID         INTEGER    NOT NULL,    --the PK C_ID references the consultant being evaluated. The FK is the manager doing the eval.    
 PE_DATE      CHAR(25)   NOT NULL,        
 PE_SCORE     INTEGER    NOT NULL,        
 PE_COMMENT   CHAR(50)   NOT NULL,        
 PRIMARY KEY (P_ID, C_ID),                
 FOREIGN KEY (P_ID) REFERENCES PROJECT,   
 FOREIGN KEY (C_ID) REFERENCES CONSULTANT)
 IN P070DB.P001TSPE; COMMIT;                                                     

--*************************************************
--THIS CODE CREATES THE PK INDEX ON CONSKILL
--*************************************************
 CREATE UNIQUE INDEX UNTP001.X1PE   
ON UNTP070.PROJECT_EVAL(P_ID, C_ID)
USING STOGROUP UNTDISK; COMMIT;         

--*************************************************
--THIS CODE WILL POPULATE THE CONSKILL TABLE
--*************************************************                            

INSERT INTO PROJECT_EVAL VALUES(1, 1, '01/01/01', 1, 'GREAT');          
INSERT INTO PROJECT_EVAL VALUES(2, 2, '02/02/02', 2, 'ROOM TO IMPROVE');
INSERT INTO PROJECT_EVAL VALUES(3, 3, '03/03/03', 3, 'WORK NEEDED');    
INSERT INTO PROJECT_EVAL VALUES(4, 4, '04/04/04', 4, 'STELLAR!');       
INSERT INTO PROJECT_EVAL VALUES(5, 5, '05/05/05', 5, 'OKAY');           
