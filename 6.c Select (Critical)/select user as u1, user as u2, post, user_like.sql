SELECT u1.first_name, post.content, u2.first_name
FROM user as u1, user as u2, post, user_like
WHERE u1.id = 7 AND post.owner_id = u1.id AND post.owner = "User" AND post.id = user_like.post_id AND user_like.user_id = u2.id;
