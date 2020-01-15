create table post (
	id INT,
	create_date DATETIME not null,
	content TEXT not null,
	attachment VARCHAR(50),
	owner VARCHAR(20) not null,
	owner_id INT not null,
	primary key (id)
);