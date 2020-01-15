DELIMITER $$
CREATE TRIGGER when_delete_user_delete_group
BEFORE DELETE ON user
FOR EACH ROW
	BEGIN
		DELETE FROM user_group WHERE id IN (SELECT user_group_id FROM user_group_member WHERE user_id = OLD.id AND is_user_founder = 1);
	END
$$ DELIMITER ;