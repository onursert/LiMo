SELECT user.first_name, job.introduction
FROM company, job, user_application, user
WHERE company.id = job.company_id AND job.id = user_application.job_id AND user_application.user_id = user.id AND user.id = 56;