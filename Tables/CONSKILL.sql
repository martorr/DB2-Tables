--*************************************************
 -- CONSKILL
--*************************************************
 DROP TABLESPACE P070DB.P001TSCS;                              
 COMMIT;                                                       
                                                               
 --*************************************************           
 --THIS CODE CREATES THE CONSKILL TABLESPACE                      
 --*************************************************           
 CREATE TABLESPACE P001TSCS IN P070DB USING STOGROUP UNTDISK;


--*************************************************          
--THIS CODE CREATES THE CONSKILL TABLE                          
--*************************************************          
 CREATE TABLE CONSKILL                
(C_ID    INTEGER    NOT NULL,        
 S_ID    INTEGER    NOT NULL,        
 PRIMARY KEY(C_ID, S_ID),            
 FOREIGN KEY(C_ID) REFERENCES CLIENT,
 FOREIGN KEY(S_ID) REFERENCES SKILLS)
 IN P070DB.P001TSCS; COMMIT;                                             

--*************************************************
--THIS CODE CREATES THE PK INDEX ON CONSKILL
--*************************************************
 CREATE UNIQUE INDEX UNTP001.X1CS
ON UNTP070.CONSKILL(C_ID, S_ID) 
USING STOGROUP UNTDISK;         

--*************************************************
--THIS CODE WILL POPULATE THE CONSKILL TABLE
--*************************************************                            
--INSERT INTO Conskill VALUES(C_ID, S_ID);

INSERT INTO CONSKILL VALUES(1, 1);
INSERT INTO CONSKILL VALUES(2, 2);
INSERT INTO CONSKILL VALUES(3, 3);
INSERT INTO CONSKILL VALUES(4, 4);
INSERT INTO CONSKILL VALUES(5, 5);
