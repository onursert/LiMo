create table user_skill (
	user_id INT,
	skill_definition VARCHAR(50),
	primary key (user_id, skill_definition),
	foreign key (user_id) references user(id) on delete cascade on update no action
);