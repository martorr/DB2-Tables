--*************************************************
--THIS COMMAND WILL DROP THE TABLESPACE.  IF YOU
--DO NOT HAVE AN TABLESPACE NAMED THIS, DO NOT RUN
--THIS PORTION OF THE CODE
--*************************************************
 DROP TABLESPACE P070DB.P001TSAD;                              
 COMMIT;                                                       
                                                               
 --*************************************************           
 --THIS CODE CREATES THE PROJECT TABLESPACE                      
 --*************************************************           
  CREATE TABLESPACE P001TSPR IN P070DB USING STOGROUP UNTDISK;


--*************************************************          
--THIS CODE CREATES THE PROJECT TABLE                          
--*************************************************          
 CREATE TABLE PROJECT                      
(P_ID    INTEGER   NOT NULL,              
 P_NAME  CHAR(25)  NOT NULL,              
 C_ID    INTEGER   NOT NULL,              
 CL_ID   INTEGER   NOT NULL,              
 PRIMARY KEY (P_ID),                      
 FOREIGN KEY (C_ID) REFERENCES CONSULTANT,
 FOREIGN KEY (CL_ID) REFERENCES CLIENT)   
 IN P070DB.P001TSPR; COMMIT;                                                

--*************************************************
--THIS CODE CREATES THE PK INDEX ON PROJECT
--*************************************************
-CREATE UNIQUE INDEX UNTP001.X1PR
ON UNTP070.PROJECT(P_ID, P_ATTR)
USING STOGROUP UNTDISK; COMMIT;                                        

--*************************************************
--THIS CODE WILL POPULATE THE PROJECT TABLE
--*************************************************                            

INSERT INTO PROJECT VALUES(1, 'EASY', 'PROJECT ALPHA', 1, 1);     
INSERT INTO PROJECT VALUES(2, 'MEDIUM', 'PROJECT BETA', 2, 2);    
INSERT INTO PROJECT VALUES(3, 'HARD', 'PROJECT CHARLIE', 3, 3);   
INSERT INTO PROJECT VALUES(4, 'INSANE', 'PROJECT DELTA', 4, 4);   
INSERT INTO PROJECT VALUES(5, 'PUNISHER', 'PROJECT ECHO', 5, 5);  
