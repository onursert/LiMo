DELIMITER $$
CREATE TRIGGER when_delete_user_delete_post
BEFORE DELETE ON user
FOR EACH ROW
	BEGIN
		DELETE FROM post WHERE owner_id = OLD.id AND owner = "User";
	END
$$ DELIMITER ;