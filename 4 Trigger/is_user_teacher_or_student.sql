DELIMITER $$
CREATE TRIGGER is_user_teacher_or_student
AFTER INSERT ON user
FOR EACH ROW
	BEGIN
		IF (NEW.auth = 1) THEN
			INSERT INTO teacher VALUES (NEW.id);
		END IF;
        IF (NEW.auth = 0) THEN
			INSERT INTO student VALUES (NEW.id);
		END IF;
	END
$$ DELIMITER ;