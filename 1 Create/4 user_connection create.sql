create table user_connection (
	user_id INT,
	connection_id INT,
	accepted VARCHAR(50) not null default '0',
	primary key (user_id, connection_id),
	foreign key (user_id) references user(id) on delete cascade on update no action,
	foreign key (connection_id) references user(id) on delete cascade on update no action
);