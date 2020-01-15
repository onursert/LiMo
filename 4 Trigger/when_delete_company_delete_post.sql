DELIMITER $$
CREATE TRIGGER when_delete_company_delete_post
BEFORE DELETE ON company
FOR EACH ROW
	BEGIN
		DELETE FROM post WHERE owner_id = OLD.id AND owner = "Company";
	END
$$ DELIMITER ;