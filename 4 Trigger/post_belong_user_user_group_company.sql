DELIMITER $$
CREATE TRIGGER post_belong_user_usergroup_company
BEFORE INSERT ON post
FOR EACH ROW
	BEGIN
		IF (NEW.owner = "User") THEN
			IF (NEW.owner_id NOT IN (SELECT id from user) OR NEW.creator_id != NEW.owner_id) THEN
				SET NEW.owner_id = null;
			END IF;
		END IF;
        IF (NEW.owner = "User Group") THEN
			IF (NEW.owner_id NOT IN (SELECT id from user_group) OR NEW.creator_id NOT IN (SELECT user_id from user_group_member where user_group_id = NEW.owner_id)) THEN
				SET NEW.owner_id = null;
			END IF;
		END IF;
        IF (NEW.owner = "Company") THEN
			IF (NEW.owner_id NOT IN (SELECT id from company) OR NEW.creator_id NOT IN (SELECT founder_id from company where id = NEW.owner_id)) THEN
				SET NEW.owner_id = null;
			END IF;
		END IF;
	END
$$ DELIMITER ;