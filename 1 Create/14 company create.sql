create table company (
	id INT,
	name VARCHAR(50) not null,
	url VARCHAR(100) not null unique,
	founder_id INT not null,
	headline VARCHAR(50) not null,
	summary TEXT,
	website VARCHAR(1000),
	industry VARCHAR(50),
	size INT,
	headquarters VARCHAR(50),
	founded VARCHAR(50),
	specialities TEXT,
	primary key (id),
	foreign key (founder_id) references user(id) on delete cascade on update no action
);