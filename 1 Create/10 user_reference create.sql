create table user_reference (
	user_id INT,
	reference_id INT,
	primary key (user_id, reference_id),
	foreign key (user_id) references user(id) on delete cascade on update no action,
	foreign key (reference_id) references user(id) on delete cascade on update no action
);