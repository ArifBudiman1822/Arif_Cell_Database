# ONE TO ONE RELATION

create table payment_method_description(
	id_description				int not null auto_increment,
    description					varchar(100) not null,
    primary key(id_description)
);

# UNIQUE 
alter table payment_method
add constraint id_description_unique unique (id_description);

# FOREIGN KEY
alter table payment_method
add constraint fk_id_description 
foreign key (id_description) references payment_method_description(id_description) ;

drop table payment_method_description;

show tables;

show create table payment_method;

select * from payment_method
join payment_method_description on payment_method.id_description = payment_method_description.id_description;