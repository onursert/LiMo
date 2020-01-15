create table user_group_member (
	user_group_id INT,
	user_id INT,
	is_user_founder VARCHAR(50) not null default '0',
	primary key (user_group_id, user_id),
	foreign key (user_group_id) references user_group(id) on delete cascade on update no action,
	foreign key (user_id) references user(id) on delete cascade on update no action
);