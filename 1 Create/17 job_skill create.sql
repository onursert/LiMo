create table job_skill (
	job_id INT,
	job_skill VARCHAR(50),
	primary key (job_id, job_skill),
	foreign key (job_id) references job(id) on delete cascade on update no action
);