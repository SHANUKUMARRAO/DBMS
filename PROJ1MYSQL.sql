-- CREATE TABLE PARTY(PARTY_ID INT PRIMARY KEY,PARTY_NAME VARCHAR(20),SYMBOL VARCHAR(20));

-- CREATE TABLE CANDIDATE(CANDIDATE_ID INT,NAME VARCHAR(20),PARTY_ID INT REFERENCES PARTY(PARTY_ID),ELECTION_ID INT REFERENCES ELECTION(ELECTION_ID),PRIMARY KEY(PARTY_ID,CANDIDATE_ID));

-- CREATE TABLE VOTER(VOTER_ID INT PRIMARY KEY,NAME VARCHAR(20),SEX CHAR,AUTHORITY_ID INT REFERENCES ELECTION_AUTHORITY(AUTHORITY_ID),ADHAR_NO INT REFERENCES CITIZEN(ADHAR_NO));

-- CREATE TABLE VOTES(VOTE_ID INT PRIMARY KEY,CANDIDATE_ID INT,EDATE DATE,ELECTION_ID INT REFERENCES ELECTION(ELECTION_ID),VOTER_ID INT REFERENCES VOTER(VOTER_ID));

-- CREATE TABLE CITIZEN(ADHAR_NO INT PRIMARY KEY,NAME VARCHAR(20),DOB DATE,AGE INT,gender CHAR);

-- CREATE TABLE CITIZEN_MOB(ADHAR_NO INT REFERENCES CITIZEN(ADHAR_NO),MOBILE_NO varchar(10));

-- CREATE TABLE ELECTION_AUTHORITY(AUTHORITY_ID INT PRIMARY KEY,NAME VARCHAR(20),CHIEF VARCHAR(20),PAST_EXPERIENCE VARCHAR(50),ESTABLISHED_IN DATE);




-- CREATE TABLE ELECTION(ELECTION_ID INT PRIMARY KEY,NO_OF_VOTERS INT,NO_OF_PARTICIPANTS INT,RESULT_DATE DATE,SPAN_OF_RULING VARCHAR(20),AUTHORITY_ID INT references election_authority(authority_id));


-- CREATE TABLE RAJYASABHA(ELECTION_ID INT REFERENCES ELECTION(ELECTION_ID),STATE_ID INT REFERENCES MEMBERS(STATE_ID),POS_IN_RAJ VARCHAR(5));

-- CREATE TABLE STATE_ASSEMBLY(ELECTION_ID INT REFERENCES ELECTION(ELECTION_ID),R_ID INT REFERENCES REGION(R_ID),STATE_MINISTRY VARCHAR(20));

-- CREATE TABLE LOKSABHA(ELECTION_ID INT REFERENCES ELECTION(ELECTION_ID),C_ID INT REFERENCES CONSTITUENCY(C_ID),NATIONAL_MINISTRY VARCHAR(20));

-- CREATE TABLE PANCHAYAT_ELC(ELECTION_ID INT REFERENCES ELECTION(ELECTION_ID),PANCHAYAT_ID INT REFERENCES PANCHAYAT(PANCHAYAT_ID),ROLE_IN_VILLAGE VARCHAR(20));


-- CREATE TABLE MEMBERS(STATE_ID INT PRIMARY KEY,NAME VARCHAR(20),MAX_MEMBERS INT);

-- CREATE TABLE REGION(R_ID INT PRIMARY KEY,R_NAME VARCHAR(20),NO_OF_PEOPLE INT);

-- CREATE TABLE CONSTITUENCY(C_ID INT PRIMARY KEY,C_NAME VARCHAR(20),NO_OF_POPULATION DOUBLE);

-- CREATE TABLE PANCHAYAT(PANCHAYAT_ID INT PRIMARY KEY,TOTAL_POPULATION DOUBLE,ADDRESS VARCHAR(20),STATE CHAR(20),CONSTITUENT VARCHAR(20));


-- insert into party values(1,'bjp','lotus');
-- insert into party values(3,'congress','hand');
-- insert into party values(4,'aap','broom');
-- insert into party values(5,'ycp','fan');
-- insert into party values(6,'tdp','plough');


-- insert into candidate values(1,'bhanu',4,103);
-- insert into candidate values(2,'masthan',3,105);
-- insert into candidate values(3,'chinna',4,107);
-- insert into candidate values(4,'akshay',6,109);
-- insert into candidate values(5,'guru',3,101);
-- insert into candidate values(6,'ram',1,109);
-- insert into candidate values(7,'vikram',1,101);
-- insert into candidate values(8,'hitender',4,104);
-- insert into candidate values(9,'shanu',5,108);
-- insert into candidate values(10,'vishnu',1,109);


-- insert into voter values(1,'bhanu','m',10,1412);
-- insert into voter values(2,'ram','m',20,1734);
-- insert into voter values(9,'sita','f',20,1812);
-- insert into voter values(10,'siva','m',30,1914);
-- insert into voter values(11,'gopi','f',30,1617);
-- insert into voter values(12,'govind','m',20,1373);
-- insert into voter values(19,'krish','m',10,1472);
-- insert into voter values(20,'mothra','f',10,1893);



-- insert into citizen values(1412,'bhanu','2000-6-8',20,'m');
-- insert into citizen values(1493,'bala','1989-6-7',31,'m');
-- insert into citizen values(1734,'ram','1948-11-10',72,'m');
-- insert into citizen values(1812,'sita','1895-6-5',125,'f');
-- insert into citizen values(1914,'siva','1993-7-6',27,'m');
-- insert into citizen values(1617,'gopal','1991-8-6',29,'m');
-- insert into citizen values(1373,'govind','1982-5-7',38,'m');
-- insert into citizen values(1472,'krish','1990-1-8',30,'m');
-- insert into citizen values(1893,'mothra','1998-2-7',22,'f');


-- INSERT INTO citizen_mob VALUES(1412,'9999');
-- INSERT INTO citizen_mob VALUES(1493,'8888');
-- INSERT INTO citizen_mob VALUES(1739,'7777');
-- INSERT INTO citizen_mob VALUES(1812,'6666');
-- INSERT INTO citizen_mob VALUES(1914,'5555');
-- INSERT INTO citizen_mob VALUES(1617,'4444');
-- INSERT INTO citizen_mob VALUES(1573,'3333');
-- INSERT INTO citizen_mob VALUES(1472,'2222');
-- INSERT INTO citizen_mob VALUES(1893,'1111');
-- INSERT INTO citizen_mob VALUES(1412,'0000');
-- INSERT INTO citizen_mob VALUES(1493,'6565');
-- INSERT INTO citizen_mob VALUES(1739,'2525');
-- INSERT INTO citizen_mob VALUES(1812,'8787');


-- insert into votes values(11,1,'1990-1-26',103,1);
-- insert into votes values(12,2,'1995-1-26',106,2);
-- insert into votes values(19,3,'2000-1-26',101,9);
-- insert into votes values(110,5,'2005-1-26',102,10);
-- insert into votes values(111,6,'2010-1-26',104,11);
-- insert into votes values(112,8,'2015-1-26',108,12);
-- insert into votes values(119,9,'2020-1-26',107,19);
-- insert into votes values(120,7,'2005-1-26',107,20);


-- insert into election_authority values(10,'iec','birla','y','1998-8-15');
-- insert into election_authority values(20,'mcc','sitaraman','y','1989-8-15');
-- insert into election_authority values(30,'aec','chidambram','n','1998-8-15');


-- insert into election values(101,1000,6,'2019-3-22','5',10);
-- insert into election values(102,1100,7,'2017-1-1','6',20);
-- insert into election values(103,5000,8,'2016-5-3','5',30);
-- insert into election values(104,7000,5,'2013-2-7','5',10);
-- insert into election values(105,8000,3,'1946-1-6','6',20);
-- insert into election values(106,9000,2,'1991-5-7','4',30);
-- insert into election values(107,3000,7,'1997-1-8','4',10);
-- insert into election values(108,9500,9,'1947-2-10','5',20);
-- insert into election values(109,8500,8,'1949-6-11','5',30);


-- INSERT INTO MEMBERS VALUES(1,'AP',10);
-- INSERT INTO MEMBERS VALUES(2,'UP',15);
-- INSERT INTO MEMBERS VALUES(3,'MP',18);
-- INSERT INTO MEMBERS VALUES(4,'ASSAM',9);

-- INSERT INTO REGION VALUES(4,'MANDLA',10000);
-- INSERT INTO REGION VALUES(6,'WGL',50000);
-- INSERT INTO REGION VALUES(5,'ONGOLE',12000);
-- INSERT INTO REGION VALUES(7,'NAGPUR',70000);

-- INSERT INTO constituency VALUES(10,'DARSI',5462);
-- INSERT INTO constituency VALUES(11,'KANDUKUR',7481);
-- INSERT INTO constituency VALUES(12,'NELLORE',6412);
-- INSERT INTO constituency VALUES(14,'ULAVPADU',5213);

-- INSERT INTO panchayat VALUES(101,7420,'RAILWAY_COLONY','AP','DARSI');
-- INSERT INTO panchayat VALUES(108,1428,'ISM','AP','RDK');
-- INSERT INTO panchayat VALUES(110,5260,'MONGLI','UP','KANPUR');
-- INSERT INTO panchayat VALUES(106,1798,'DORSAN','MP','ROORKE');
-- INSERT INTO panchayat VALUES(107,1526,'CHIHAN','ASSAM','GUWAHTI');



-- INSERT INTO RAJYASABHA VALUES(102,1,'MST');
-- INSERT INTO RAJYASABHA VALUES(103,4,'MP');
-- INSERT INTO RAJYASABHA VALUES(104,2,'MLA');

-- INSERT INTO state_assembly VALUES(108,4,'HOME');
-- INSERT INTO state_assembly VALUES(109,5,'ENVMNT');

-- INSERT INTO loksabha VALUES(104,10,'FOREST');
-- INSERT INTO loksabha VALUES(105,11,'FOREIGN');

-- INSERT INTO panchayat_elc VALUES(101,21,'sarpanch');
-- INSERT INTO panchayat_elc VALUES(106,22,'secretry');
-- INSERT INTO panchayat_elc VALUES(107,23,'ward_member');


-- PARTY NAME WHICH HAVE MORE CANDIDATES AFTER 1989

-- SELECT T.PARTY_NAME
-- FROM (SELECT PARTY_NAME,COUNT(*) AS C,C.ELECTION_ID FROM PARTY P,candidate C
-- WHERE P.PARTY_ID=C.PARTY_ID GROUP BY PARTY_NAME) T,VOTES V
-- WHERE V.ELECTION_ID=T.ELECTION_ID
-- AND V.EDATE>='1989-1-1'
-- ORDER BY T.C DESC
-- LIMIT 1;


-- % CHANGE IN VOTERS FROM 2010 TO 2015

-- SELECT ((E2.NO_OF_VOTERS-E1.NO_OF_VOTERS)/E2.NO_OF_VOTERS)*100 AS "PER(%)"
-- FROM VOTES V1, VOTES V2,election E1,election E2
-- WHERE E1.ELECTION_ID=V1.ELECTION_ID AND E2.ELECTION_ID=V2.ELECTION_ID
-- AND YEAR(V1.EDATE)='2010' AND YEAR(V2.EDATE)='2015';


-- NAME OF THE ELECTION AUTHORITY AND YEAR IN WHICH THEY CONDUCTED ELECTION 

-- SELECT DISTINCT EA.NAME,YEAR(VS.EDATE) AS YEAR
-- FROM VOTES VS,VOTER VR,ELECTION_AUTHORITY EA
-- WHERE VS.VOTER_ID=VR.VOTER_ID AND VR.AUTHORITY_ID=EA.AUTHORITY_ID
-- AND YEAR(VS.EDATE)>=YEAR(EA.ESTABLISHED_IN);


-- NAME OF THE CITIZENS WHO ARE NOT A VOTER

-- SELECT C.NAME
-- FROM VOTER V RIGHT JOIN CITIZEN C ON V.ADHAR_NO=C.ADHAR_NO
-- WHERE V.NAME IS NULL;


-- SARPANCH IN KANPUR WITH YEAR

-- SELECT PARTY_NAME,C.NAME,YEAR(E.RESULT_DATE) "YEAR"
-- FROM PARTY P,CANDIDATE C,ELECTION E,PANCHAYAT PT,PANCHAYAT_ELC PTE
-- WHERE P.PARTY_ID=C.PARTY_ID AND C.ELECTION_ID=E.ELECTION_ID
-- AND PTE.ELECTION_ID=E.ELECTION_ID AND PTE.PANCHAYAT_ID=PT.PANCHAYAT_ID
-- AND PTE.ROLE_IN_VILLAGE='SARPANCH' AND PT.CONSTITUENT='KANPUR';


-- NAME OF ELECTION AUTHORITY WHICH HOLDS THE STATE ASSMBLY REGION WHERE NO OF PEOPLES ARE >=10000

-- SELECT EA.NAME,R.R_NAME
-- FROM REGION R,STATE_ASSEMBLY SA,ELECTION E,ELECTION_AUTHORITY EA
-- WHERE SA.R_ID=R.R_ID AND SA.ELECTION_ID=E.ELECTION_ID AND 
-- EA.AUTHORITY_ID=E.AUTHORITY_ID AND R.NO_OF_PEOPLE>=10000;