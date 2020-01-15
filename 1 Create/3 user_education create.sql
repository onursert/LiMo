create table user_education (
	user_id INT,
	grade INT,
	degree DECIMAL(2,1),
	department VARCHAR(100),
	university VARCHAR(100),
	city VARCHAR(50),
	country VARCHAR(50),
	start_date DATETIME,
	end_date DATETIME not null default '9999-12-30 23:59:59',
	activities TEXT,
	primary key (user_id, department, university, start_date),
	foreign key (user_id) references user(id) on delete cascade on update no action
);