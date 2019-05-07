 DROP TABLESPACE P070DB.P001TSAF;                              
 COMMIT;                                                       
                                                               
 --*************************************************           
 --THIS CODE CREATES THE SKILLS TABLESPACE                      
 --*************************************************           
 CREATE TABLESPACE P001TSSK IN P070DB USING STOGROUP UNTDISK;  


--*************************************************          
--THIS CODE CREATES THE ACTOR TABLE                          
--*************************************************          
 CREATE TABLE SKILLS        
(S_ID INTEGER NOT NULL,    
 S_DESC CHAR(50) NOT NULL, 
 PRIMARY KEY(S_ID))        
 IN P070DB.P001TSSK;                                               

--*************************************************
--THIS CODE CREATES THE PK INDEX ON SKILLS
--*************************************************
--CREATE PK INDEX ON SKILLS 
CREATE UNIQUE INDEX UNTP001.X1SK
ON UNTP070.SKILLS(S_ID)         
USING STOGROUP UNTDISK; COMMIT;                                               



--*************************************************
--THIS CODE WILL POPULATE THE SKILLS TABLE
--*************************************************                            
 INSERT INTO SKILLS VALUES(1, 'QUICK');   
 INSERT INTO SKILLS VALUES(2, 'FAST');    
 INSERT INTO SKILLS VALUES(3, 'RUSHED');  
 INSERT INTO SKILLS VALUES(4, 'PERFECT'); 
 INSERT INTO SKILLS VALUES(5, 'MEDIOCRE');
