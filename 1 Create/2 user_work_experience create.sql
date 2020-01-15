create table user_work_experience (
	user_id INT,
	job_title VARCHAR(50),
	department VARCHAR(50),
	company VARCHAR(50),
	city VARCHAR(50),
	country VARCHAR(50),
	is_current VARCHAR(50) not null default '0',
	start_date DATETIME,
	end_date DATETIME not null default '0000-00-00 00:00:00',
	description TEXT,
	primary key (user_id, job_title, company, start_date),
	foreign key (user_id) references user(id) on delete cascade on update no action
);