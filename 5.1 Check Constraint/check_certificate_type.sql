ALTER TABLE user_certificate
ADD CONSTRAINT check_certificate_type
CHECK (type IN ('Honor', 'Test Score (Exam)', 'License'));