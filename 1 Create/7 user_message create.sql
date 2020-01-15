create table user_message (
	id INT,
	sender_id INT not null,
	receiver_id INT not null,
	content TEXT not null,
	date DATETIME not null,
	primary key (id),
	foreign key (sender_id) references user(id) on delete cascade on update no action,
	foreign key (receiver_id) references user(id) on delete cascade on update no action
);