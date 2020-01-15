SELECT company.name, post.content, user.first_name
FROM company, post, user_like, user
WHERE post.owner = "Company" AND post.owner_id = company.id AND post.id = user_like.post_id AND user_like.user_id = user.id AND company.id = 5;