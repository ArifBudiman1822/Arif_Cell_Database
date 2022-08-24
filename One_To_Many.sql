# ONE TO MANY

create table address(
	id_address 			int not null auto_increment,
    province			varchar(100) not null,
    city				varchar(100) not null,
    primary key(id_address)
);

show create table address_user;

drop table address;

alter table address
rename address_user;

show tables;

desc user;

desc address_user;

alter table address_user
add column id_user int not null after id_address;

alter table address_user
add constraint fk_id_user_address
foreign key (id_user) references user(id);

select user.email, user.name, address_user.province, address_user.city from user
join address_user on address_user.id_user = user.id;

