create table user_accomplishment (
	user_id INT,
	accomplishment_definition VARCHAR(50),
	primary key (user_id, accomplishment_definition),
	foreign key (user_id) references user(id) on delete cascade on update no action
);