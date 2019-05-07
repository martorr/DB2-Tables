--*************************************************
--THIS COMMAND WILL DROP THE TABLESPACE.  IF YOU
--DO NOT HAVE AN TABLESPACE NAMED THIS, DO NOT RUN
--THIS PORTION OF THE CODE
--*************************************************
 DROP TABLESPACE P070DB.P001TSAE;                              
 COMMIT;                                                       
                                                               
 --*************************************************           
 --THIS CODE CREATES THE PROJECT_SKILLS TABLESPACE                      
 --************************************************* 
 
CREATE TABLESPACE P001TSPS IN P070DB USING STOGROUP UNTDISK;

--*************************************************          
--THIS CODE CREATES THE PROJECT_SKILLS TABLE                          
--*************************************************          
 CREATE TABLE PROJECT_SKILLS                   
(P_ID INTEGER NOT NULL,                       
 S_ID INTEGER NOT NULL,                       
 PRIMARY KEY (P_ID, S_ID),                    
 FOREIGN KEY (P_ID) REFERENCES PROJECT (P_ID),
 FOREIGN KEY (S_ID) REFERENCES SKILLS (S_ID)) 
 IN P070DB.P001TSPS;                               


--*************************************************
--THIS CODE CREATES THE PK INDEX ON PROJECT_SKILLS
--*************************************************
CREATE UNIQUE INDEX UNTP001.X1PS     
ON UNTP070.PROJECT_SKILLS(P_ID, S_ID)
USING STOGROUP UNTDISK;              
COMMIT;                                                   



--*************************************************
--THIS CODE WILL POPULATE THE PROJECTSKILLS TABLE
--*************************************************                            
INSERT INTO PROJECT_SKILLS VALUES(P_ID, S_ID);

INSERT INTO PROJECT_SKILLS VALUES(1, 1);
INSERT INTO PROJECT_SKILLS VALUES(2, 2);
INSERT INTO PROJECT_SKILLS VALUES(3, 3);
INSERT INTO PROJECT_SKILLS VALUES(4, 4);
INSERT INTO PROJECT_SKILLS VALUES(5, 5);
