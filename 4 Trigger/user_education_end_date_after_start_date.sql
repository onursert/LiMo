DELIMITER $$
CREATE TRIGGER user_education_end_date_after_start_date
BEFORE INSERT ON user_education
FOR EACH ROW
	BEGIN
		IF (NEW.end_date < NEW.start_date) THEN
			SET NEW.user_id = null;
		END IF;
	END
$$ DELIMITER ;