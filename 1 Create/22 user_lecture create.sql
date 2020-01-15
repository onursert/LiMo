create table user_lecture (
	id INT,
	user_id INT not null,
	name VARCHAR(100) not null,
	create_date DATETIME not null,
	description TEXT not null,
	year VARCHAR(50) not null,
	semester INT not null,
	time INT not null,
	primary key (id),
	foreign key (user_id) references user(id) on delete cascade on update no action
);