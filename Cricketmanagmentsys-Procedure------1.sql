create or replace NONEDITIONABLE PROCEDURE deletePlayer(pla_id int)
IS
BEGIN
 DELETE players WHERE P_ID = pla_id;
 COMMIT;
END;


--BEGIN deletePlayer('"+t1.getText()+"'); END;