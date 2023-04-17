create or replace NONEDITIONABLE TRIGGER Ground_History_Trigger 
BEFORE UPDATE OF G_CAPACITY 
ON GROUND 
FOR EACH ROW 
BEGIN 
INSERT INTO Ground_History(G_NAME,G_LOCATION,G_CAPACITY,MediaPartner,Pitchno) 
VALUES 
(:old.G_NAME, 
:old.G_LOCATION, 
:old.G_CAPACITY, 
:old.MediaPartner,
:old.Pitchno); 
END; 



create or replace NONEDITIONABLE TRIGGER Match_History_Trigger 
BEFORE UPDATE OF matchtype,VENUE 
ON Match 
FOR EACH ROW 
BEGIN 
INSERT INTO Match_History(M_NO,TEAM,M_DATE,VENUE,matchtype) 
VALUES 
(:old.M_NO, 
:old.TEAM, 
:old.M_DATE, 
:old.VENUE,
:old.matchtype); 
END; 






create or replace NONEDITIONABLE TRIGGER Player_History_Trigger 
BEFORE UPDATE OF Team,P_FIFFTYS,P_HUNDEREDS 
ON PLAYERS 
FOR EACH ROW 
BEGIN 
INSERT INTO Player_History(P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord) 
VALUES 
(:old.P_ID, 
:old.P_NAME, 
:old.P_TYPE, 
:old.TEAM,
:old.P_CATEGORY,
:old.P_HUNDEREDS,
:old.P_FIFFTYS,
:old.contactno,
:old.jersyno,
:old.city,
:old.phistory,
:old.playerfitnessrecord); 
END; 



create or replace NONEDITIONABLE TRIGGER Team_history_trigger 
BEFORE UPDATE OF CAPTAIN,COACH
ON TEAM 
FOR EACH ROW 
BEGIN 
INSERT INTO Team_History 
VALUES 
(:old.TEAM, 
:old.OWNER, 
:old.PRICE, 
:old.PROVIENCE,
:old.MEDIA_PARTNER,
:old.CAPTAIN,
:old.COACH,
:old.TeamLevel); 
END; 






create or replace NONEDITIONABLE TRIGGER Viewer_history_trigger 
BEFORE UPDATE OF Viewercnic,contactno
ON Viewers 
FOR EACH ROW 
BEGIN 
INSERT INTO Viewer_History 
VALUES 
(:old.Viewername, 
:old.Viewercnic, 
:old.contactno, 
:old.ticketid,
:old.seatno,
:old.viewernationality); 
END; 
