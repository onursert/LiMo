SELECT user_group.id, user.id, user.first_name, user.last_name
FROM user_group, user_group_member, user
WHERE user_group.id = user_group_member.user_group_id AND user_group_member.user_id = user.id AND user_group.id = "10" AND user_group_member.is_user_founder = 1;