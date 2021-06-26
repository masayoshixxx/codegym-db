CREATE TABLE users (
  id int(11) primary key auto_increment,
  mail varchar(100) not null,
  password varchar(100) not null,
  name varchar(100) not null,
  profile varchar(1000),
  business_phone_number char(13),
  mobile_phone_number char(13),
  is_deleted tinyint(1) not null default 0,
  created_at datetime not null default current_timestamp,
  updated_at datetime not null default current_timestamp
);

CREATE TABLE chat_rooms (
  id int(11) primary key auto_increment,
  name varchar(100) not null,
  description varchar(1000),
  is_send_file tinyint(1) not null default 1,
  is_direct_chat tinyint(1) not null default 0,
  is_deleted tinyint(1) not null default 0,
  created_at datetime not null default current_timestamp,
  created_user_id int(11) not null,
  updated_at datetime not null default current_timestamp,
  updated_user_id int(11) not null,
  foreign key (created_user_id) references users(id),
  foreign key (updated_user_id) references users(id)
);

CREATE TABLE chat_room_users (
  id int(11) primary key auto_increment,
  user_id int(11) not null,
  chat_room_id int(11) not null,
  user_joined_at datetime not null default current_timestamp,
  foreign key (user_id) references users(id),
  foreign key (chat_room_id) references chat_rooms(id)
);

CREATE TABLE posts (
  id int(11) primary key auto_increment,
  content varchar(1000) not null,
  attachment_name varchar(100),
  is_deleted tinyint(1) not null default 0,
  created_at datetime not null default current_timestamp,
  created_user_id int(11) not null,
  updated_at datetime not null default current_timestamp,
  updated_user_id int(11) not null,
  chat_room_id int(11) not null,
  foreign key (created_user_id) references users(id),
  foreign key (updated_user_id) references users(id),
  foreign key (chat_room_id) references chat_rooms(id)
);

CREATE TABLE tasks (
  id int(11) primary key auto_increment,
  content varchar(1000) not null,
  task_user_id int(11) not null,
  deadline datetime,
  is_finished tinyint(1) not null default 0,
  is_deleted tinyint(1) not null default 0,
  created_at datetime not null default current_timestamp,
  created_user_id int(11) not null,
  updated_at datetime not null default current_timestamp,
  updated_user_id int(11) not null,
  chat_room_id int(11) not null,
  foreign key (task_user_id) references users(id),
  foreign key (created_user_id) references users(id),
  foreign key (updated_user_id) references users(id),
  foreign key (chat_room_id) references chat_rooms(id)
);
