DELIMITER $$
CREATE TRIGGER when_delete_user_delete_post
BEFORE DELETE ON user_group
FOR EACH ROW
	BEGIN
		DELETE FROM post WHERE owner_id = OLD.id AND owner = "User Group";
	END
$$ DELIMITER ;