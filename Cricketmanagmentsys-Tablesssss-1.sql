
-------------------------------------Team-------------------------------------------------
select * from team;
ALTER TABLE team ADD(TeamLevel CHAR(20));
TRUNCATE TABLE team;

Insert into SYSTEM.TEAM (TEAM,OWNER,PRICE,PROVIENCE,MEDIA_PARTNER,CAPTAIN,COACH,TeamLevel) values ('Multan Sultan','Ali Tareen and Alamgir Tareen',41000000,'Multan,Punjab','Dawn News','Shan Masood','Andy Flower','Starter');
Insert into SYSTEM.TEAM (TEAM,OWNER,PRICE,PROVIENCE,MEDIA_PARTNER,CAPTAIN,COACH,TeamLevel) values ('Lahore Qalandar','Fawad Rana',24000000,'Lahore,Punjab','Geo Groups','Bredon McCullum','Aaqib Javed','Intermediate');
Insert into SYSTEM.TEAM (TEAM,OWNER,PRICE,PROVIENCE,MEDIA_PARTNER,CAPTAIN,COACH,TeamLevel) values ('Quetta Gladiators','Nadeen Omer',11000000,'Quetta,Balochistan','Ptv Sports','Sarfaraz Ahmad','Moin Khan','Intermediate');
Insert into SYSTEM.TEAM (TEAM,OWNER,PRICE,PROVIENCE,MEDIA_PARTNER,CAPTAIN,COACH,TeamLevel) values ('Peshawar Zalmi','Jawaid Afridi',16000000,'Peshawar,KPK','Express News','Darren Sammy','Muhammad Akram','Starter');
Insert into SYSTEM.TEAM (TEAM,OWNER,PRICE,PROVIENCE,MEDIA_PARTNER,CAPTAIN,COACH,TeamLevel) values ('Islamabad United','Ali and Amna Naqvi',15000000,'Capital Teritory','Dunya News','Misbah-ul-Haq','Dane Jones','Pro');
Insert into SYSTEM.TEAM (TEAM,OWNER,PRICE,PROVIENCE,MEDIA_PARTNER,CAPTAIN,COACH,TeamLevel) values ('Karachi Kings','Salman Iqbal',26000000,'Karachi,Sindh','Ary News','Imad Wasim','Micky Arthur','Pro');

---------------------------------------------------------Team Managers-----------------------------------------
CREATE TABLE TeamManagers
( CoachID int primary key ,
 CoachName varchar(20),
 TEAM varchar(20),
 TeamSelector varchar(100),
 coachNationality varchar(20)
);

--Drop table TeamManagers;
--Drop Table TeamManagers;

--inner join on Team & Team managers table
SELECT TEAM.TEAM,TeamManagers.CoachName,TeamManagers.coachNationality,TeamManagers.TeamSelector FROM TEAM INNER JOIN TeamManagers ON TEAM.TEAM=TeamManagers.Team ORDER BY TeamManagers.CoachID;

ALTER TABLE TeamManagers ADD(P_ID int);
ALTER TABLE TeamManagers ADD FOREIGN KEY (TEAM) REFERENCES TEAM(TEAM);

INSERT INTO TeamManagers(CoachID,CoachName,TEAM,TeamSelector,coachNationality) VALUES(1,'Andy Flower','Multan Sultan','Shahid Afrdidi','England');
INSERT INTO TeamManagers(CoachID,CoachName,TEAM,TeamSelector,coachNationality) VALUES(2,'Aaqib Javed','Lahore Qalandar','Shoiab Alhtar','Pakistani');
INSERT INTO TeamManagers(CoachID,CoachName,TEAM,TeamSelector,coachNationality) VALUES(3,'Moin Khan','Quetta Gladiators','Kamran Akmal','Pakistani');
INSERT INTO TeamManagers(CoachID,CoachName,TEAM,TeamSelector,coachNationality) VALUES(4,'Muhammad Akram','Peshawar Zalmi','Umar Akmal','Pakistani');
INSERT INTO TeamManagers(CoachID,CoachName,TEAM,TeamSelector,coachNationality) VALUES(5,'Dane Jones','Islamabad United','Imad Wasim','England');
INSERT INTO TeamManagers(CoachID,CoachName,TEAM,TeamSelector,coachNationality) VALUES(6,'Dane Jones','Karachi Kings','Immamulhaq','Australia');
select * from TeamManagers;

-------------------------------------PLAYERS-------------------------------------------------

select * from players;
select P_FIFFTYS from players where P_ID = 1;
TRUNCATE TABLE players;
ALTER TABLE players ADD(contactno VARCHAR(20));
ALTER TABLE players ADD(jersyno int);
ALTER TABLE players ADD(city VARCHAR(20));
ALTER TABLE players ADD(phistory VARCHAR(20));
ALTER TABLE players ADD(playerfitnessrecord VARCHAR(20));
select * from players WHERE TEAM='Peshawar Zalmi';
select * from players WHERE TEAM='Islamabad United';




---------------------------------sub query--------------------------------
SELECT P_NAME,TEAM,P_FIFFTYS FROM players where P_FIFFTYS = (SELECT Max(P_FIFFTYS) FROM players);
SELECT P_NAME,TEAM,P_HUNDEREDS FROM players where P_HUNDEREDS = (SELECT Max(P_HUNDEREDS) FROM players);
--SELECT Max(P_FIFFTYS) FROM players where P_FIFFTYS<(SELECT Max(P_FIFFTYS) FROM players);


Insert into PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (1,'Colin Ingram','Batsmen','Islamabad United','Platinum',0,5,+912343454,6,'Melborne','PSPlayer','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (2,'Dale Steyn','Bowlers','Islamabad United','Platinum',0,0,+922383454,8,'Melborne','PSPlayer','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (3,'Shadab Khan','All-rounders','Islamabad United','Platinum',0,2,+912343454,6,'Melborne','PSPlayer','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (4,'Colin Munro','Batsmen','Islamabad United','Diamond',0,3,+912343454,6,'Melborne','PSPlayer','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (5,'Asif Ali','Batsmen','Islamabad United','Diamond',0,1,+912343454,6,'Melborne','PSPlayer','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (6,'Faheem Ashraf','All-rounders','Islamabad United','Diamond',0,3,+912343454,6,'Melborne','PSPlayer','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (7,'Luke Ronchi','Batsmen','Islamabad United','Gold',0,6,+912343454,6,'Melborne','PSPlayer','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (8,'Rumman Raees','Bowlers','Islamabad United','Gold',0,0,+912343454,6,'Melborne','PSPlayer','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (9,'Hussain Talat','All-rounders','Islamabad United','Gold',0,0,+912343454,6,'Melborne','PSPlayer','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (10,'Phil Salt','Batsmen','Islamabad United','Silver',0,2,+912343454,6,'Melborne','PSPlayer','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (11,'Rizwan Hussain','Batsmen','Islamabad United','Silver',0,1,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (12,'Musa Khan','Bowlers','Islamabad United','Silver',0,0,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (13,'Zafar Gohar','All-rounders','Islamabad United','Silver',0,1,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (14,'Amad Butt','Bowlers','Islamabad United','Silver',0,0,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (15,'Akif Javed','Bowlers','Islamabad United','Emerging',0,0,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (16,'Ahmed Safi Abdullah','All-rounders','Islamabad United','Emerging',0,1,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (17,'Rassie Van der Dussen','Batsmen','Islamabad United','Supplementary',0,3,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (18,'Saif Badar','All-rounders','Islamabad United','Supplementary',0,1,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (19,'Jason Roy','Batsmen','Quetta Gladiators','Platinum',0,2,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (20,'Sarfaraz Ahmed','Batsmen','Quetta Gladiators','Platinum',0,2,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (21,'Mohammad Nawaz','All-rounders','Quetta Gladiators','Platinum',0,3,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (22,'Ahmed Shehzad','Batsmen','Quetta Gladiators','Diamond',0,1,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (23,'Shane Watson','Batsmen','Quetta Gladiators','Diamond',0,5,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (24,'Ben Cutting','Batmen','Quetta Gladiators','Diamond',0,3,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (25,'Umer Akmal','Batsmen','Quetta Gladiators','Gold',0,1,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (26,'Fawad Ahmed','Bowlers','Quetta Gladiators','Gold',0,3,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (27,'Ahsan Ali','Batsmen','Quetta Gladiators','Silver',0,1,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (28,'Tymal Mills','Bowlers','Quetta Gladiators','Silver',0,0,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (29,'Sohail Khan','Bowlers','Quetta Gladiators','Silver',0,0,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (30,'Naseem Shah','Bowlers','Quetta Gladiators','Silver',0,0,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (31,'Abdul Nasir','All-rounders','Quetta Gladiators','Silver',0,0,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (32,'Azam Khan','Batsmen','Quetta Gladiators','Emerging',0,1,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (33,'Aarish Ali Khan','Bowlers','Quetta Gladiators','Emerging',0,1,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (34,'Khurram Manzoor','Batsmen','Quetta Gladiators','Supplementary',0,1,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (35,'Keemo Paul','All-rounders','Quetta Gladiators','Supplementary',0,1,+912343454,6,'Gojra','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (36,'Babar Azam','Batsmen','Karachi Kings','Platinum',0,5,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (37,'Alex Hales','Batsmen','Karachi Kings','Platinum',0,3,+912343544,9,'Islamabad','NO History','Injured');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (38,'Mohammad Amir','Bowlers','Karachi Kings','Platinum',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (39,'Iftikhar Ahmed','Batsmen','Karachi Kings','Diamond',0,2,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (40,'Imad Wasim','All-rounders','Karachi Kings','Diamond',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (41,'Sharjeel Khan','Batsmen','Karachi Kings','Gold',0,0,+912343544,9,'lahore','NO History','Fever');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (42,'Cameron Delport','Batsmen','Karachi Kings','Gold',0,1,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (43,'Amir Yamin','Bowlers','Karachi Kings','Gold',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (44,'Mohammad Rizwan','Batsmen','Karachi Kings','Silver',0,2,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (45,'Umaid Asif','Bowlers','Karachi Kings','Silver',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (46,'Usama Mir','Bowlers','Karachi Kings','Silver',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (47,'Ali Khan','Bowlers','Karachi Kings','Silver',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (48,'Dan Lawrence','All-rounders','Karachi Kings','Silver',0,1,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (49,'Umer Khan','Bowlers','Karachi Kings','Emerging',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (50,'Arshad Iqbal','Bowlers','Karachi Kings','Emerging',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (51,'Awais Zia','Batsmen','Karachi Kings','Supplementary',0,1,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (52,'Liam Plunkett','Bowlers','Karachi Kings','Supplementary',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (53,'Fakhar Zaman','Batsmen','Lahore Qalandars','Platinum',0,2,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (54,'Chris Lynn','Batsmen','Lahore Qalandars','Platinum',0,3,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (55,'Mohammad Hafeez','All-rounders','Lahore Qalandars','Platinum',0,2,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (56,'Shaheen Afridi','Bowlers','Lahore Qalandars','Diamond',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (57,'Usman Shinwari','Bowlers','Lahore Qalandars','Diamond',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (58,'David Wiese','All-rounders','Lahore Qalandars','Diamond',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (59,'Sohail Akhter','Batsmen','Lahore Qalandars','Gold',0,1,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (60,'Haris Rauf','Bowlers','Lahore Qalandars','Gold',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (61,'Samit Patel','All-rounders','Lahore Qalandars','Gold',0,2,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (62,'Ben Dunk','Batsmen','Lahore Qalandars','Silver',0,2,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (63,'Jahid Ali','Batsmen','Lahore Qalandars','Silver',0,3,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (64,'Salman Butt','Batsmen','Lahore Qalandars','Silver',0,1,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (65,'Farzan Raja','Bowlers','Lahore Qalandars','Silver',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (66,'Seekkuge Prasanna','All-rounders','Lahore Qalandars','Silver',0,0,+912343544,9,'Islamabad','NO History','Injured');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (67,'Mohammad Faizan','Batsmen','Lahore Qalandars','Emerging',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (68,'Lendl Simmons','Batsmen','Lahore Qalandars','Supplementary',0,1,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (69,'Dilbar Hussain','Bowlers','Lahore Qalandars','Supplementary',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (70,'Wahab Riaz','Bowlers','Peshawar Zalmi','Platinum',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (71,'Hasan Ali','Bowlers','Peshawar Zalmi','Platinum',0,0,+917843544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (72,'Kieron Pollard','All-rounders','Peshawar Zalmi','Platinum',0,0,+989343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (73,'Kamran Akmal','Batsmen','Peshawar Zalmi','Diamond',1,4,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (74,'Tom Banton','Batsmen','Peshawar Zalmi','Diamond',0,3,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (75,'Shoaib Malik','All-rounders','Peshawar Zalmi','Diamond',0,1,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (76,'Imam-ul-Haq','Batsmen','Peshawar Zalmi','Gold',0,2,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (77,'Darren Sammy','All-rounders','Peshawar Zalmi','Gold',0,6,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (78,'Liam Dawson','All-rounders','Peshawar Zalmi','Gold',0,1,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (79,'Adil Amin','Batsmen','Peshawar Zalmi','Silver',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (80,'Umar Amin','Batsmen','Peshawar Zalmi','Silver',0,1,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (81,'Rahat Ali','Bowlers','Peshawar Zalmi','Silver',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (82,'Dwaine Pretorious','All-rounders','Peshawar Zalmi','Silver',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (83,'Mohammad Mohsin','All-rounders','Peshawar Zalmi','Silver',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (84,'Amir Khan','Bowlers','Peshawar Zalmi','Emerging',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (85,'Aamir Ali','Bowlers','Peshawar Zalmi','Emerging',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (86,'Liam Livingstone','Batsmen','Peshawar Zalmi','Supplementary',0,3,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (87,'Haider Ali Khan','Batsmen','Peshawar Zalmi','Supplementary',0,2,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (88,'Rilee Rossouw','Batsmen','Multan Sultans','Platinum',1,5,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (89,'Mohammad Irfan','Bowlers','Multan Sultans','Platinum',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (90,'Moeen Ali','All-rounders','Multan Sultans','Platinum',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (91,'Zeeshan Ashraf','Batsmen','Multan Sultans','Diamond',0,1,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (92,'Shahid Afridi','All-rounders','Multan Sultans','Diamond',0,2,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (93,'Ravi Bopara','All-rounders','Multan Sultans','Gold',0,3,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (94,'Junaid Khan','Bowlers','Multan Sultans','Gold',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (95,'Sohail Tanvir','All-rounders','Multan Sultans','Gold',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (96,'Shan Masood','Batsmen','Multan Sultans','Silver',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (97,'Usman Qadir','Bowlers','Multan Sultans','Silver',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (98,'Ali Shafiq','Bowlers','Multan Sultans','Silver',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (99,'Khushdil shah','All-rounders','Multan Sultans','Silver',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (100,'Fabian Allen','All-rounders','Multan Sultans','Silver',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (101,'Rohail Nazir','Batsmen','Multan Sultans','Emerging',0,1,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (102,'Mohammad Ilyas','Bowlers','Multan Sultans','Emerging',0,0,+912343544,9,'Toba','NO History','Injured');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (103,'Imran Tahir','Batsmen','Multan Sultans','Supplementary',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (104,'Bilawal Bhatti','All-rounders','Multan Sultans','Supplementary',0,1,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (105,'Mohammad Hasnain','Bowlers','Quetta Gladiators','Gold',0,0,+912343544,9,'Islamabad','NO History','Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (106,'JD','All-Rounder','Lahore Qalanders','Platinum',11,7,+922383863,8,'Kotli-Ak','PSPlayer','Most-Incredible');
Insert into SYSTEM.PLAYERS (P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) values (107,'Azan','All-Rounder','Multan Sultan','Platinum',9,7,+922383863,8,'Gojra','PSPlayer','Incredible');

-------------------------------------MATCH--------------------------------------------------------

select * from MATCH;
TRUNCATE TABLE MATCH;
ALTER TABLE MATCH ADD(matchtype VARCHAR(20));



Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (1,'Quetta Gladiators Vs Islamabad United',to_date('20-FEB-20','DD-MON-RR'),'Karachi-Day','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (2,'Karachi Kings Vs Peshawar Zalmi',to_date('21-FEB-20','DD-MON-RR'),'Karachi-Day','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (3,'Lahore Qalandars Vs Multan Sultans',to_date('21-FEB-20','DD-MON-RR'),'lahore-Night','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (4,'Quetta Gladiators Vs Peshawar Zalmi',to_date('22-FEB-20','DD-MON-RR'),'Karachi-Day','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (5,'Islamabad United Vs Multan Sultans',to_date('22-FEB-20','DD-MON-RR'),'Lahore-Night','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (6,'Karachi Kings Vs Quetta Gladiators',to_date('23-FEB-20','DD-MON-RR'),'Karachi-Day','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (7,'Lahore Qalandars Vs Islamabad United',to_date('23-FEB-20','DD-MON-RR'),'Lahore-Night','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (8,'Multan Sultans Vs Peshawar Zalmi',to_date('26-FEB-20','DD-MON-RR'),'Multan-Night','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (9,'Islamabad United Vs Quetta Gladiators',to_date('27-FEB-20','DD-MON-RR'),'Rawalpindi-Night','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (10,'Multan Sultans Vs Karachi Kings',to_date('28-FEB-20','DD-MON-RR'),'Rawalpindi-Day','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (11,'Peshawar Zalmi Vs Lahore Qalandars',to_date('28-FEB-20','DD-MON-RR'),'Rawalpindi-Night','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (12,'Multan Sultans VS Quetta Gladiators',to_date('29-FEB-20','DD-MON-RR'),'Multan-Day','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (13,'Islamabad United Vs Peshawar Zalmi',to_date('29-FEB-20','DD-MON-RR'),'Rawalpindi-Night','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (14,'Islamabad United Vs Karachi Kings',to_date('01-MAR-20','DD-MON-RR'),'Rawalpindi-Night','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (15,'Peshawar Zalmi Vs Karachi Kings',to_date('02-MAR-20','DD-MON-RR'),'Rawalpindi-Night','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (16,'Quetta Gladiators Vs Lahore Qalandars',to_date('03-MAR-20','DD-MON-RR'),'Lahore-Night','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (17,'Islamabad United Vs Lahore Qalandars',to_date('04-MAR-20','DD-MON-RR'),'Lahore-Night','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (18,'Peshawar Zalmi Vs Quetta Gladiators',to_date('05-MAR-20','DD-MON-RR'),'Rawalpindi-Night','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (19,'Karachi Kings Vs Multan Sultans',to_date('06-MAR-20','DD-MON-RR'),'Lahore-Night','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (20,'Peshawar Zalmi Vs Islamabad United',to_date('07-MAR-20','DD-MON-RR'),'Rawalpindi-Day','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (21,'Lahore Qalandars Vs Quetta Gladiators',to_date('07-MAR-20','DD-MON-RR'),'Lahore-Night','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (22,'Multan Sultans Vs Islamabad United',to_date('08-MAR-20','DD-MON-RR'),'Rawalpindi-Day','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (23,'Lahore Qalandars Vs Karachi Kings',to_date('08-MAR-20','DD-MON-RR'),'Lahore-Night','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (24,'Lahore Qalandars Vs Peshawar Zalmi',to_date('10-MAR-20','DD-MON-RR'),'Lahore-Night','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (25,'Quetta Gladiators Vs Multan Sultans',to_date('11-MAR-20','DD-MON-RR'),'Lahore-Night','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (26,'Karachi Kings Vs Lahore Qalandars',to_date('12-MAR-20','DD-MON-RR'),'Karachi-Night','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (27,'Peshawar Zalmi Vs Multan Sultans',to_date('13-MAR-20','DD-MON-RR'),'Karachi-Night','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (28,'Karachi Kings Vs Islamabad United',to_date('14-MAR-20','DD-MON-RR'),'Karachi-Night','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (29,'Multan Sultans Vs Lahore Qalandars',to_date('15-MAR-20','DD-MON-RR'),'Lahore-Day','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (30,'Quetta Gladiators Vs Karachi Kings',to_date('15-MAR-20','DD-MON-RR'),'Karachi-Night','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (31,'Qualifier: Team 1 Vs Team 2',to_date('17-MAR-20','DD-MON-RR'),'Karachi-Night','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (32,'Eliminator 1: Team 3 Vs Team 4',to_date('18-MAR-20','DD-MON-RR'),'Lahore-Night','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (33,' Eliminator 2: Eliminator Winner Vs Qualifier Runner Up',to_date('20-MAR-20','DD-MON-RR'),'Lahore-Night','T-20');
Insert into SYSTEM.MATCH (M_NO,TEAM,M_DATE,VENUE,matchtype) values (34,'Final',to_date('22-MAR-20','DD-MON-RR'),'Lahore','T-20');

 -------------------------------------SCHEDULE-------------------------------------------------

CREATE TABLE Sceheduleeee
( time varchar(20),
 datee varchar(20),
 place varchar(20)

);

ALTER TABLE Sceheduleeee ADD FOREIGN KEY (M_NO) REFERENCES MATCH(M_NO);
ALTER TABLE Sceheduleeee ADD(TEAM Varchar(100));
ALTER TABLE Sceheduleeee ADD(Sechedule_id int);
ALTER TABLE Sceheduleeee ADD(M_NO int);
ALTER TABLE Sceheduleeee DROP COLUMN TEAM;

--Drop Table Sceheduleeee;
--TRUNCATE TABLE Sceheduleeee;

select * from Sceheduleeee;



INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(1,'4:00PM','20-FEB-20','Karachi-Day',1);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(2,'8:00PM','21-FEB-20','Karachi-Night',2);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(3,'4:00PM','22-FEB-20','Karachi-Day',3);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(4,'8:00PM','23-FEB-20','Karachi-Night',4);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(5,'4:00PM','24-FEB-20','Karachi-Day',5);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(6,'8:00PM','25-FEB-20','Karachi-Night',6);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(7,'4:00PM','27-FEB-20','Karachi-Day',7);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(8,'8:00PM','28-FEB-20','Karachi-Night',8);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(9,'4:00PM','29-FEB-20','Karachi-Day',9);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(10,'8:00PM','30-FEB-20','Karachi-Night',10);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(11,'4:00PM','1-MAR-20','Karachi-Day',11);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(12,'8:00PM','2-MAR-20','Karachi-Night',12);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(13,'4:00PM','3-MAR-20','Karachi-Day',13);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(14,'8:00PM','4-MAR-20','Karachi-Night',14);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(15,'4:00PM','5-MAR-20','Karachi-Day',15);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(16,'8:00PM','6-MAR-20','Karachi-Night',16);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(17,'4:00PM','7-MAR-20','Karachi-Day',17);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(18,'8:00PM','8-MAR-20','Karachi-Night',18);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(19,'4:00PM','9-MAR-20','Karachi-Day',19);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(20,'8:00PM','10-MAR-20','Karachi-Night',20);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(21,'4:00PM','11-MAR-20','Karachi-Day',21);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(22,'8:00PM','12-MAR-20','Karachi-Night',22);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(23,'4:00PM','13-MAR-20','Karachi-Day',23);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(24,'8:00PM','14-MAR-20','Karachi-Night',24);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(25,'4:00PM','15-MAR-20','Karachi-Day',25);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(26,'8:00PM','16-MAR-20','Karachi-Night',26);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(27,'4:00PM','17-MAR-20','Karachi-Day',27);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(28,'8:00PM','18-MAR-20','Karachi-Night',28);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(29,'4:00PM','19-MAR-20','Karachi-Day',29);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(30,'8:00PM','20-MAR-20','Karachi-Night',30);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(31,'4:00PM','21-MAR-20','Karachi-Day',31);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(32,'8:00PM','22-MAR-20','Karachi-Night',32);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(33,'4:00PM','23-MAR-20','Karachi-Day',33);
INSERT INTO Sceheduleeee(Sechedule_id,time,datee,place,M_NO) VALUES(34,'8:00PM','24-MAR-20','Karachi-Night',34);


select * from Sceheduleeee;


--------------Match & Schedule inner Join
SELECT MATCH.M_NO,MATCH.team, MATCH.matchtype,Sceheduleeee.time,Sceheduleeee.datee,Sceheduleeee.place FROM MATCH INNER JOIN Sceheduleeee ON MATCH.M_NO=Sceheduleeee.M_NO ORDER BY MATCH.M_NO;


-------------------------------------GROUND-------------------------------------------------



Insert into SYSTEM.GROUND (G_NAME,G_LOCATION,G_CAPACITY,MediaPartner,Pitchno) values ('Gaddafi Stadium','Lahore',27000,'Geo News',1);
Insert into SYSTEM.GROUND (G_NAME,G_LOCATION,G_CAPACITY,MediaPartner,Pitchno) values ('National Stadium','Karachi',34228,'Ary News',2);
Insert into SYSTEM.GROUND (G_NAME,G_LOCATION,G_CAPACITY,MediaPartner,Pitchno) values ('Rawalpindi Stadium','Rawalpindi',10000,'Geo News',1);
Insert into SYSTEM.GROUND (G_NAME,G_LOCATION,G_CAPACITY,MediaPartner,Pitchno) values ('Multan Stadium','Multan',13000,'Bol News',2);
select * from ground;


-------------------------------------VIEWERS-------------------------------------------------

CREATE TABLE Viewers
( Viewercnic int ,
 Viewername varchar(20) PRIMARY KEY,
 contactno varchar(20),
 ticketid int,
 seatno int ,
 viewernationality varchar(20)
);

--TRUNCATE TABLE viewers;

select * from viewers;



INSERT INTO Viewers(Viewername,Viewercnic,contactno,ticketid,seatno,viewernationality) VALUES('Ahmad',3330358,'+923355346787',1,1,'Pakistani');
INSERT INTO viewers(Viewername,Viewercnic,contactno,ticketid,seatno,viewernationality) VALUES('Ali',3330396,'+9289456845',2,2,'Pakistan');
INSERT INTO viewers(Viewername,Viewercnic,contactno,ticketid,seatno,viewernationality) VALUES('Azan',3330348,'+92125478965',3,3,'Pakistan');
INSERT INTO viewers(Viewername,Viewercnic,contactno,ticketid,seatno,viewernationality) VALUES('Hamza',3330383,'+9265478951',22,66,'Pakistan');
INSERT INTO viewers(Viewername,Viewercnic,contactno,ticketid,seatno,viewernationality) VALUES('Adil',3330345,'+9245698745',98,68,'Pakistan');
INSERT INTO viewers(Viewername,Viewercnic,contactno,ticketid,seatno,viewernationality) VALUES('Jawad',3330348,'+9245698742',29,42,'Pakistan');
INSERT INTO viewers(Viewername,Viewercnic,contactno,ticketid,seatno,viewernationality) VALUES('Noman',3330356,'+9245632589',23,92,'Pakistan');
INSERT INTO viewers(Viewername,Viewercnic,contactno,ticketid,seatno,viewernationality) VALUES('Dawood',3330345,'+92452136987',22,72,'Pakistan');
INSERT INTO viewers(Viewername,Viewercnic,contactno,ticketid,seatno,viewernationality) VALUES('Ammad',3330345,'+92125446984',72,32,'Pakistan');
INSERT INTO viewers(Viewername,Viewercnic,contactno,ticketid,seatno,viewernationality) VALUES('Atta',3330345,'+92498704698',20,62,'Pakistan');
INSERT INTO viewers(Viewername,Viewercnic,contactno,ticketid,seatno,viewernationality) VALUES('Abdullah',3330345,'+92125469087',29,72,'Pakistan');
INSERT INTO viewers(Viewername,Viewercnic,contactno,ticketid,seatno,viewernationality) VALUES('Ghufran',3330354,'+92547890356',26,22,'Pakistan');
INSERT INTO viewers(Viewername,Viewercnic,contactno,ticketid,seatno,viewernationality) VALUES('Luqman',3330354,'+92894466721',32,82,'Pakistan');
INSERT INTO viewers(Viewername,Viewercnic,contactno,ticketid,seatno,viewernationality) VALUES('Azeem',3330389,'+920125478963',21,20,'Pakistan');
INSERT INTO viewers(Viewername,Viewercnic,contactno,ticketid,seatno,viewernationality) VALUES('Muzammal',3330389,'+9245632178',12,72,'Pakistan');
INSERT INTO viewers(Viewername,Viewercnic,contactno,ticketid,seatno,viewernationality) VALUES('Hammad',3330369,'+9245684433',23,25,'Pakistan');
INSERT INTO viewers(Viewername,Viewercnic,contactno,ticketid,seatno,viewernationality) VALUES('Hesham',3330389,'+9255468972',25,52,'Pakistan');
INSERT INTO viewers(Viewername,Viewercnic,contactno,ticketid,seatno,viewernationality) VALUES('Faheem',3330345,'+921254698730',26,98,'Pakistan');
INSERT INTO viewers(Viewername,Viewercnic,contactno,ticketid,seatno,viewernationality) VALUES('Farhan',3330355,'+92558069874',28,12,'Pakistan');
INSERT INTO viewers(Viewername,Viewercnic,contactno,ticketid,seatno,viewernationality) VALUES('Ashir',3330345,'+92556497889',12,62,'Pakistan');
INSERT INTO viewers(Viewername,Viewercnic,contactno,ticketid,seatno,viewernationality) VALUES('Ali Baho',3330345,'+92454879345',52,20,'Pakistan');





---------------------------------Sign in--------------------------


select * from Signinn;
TRUNCATE TABLE Signinn;
ALTER TABLE Signinn Drop column admin_id;
ALTER TABLE Signinn Drop column passwordd;
ALTER TABLE Signinn ADD(admin_id int);
ALTER TABLE Signinn ADD(passwordd varchar(20));

select * from players;



---------------Tables for triggers-------------------

-------Ground_History-------------

select * from Ground_History;
ALTER TABLE Ground ADD(MediaPartner varchar(20));
ALTER TABLE Ground ADD(Pitchno int);
TRUNCATE TABLE GROUND;

CREATE TABLE Ground_History 
(

G_NAME varchar2(32),
G_LOCATION varchar2(32),
G_CAPACITY int, 
MediaPartner varchar2(32), 
Pitchno int 
);
select * from Ground_History;

-------Match_History-------------
CREATE TABLE Match_History 
(
M_NO int,
TEAM varchar2(37),
M_DATE date,
matchtype varchar(20), 
VENUE varchar2(32)
);

-------Player_History-------------
CREATE TABLE Player_History 
(
P_ID int,
P_NAME varchar2(100),
P_TYPE varchar2(100),
TEAM varchar2(100),
P_CATEGORY varchar2(100),
P_HUNDEREDS int,
P_FIFFTYS int,
contactno int,
jersyno int,
city varchar(100), 
phistory varchar2(100),
playerfitnessrecord varchar2(100)
);

select * from Player_History;

-------Team_History-------------

CREATE TABLE Team_History 
(

TEAM varchar2(100),
OWNER varchar2(100),
PRICE int,
PROVIENCE varchar(100), 
MEDIA_PARTNER varchar2(100),
CAPTAIN varchar2(100),
COACH varchar2(100),
TeamLevel varchar2(100)
);

select * from Team_History;

-------Viewer_History-------------

CREATE TABLE Viewer_History 
(

Viewername varchar2(100),
Viewercnic int,
contactno varchar(100),
ticketid int, 
seatno int,
viewernationality varchar2(100)
);

select * from Viewer_History;
