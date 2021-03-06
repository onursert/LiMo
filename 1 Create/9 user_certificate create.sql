create table user_certificate (
	id INT,
	user_id INT not null,
	type VARCHAR(17) not null,
	headline TEXT not null,
	description TEXT,
	date DATE,
	url VARCHAR(1000),
	attachment VARCHAR(50),
	primary key (id),
	foreign key (user_id) references user(id) on delete cascade on update no action
);