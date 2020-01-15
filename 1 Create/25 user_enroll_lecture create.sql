create table user_enroll_lecture (
	user_id INT,
	lecture_id INT,
	grade DECIMAL(2,1),
	primary key (user_id, lecture_id),
	foreign key (user_id) references user(id) on delete cascade on update no action,
	foreign key (lecture_id) references user_lecture(id) on delete cascade on update no action
);