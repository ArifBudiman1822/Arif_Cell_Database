# MANY TO MANY

create table user_payment_method_detail(
	id_user							int not null,
    id_payment_method				int not null,
    payment_status					enum('sukses','gagal'),
    primary key (id_user, id_payment_method),
    constraint fk_user_detail
    foreign key (id_user) references user(id),
    constraint fk_payment_method
    foreign key (id_payment_method) references payment_method(id_payment_method)
);

desc payment_method;

show tables;

select  u.email,
		u.name,
        p.payment_method,
        d.payment_status
from user_payment_method_detail as d
join user as u on u.id = d.id_user
join payment_method as p on p.id_payment_method = d.id_payment_method;
