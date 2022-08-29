# DATA MANIPULATION LANGUAGE

# a. INSERT 5 Operator 
insert into operator(operator_name) values ('Telkomsel');
insert into operator(operator_name) values ('Three'); 
insert into operator(operator_name) values ('Indosat');
insert into operator(operator_name) values ('Smartfren');
insert into operator(operator_name) values ('Axis');
insert into operator(operator_name) values ('XL');

select * from operator;

# b. INSERT 3 PRODUCT TYPE
insert into product_type(product_type) values ('Pulsa');
insert into product_type(product_type) values ('Paket Data');
insert into product_type(product_type) values ('Aksesoris');

select * from product_type;

show tables;

# c. insert 2 product
insert into products(product_name)values ('25rb');
insert into products(product_name)values ('50rb');

# d. 
insert into products(product_name)values ('Paket Belajar 10GB');
insert into products(product_name)values ('Paket Bundling 15GB');
insert into products(product_name)values ('Paket OMG 10GB');

# e.
insert into products(product_name)values ('Kabel Data');
insert into products(product_name)values ('Headset');
insert into products(product_name)values ('Temper Glass');

select * from products;
# f.
insert into product_description(description) values('Pulsa Aja 25rb');
insert into product_description(description) values('Pulsa Aja 50rb');
insert into product_description(description) values('Paket Belajar 5 GB + Kuota Utama 5GB');
insert into product_description(description) values('Kuota 5 GB Youtube + Kuota Utama 10GB');
insert into product_description(description) values('FULL ALLNET 10GB');
insert into product_description(description) values('Kabel data ori Fast Charging');
insert into product_description(description) values('Full Bass');
insert into product_description(description) values('3D Full Display');

select * from product_description;

truncate product_description;


# g.
insert into payment_method(payment_name)values('Link Aja');
insert into payment_method(payment_name)values('Gopay');
insert into payment_method(payment_name)values('Shoppe Pay');
insert into payment_method(payment_name)values('Dana');

select * from payment_method;

truncate user;

desc user;

# h. 
insert into user(email,name,gender) values('arif01@gmail.com', 'Arif kun 01','Laki-Laki');
insert into user(email,name,gender) values('samsul02@gmail.com', 'Samsul kun 02');
insert into user(email,name,gender) values('arif03@gmail.com', 'Arif kun 03');
insert into user(email,name,gender) values('laila04@gmail.com', 'Laila 04','Perempuan');
insert into user(email,name,gender) values('laili04@gmail.com', 'Laili 05','Perempuan');

select * from user;

# i n j

create table transaction(
	id_transaction					int not null auto_increment,
    transaction_date				datetime default current_timestamp,
    total_qty						int not null default 0,
    id_payment						int not null,
    id_user							int not null,
    primary key(id_transaction),
    constraint fk_id_user_transaction
    foreign key(id_user) references user(id),
    constraint fk_id_payment_transaction
    foreign key (id_payment) references payment_method(id_payment_method)
);

desc transaction;

insert into transaction(id_user,id_payment,total_qty)values(1,1, 6);
insert into transaction(id_user,id_payment,total_qty)values(1,1, 5);
insert into transaction(id_user,id_payment,total_qty)values(1,1, 3);


insert into transaction(id_user,id_payment,total_qty)values(2,2, 7);
insert into transaction(id_user,id_payment,total_qty)values(2,2, 9);
insert into transaction(id_user,id_payment,total_qty)values(2,2, 6);


insert into transaction(id_user,id_payment,total_qty)values(3,3, 6);
insert into transaction(id_user,id_payment,total_qty)values(3,3,8);
insert into transaction(id_user,id_payment,total_qty)values(3,3, 5);

select * from transaction;

select u.email,
	   u.name,
       p.payment_name,
       t.total_qty,
       t.transaction_date
from transaction as t
join user as u on t.id_user = u.id
join payment_method as p on t.id_payment = p.id_payment_method;


alter table user;

# 2) a.
select user.name from user where gender = 'Laki-Laki';

# b.
select * from products where id_product = 3;

# c. 
select * from user where name like "a%";
# d.
select count(gender) from user where gender = 'Perempuan';

select * from transaction where id_product = 3;
