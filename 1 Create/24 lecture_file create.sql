create table lecture_file (
	id INT,
	lecture_id INT not null,
	file VARCHAR(50) not null,
	date DATETIME not null,
	primary key (id),
	foreign key (lecture_id) references user_lecture(id) on delete cascade on update no action
);