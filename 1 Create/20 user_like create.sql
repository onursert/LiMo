create table user_like (
	user_id INT,
	post_id INT,
	date DATETIME not null,
	primary key (user_id, post_id),
	foreign key (user_id) references user(id) on delete cascade on update no action,
	foreign key (post_id) references post(id) on delete cascade on update no action
);