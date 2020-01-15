create assertion is_founder_exists as 
check (
exists
(select "founder in user" from user, company where user.id = company.founder_id)
);