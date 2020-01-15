create table company_location (
	company_id INT,
	location VARCHAR(50),
	primary key (company_id, location),
	foreign key (company_id) references company(id) on delete cascade on update no action
);