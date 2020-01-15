create assertion is_user_born_work as 
check (
not exists
(select "user birthday" from user, user_work_experinence where user.id = user_work_experinence.user_id AND user.birthday > user_work_experinence.start_date)
);