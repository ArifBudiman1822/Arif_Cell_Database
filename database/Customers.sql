create table customers(
	id 				int not null auto_increment, 
    email			varchar(100) not null,
    customer_name	varchar(100) not null,
    primary key (id)
) engine = InnoDB;

show tables;

insert into customers(email, customer_name) values ('arifsama01@gmail.com', 'Muhammad Arif Budiman');

insert into customers(email, customer_name) values ('arifsama02@gmail.com', 'Arief Budi');

select email,customer_name from customers;

