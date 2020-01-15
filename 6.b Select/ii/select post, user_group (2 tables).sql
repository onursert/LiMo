SELECT post.id, post.content
FROM post, user_group
WHERE post.owner = "User Group" and post.owner_id = user_group.id and user_group.name = "Ledner, Lowe and MacGyver";