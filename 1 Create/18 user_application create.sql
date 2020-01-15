create table user_application (
	user_id INT,
	job_id INT,
	date DATETIME not null,
	primary key (user_id, job_id),
	foreign key (user_id) references user(id) on delete cascade on update no action,
	foreign key (job_id) references job(id) on delete cascade on update no action
);