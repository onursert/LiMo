DELIMITER $$
CREATE TRIGGER lecturer_cant_enroll_own
BEFORE INSERT ON user_enroll_lecture
FOR EACH ROW
	BEGIN
		IF (NEW.lecture_id IN (SELECT id FROM user_lecture where user_id = NEW.user_id)) THEN
			SET NEW.user_id = null;
		END IF;
	END
$$ DELIMITER ;