SELECT user.first_name, post.content, user_comment.content
FROM post, user_comment, user
WHERE post.id = user_comment.post_id AND user_comment.user_id = user.id AND user.first_name = "Trumann";