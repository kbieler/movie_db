insert into auditorium (
aud_id,
theater_n,
num_seats
)
values (
1,
1,
136
),
(
2,
2,
75
);

insert into concessions (
purch_id,
purch_type,
purch_time,
empl_id
)
values(
1,
'popcorn',
current_time,
2
),
(
2,
'soft drink',
current_time,
2
);

insert into customers(
customer_id,
cst_name,
membership,
mem_points
)
values(
1,
'John Cleese',
true,
50
),
(
2,
'Eric Idle',
true,
50
);

insert into employees (
empl_id,
empl_name,
phone,
title,
salary
)
values(
1,
'Michael Scott',
'1-972-396-5555',
'manager',
60,000.00,
),
(
2,
'Dwight K. Shrute',
'1-214-824-5555',
'sales',
38,000.00
);

insert into movies (
movie_id,
description,
genre,
rating,
run_time,
release_date,
end_date 
)
values (
1,
'The Goonies',
'adventure comedy',
'PG',
'114 mins',
'1985-06-07',
'2022-05-31'
),
(
2,
'Back to the Future',
'sci-fi comedy',
'PG',
'112 mins',
'1985-07-03',
'2022-05-31'
);

insert into screenings(
scrn_id,
scrn_date,
scrn_time,
movie_id,
aud_id 
)
values(
1,
'2022-05-13',
'06:00 PM',
1,
1
),
(
2,
'2022-05-13',
'06:30 PM',
2,
2
);

insert into tickets(
res_id,
res_type,
empl_id,
scrn_id,
customer_id 
)
values(
1,
'online',
2,
2,
1
),
(
2,
'box office',
2,
1,
2
);






