create table categories(
	id 					varchar(10) not null,
    name 				varchar(100) not null,
    primary key (id)
) engine = InnoDB;

drop table categories;

desc categories;

show tables;

insert into categories(id, name) values ('A0001', 'Paket Data');

insert into categories(id, name) values ('A0002', 'Pulsa');

insert into categories(id, name) values ('A0003', 'dll');

select id,name from categories;

alter table products 
add column id_category varchar(10);

alter table products

drop column id_category;
alter table products
add constraint fk_product_category
foreign key (id_category) references categories(id);

alter table products 
drop constraint fk_product_category;

show create table products;

select * from categories;

select * from products;

select products.id,products.product_name,categories.name from categories
join products on (products.id_category = categories.id);