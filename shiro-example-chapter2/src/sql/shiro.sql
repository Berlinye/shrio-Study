  drop table if exists users;
  drop table if exists user_roles;
  drop table if exists roles_permissions;

create table users (
  id bigint auto_increment,
  username varchar(200),
  password varchar(200),
  password_salt varchar(200),
  constraint pk_users primary key(id)
);
create unique index idx_users_username on users(username);

create table user_roles(
  id bigint auto_increment,
  username varchar(200),
  role_name varchar(100),
  constraint pk_user_roles primary key(id)
);
create unique index idx_user_roles on user_roles(username, role_name);

create table roles_permissions(
  id bigint auto_increment,
  role_name varchar(200),
  permission varchar(100),
  constraint pk_roles_permissions primary key(id)
);
create unique index idx_roles_permissions on roles_permissions(role_name, permission);