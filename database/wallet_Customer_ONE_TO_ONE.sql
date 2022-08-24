create table wallet(
	id 				int not null auto_increment,
    id_customer		int not null,
    balance			int not null default 0,
    primary key(id),
    unique key id_customer_unique (id_customer),
    foreign key fk_wallet_customer (id_customer) references customers(id)
) engine = InnoDB;

select id_customer from wallet;

desc wallet;

show create table wallet;

insert into wallet(id_customer) values (1), (2);

insert into wallet(id_customer) values (3);

select customers.email,customers.customer_name,wallet.balance,wallet.id from customers
inner join wallet on (wallet.id_customer = customers.id);
