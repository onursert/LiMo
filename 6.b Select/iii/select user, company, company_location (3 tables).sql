SELECT user.id, user.first_name, company.id, company.name, company_location.location
FROM user, company, company_location
WHERE user.id = company.founder_id AND company.id = company_location.company_id AND user.first_name = "Maxie";