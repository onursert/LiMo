ALTER TABLE user_work
ADD CONSTRAINT check_work_type
CHECK (type IN ('Publication', 'Patent', 'Project', 'Volunteer', 'Organization', 'Course'));