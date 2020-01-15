DELIMITER $$
CREATE TRIGGER lecture_creator_auth
BEFORE INSERT ON user_lecture
FOR EACH ROW
	BEGIN
		IF (NEW.user_id NOT IN (SELECT id from user where auth = 1)) THEN
			SET NEW.user_id = null;
		END IF;
	END
$$ DELIMITER ;