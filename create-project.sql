DROP table if EXISTS projects;
DROP table if EXISTS users;

Create table users(
	id int(25) not null auto_increment,
	name varchar(255) not null,
	primary key(id)
)ENGINE = InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE projects(
	id int(25) not null auto_increment,
	title varchar(255) default null,
	short_description varchar(500) default null,
	content longtext default null,
	image_url varchar(200) default null,
	created_at timestamp not null default now(),
	modified_at timestamp not null default now() on update now(),
	users_id int(50) not null,
	primary key(id),
	constraint foreign key(users_id) references users(id) on delete cascade on update cascade 
)ENGINE = InnoDB DEFAULT CHARSET=utf8;


insert into users(name) values('Huzafa');
insert into projects(title,short_description,users_id) values('First project','This is my first project',1);
