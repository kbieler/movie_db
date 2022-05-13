create table customers (
customer_id serial primary key,
cst_name varchar(30),
membership boolean,
mem_points integer
);

create table employees (
empl_id serial primary key,
empl_name varchar(30),
phone varchar(14),
title varchar(20),
salary numeric(7,2)
);

create table movies (
movie_id serial primary key,
description varchar(150),
genre varchar(30),
rating varchar(5),
run_time varchar(8),
release_date date,
end_date date
);

create table auditorium (
aud_id serial primary key,
theater_n integer not null,
num_seats integer not null
);

create table concessions (
purch_id serial primary key,
purch_type varchar(20),
purch_time time,
empl_id integer not null,
foreign key (empl_id) references employees (empl_id)
);

create table screenings (
scrn_id serial primary key,
scrn_date date,
scrn_time time,
movie_id integer not null,
aud_id integer not null,
foreign key (movie_id) references movies (movie_id),
foreign key (aud_id) references auditorium (aud_id)
);

create table tickets (
res_id serial primary key,
res_type varchar(20),
empl_id integer not null,
scrn_id integer not null,
customer_id integer not null,
foreign key (empl_id) references employees (empl_id),
foreign key (scrn_id) references screenings (scrn_id),
foreign key (customer_id) references customers (customer_id)
);
