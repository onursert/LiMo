create table user_comment (
	id INT,
	user_id INT not null,
	post_id INT not null,
	content TEXT not null,
	date DATETIME not null,
	primary key (id),
	foreign key (user_id) references user(id) on delete cascade on update no action,
	foreign key (post_id) references post(id) on delete cascade on update no action
);