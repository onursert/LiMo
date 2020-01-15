create table user_group (
	id INT,
	is_listed VARCHAR(50) not null default '0',
	name VARCHAR(50) not null,
	url VARCHAR(500) not null unique,
	primary key (id)
);