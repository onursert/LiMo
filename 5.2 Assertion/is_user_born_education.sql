create assertion is_user_born_education as 
check (
not exists
(select "user birthday" from user, user_education where user.id = user_education.user_id AND user.birthday > user_education.start_date)
);