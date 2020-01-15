create table job (
	id INT,
	company_id INT not null,
	introduction TEXT not null,
	seniority_level TEXT not null,
	industry VARCHAR(50) not null,
	employment_type VARCHAR(14) not null,
	job_function VARCHAR(50) not null,
	start_date DATETIME not null,
	expiration_date DATETIME not null,
	primary key (id),
	foreign key (company_id) references company(id) on delete cascade on update no action
);