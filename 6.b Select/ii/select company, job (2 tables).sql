SELECT company.id, job.introduction
FROM company, job
WHERE company.id = job.company_id AND company_id = "4";