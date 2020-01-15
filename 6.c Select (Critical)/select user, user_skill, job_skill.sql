SELECT user.first_name, user_skill.skill_definition, job_skill.job_id
FROM user, user_skill, job_skill
WHERE user.id = user_skill.user_id AND user_skill.skill_definition = job_skill.job_skill AND user.id = 31;