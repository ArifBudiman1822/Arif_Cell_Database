create table products(
	id 				varchar(10) not null,
    product_name 	varchar(100) not null,
    category		enum('Paket Data','Pulsa','dll') not null,
    price			int not null default 0,
    quantity	 	int not null default 0,
    primary key (id)
) engine = InnoDB;

drop table products;

show tables;

commit;

desc products;

alter table products
add column operator enum('XL','Axis','Telkomsel','Three','Smartfren','Indosat')
after product_name;

alter table products
add column description varchar(100) not null
after category;

select * from products;

insert into products(id, product_name, operator , category,description,price,quantity) values ('0001','Paket OMG','Telkomsel', 'Paket Data','10 GB',20000,100);

insert into products(id, product_name, operator , category,description,price,quantity) values ('0002','Paket Bundling','Telkomsel', 'Paket Data','15 GB',35000,50);

insert into products(id, product_name, operator , category,description,price,quantity) values ('0003','Paket Bronet','XL', 'Paket Data','10 GB',15000,100);

insert into products(id, product_name, operator , category,description,price,quantity) values ('0004','Paket Hepi','Axis', 'Paket Data','12 GB',18000,100);

insert into products(id, product_name, operator , category,description,price,quantity) values ('0005','Paket Smartjoss','Smartfren', 'Paket Data','10 GB',25000,100);

insert into products(id, product_name, operator , category,description,price,quantity) values ('0006','Pulsa 20000','Three', 'Pulsa','10 GB',20000,100);

insert into products(id, product_name, category,description,price,quantity) values ('0007','Headset', 'dll','Full Bass',30000,20);

insert into products(id, product_name, category,description,price,quantity) values ('0008','Temper Glass', 'dll','Anti Pecah',15000,30);

alter table products
drop column category;

select * from products;

alter table products
modify column id_category varchar(100)
after operator; 

show create table products;

update products
set id_category = 'A0001'
where id in ('0001','0002','0003','0004','0005','0006');

update products
set id_category = 'A0002'
where id in ('0006');

update products 
set id_category = 'A0003'
where id in ('0007','0008');
