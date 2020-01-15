CREATE TABLE student (
    user_id INT,
    primary key (user_id),
    foreign key (user_id) references user(id) ON DELETE CASCADE ON UPDATE NO ACTION
);