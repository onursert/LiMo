ALTER TABLE user
ADD CONSTRAINT check_gender
CHECK (gender IN ('Male', 'Female'));