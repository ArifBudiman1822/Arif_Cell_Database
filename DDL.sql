# CREATE TABLE USER
create table user(
	id 					int not null auto_increment,
    email				varchar(100) not null,
    name				varchar(100) not null,
    primary key(id)
);

# CREATE TABLE PRODUCTS
create table products(
	id_product			varchar(10) not null,
    product_name		varchar(100) not null,
    primary key(id_product)
);

# CREATE TABLE PRODUCT_TYPE
create table product_type(
	id_product_type		int not null auto_increment,
    product_type		varchar(100),
    primary key(id_product_type)
) ;

# CREATE TABLE OPERATOR
create table operator(
	id_operator			int not null auto_increment,
    operator_name		varchar(100),
    primary key(id_operator)
) ;

# CREATE TABLE DESCRIPTION
create table description(
	id_description		int not null auto_increment,
    description			varchar(100),
    primary key(id_description)
) ;

# CREATE TABLE PAYMENT_METHOD
create table payment_method(
	id_payment_method	int not null auto_increment,
    payment_method		varchar(100),
    primary key(id_payment_method)
);

# CREATE TABLE KURIR
create table kurir(
	id_kurir			int not null auto_increment,
    name				varchar(100) not null,
    created_at			timestamp default current_timestamp,
    updated_at			datetime default current_timestamp,
    primary key(id_kurir)
);

show tables;

desc shipping;

# ADD COLUMN ONGKOS_DASAR
alter table kurir
add column ongkos_dasar int not null default 0 after name;

# RENAME TABLE KURIR
alter table kurir
rename shipping;

# DROP TABLE SHIPPING
drop table shipping;

alter table description
rename product_description;