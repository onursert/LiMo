DELIMITER $$
CREATE TRIGGER job_expiration_date_after_start_date
BEFORE INSERT ON job
FOR EACH ROW
	BEGIN
		IF (NEW.expiration_date < NEW.start_date) THEN
			SET NEW.id = null;
		END IF;
	END
$$ DELIMITER ;