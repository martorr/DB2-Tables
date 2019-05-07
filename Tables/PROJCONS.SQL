--*************************************************           
 --THIS CODE CREATES THE CONSKILL TABLESPACE                      
 --*************************************************           
 CREATE TABLESPACE P001TSPC IN P070DB USING STOGROUP UNTDISK;


--*************************************************          
--THIS CODE CREATES THE CONSKILL TABLE                          
--*************************************************          
 CREATE TABLE PROJECT_CONSULTANT          
(C_ID            INTEGER        NOT NULL,
 P_ID            INTEGER        NOT NULL,
 PC_STARTDATE    CHAR(25)       NOT NULL,
 PC_ENDDATE      CHAR(25)       NOT NULL,
 PC_TOTALHOURS   INTEGER        NOT NULL,
 PRIMARY KEY(C_ID, P_ID),                
 FOREIGN KEY(C_ID) REFERENCES CLIENT,    
 FOREIGN KEY(P_ID) REFERENCES PROJECT)   
 IN P070DB.P001TSPC; COMMIT;                                                     

--*************************************************
--THIS CODE CREATES THE PK INDEX ON CONSKILL
--*************************************************
 CREATE UNIQUE INDEX UNTP001.X1PC          
ON UNTP070.PROJECT_CONSULTANT(C_ID, P_ID) 
USING STOGROUP UNTDISK; COMMIT;                       

--*************************************************
--THIS CODE WILL POPULATE THE CONSKILL TABLE
--*************************************************                            
--INSERT INTO Conskill VALUES(C_ID, S_ID);

INSERT INTO PROJECT_CONSULTANT VALUES(1,1, '01/02/97', '01/02/17', 100);
INSERT INTO PROJECT_CONSULTANT VALUES(2,2, '02/03/98', '02/03/18', 200);
INSERT INTO PROJECT_CONSULTANT VALUES(3,3, '03/04/99', '03/04/19', 300);
INSERT INTO PROJECT_CONSULTANT VALUES(4,4, '04/05/00', '04/05/20', 400);
INSERT INTO PROJECT_CONSULTANT VALUES(5,5, '05/06/01', '05/06/21', 500);
