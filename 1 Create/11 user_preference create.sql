create table user_preference (
	user_id INT,
	website_language VARCHAR(50) not null default 'English',
	content_language VARCHAR(50) not null default 'English',
	autoplay_video VARCHAR(50) not null default '1',
	showing_profile_photo VARCHAR(16) not null default 'All members',
	open_for_hiring VARCHAR(50) not null default '0',
	share_info_with_company VARCHAR(50) not null default '0',
	notification VARCHAR(50) not null default '1',
	who_can_reach_you VARCHAR(80) not null default 'Everyone',
	primary key (user_id),
	foreign key (user_id) references user(id) on delete cascade on update no action
);