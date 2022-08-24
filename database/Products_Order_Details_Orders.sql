create table orders(
	id 				int not null auto_increment ,
    total			int not null default 0,
    order_date		datetime default current_timestamp,
    primary key(id)
)engine = InnoDB;

desc orders;

select * from orders;

drop table orders;

show tables;

insert into orders(total) values (20000);

select * from products;

create table order_details(
	id_product 				varchar(10) not null,
    id_order 				int not null,
    price 					int not null default 0,
    quantity				int not null default 0,
    primary key (id_product, id_order)
)engine = InnoDB;

select * from order_details;

select * from orders;

insert into order_details(id_product,id_order,price,quantity) values('0001',1,25000,2);

insert into order_details(id_product,id_order,price,quantity) values('0002',2,25000,2);

insert into order_details(id_product,id_order,price,quantity) values('0003',3,20000,3);

show tables;

drop tables order_details;

alter table order_details
add constraint fk_order_detail_product
foreign key (id_product) references products(id);


alter table order_details
add constraint fk_order_detail_order
foreign key (id_order) references orders(id);

show create table order_details;

select products.product_name, order_details.price,order_details.quantity, orders.total
from orders
 join order_details on order_details.id_order = orders.id
 join products on order_details.id_product = products.id;

