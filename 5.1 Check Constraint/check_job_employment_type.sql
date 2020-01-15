ALTER TABLE job
ADD CONSTRAINT job_employment_type
CHECK (employment_type IN ('Full-time', 'Part-time', 'Self-employed', 'Freelance', 'Contract', 'Internship', 'Apprenticeship'));