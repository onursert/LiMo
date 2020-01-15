DELIMITER $$
CREATE TRIGGER add_company_to_user_community
BEFORE INSERT ON company
FOR EACH ROW
	BEGIN
		INSERT INTO user_community(name, url) VALUES (NEW.name, NEW.url);
        SET NEW.id = (SELECT user_community.id FROM user_community WHERE user_community.url = NEW.url);
	END
$$ DELIMITER ;