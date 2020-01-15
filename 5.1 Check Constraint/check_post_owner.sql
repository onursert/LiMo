ALTER TABLE post
ADD CONSTRAINT check_post_owner
CHECK (owner IN ('User', 'User Group', 'Company'));