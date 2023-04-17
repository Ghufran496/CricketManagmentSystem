create or replace view Team_v (TEAMName,OWNERName,Amount,TeamPROVIENCE,PlayerMEDIA_PARTNER,TeamCAPTAIN,TeamCOACH,OverallTeamLevel) AS select TEAM,OWNER,PRICE,PROVIENCE,MEDIA_PARTNER,CAPTAIN,COACH,TeamLevel from TEAM;
select * from Team_v;



create or replace view players_v (Player_ID,Player_NAME,Player_TYPE,TEAMname,Player_CATEGORY,Player_HUNDEREDS,Player_FIFFTYS,playercontactno,playerjersyno,playercity,playerhistory,playerfitness) AS select P_ID,P_NAME,P_TYPE,TEAM,P_CATEGORY,P_HUNDEREDS,P_FIFFTYS,contactno,jersyno,city,phistory,playerfitnessrecord from PLAYERS;
select * from players_v;



create or replace view matches_v (Match_NO,TEAMVsTeam,Match_DATE,MatchVENUE,typeofmatch) AS select M_NO,TEAM,M_DATE,VENUE,matchtype from MATCH;
select * from matches_v;



create or replace view Ground_v (GroundName, GroundLocation, GroundCapacity, MediaPartner,PitchNO) AS select G_NAME,G_LOCATION,G_CAPACITY,MediaPartner,Pitchno from GROUND;
select * from Ground_v;


create or replace view Viewers_v (Name,CNIC,PhoneNo,TicketNO,Seat,Nationality) AS select Viewername,Viewercnic,contactno,ticketid,seatno,viewernationality from Viewers;
select * from Viewers_v;