DELIMITER $$
CREATE TRIGGER new_user_preference
AFTER INSERT ON user
FOR EACH ROW
	BEGIN
		INSERT INTO user_preference(user_id) VALUES (NEW.id);
	END
$$ DELIMITER ;