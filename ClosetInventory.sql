create database shirt_db;
use shirt_db;

create table shirts(
shirt_id int not null auto_increment,
article varchar(255) not null,
color varchar(255) not null,
shirt_size varchar(255) not null,
last_worn int not null,
primary key (shirt_id)
);

insert into shirts (article, color, shirt_size, last_worn)
values ('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);


/* Add a new shirt */
insert into shirts (color, article, shirt_size, last_worn)
values ('purple', 'polo shirt', 'M', 50);

/* Select all shirts but only print out article and color */
select article, color from shirts;

/* Select all medium shirts, print out everything but shirt_id */
select color, article, shirt_size, last_worn from shirts where shirt_size = 'M';

/* Update all polo shirts: change their size to L */
update shirts set shirt_size = 'L' where article = 'polo shirt';

/* Update the shirt last worn 15 days ago: change last_worn to 0 */
update shirts set last_worn = 0 where last_worn = 15;


/* Update all white shirts: change size to 'XS' and color to 'off white' */
update shirts set shirt_size = 'XS', color = 'off white' where color = 'white';

/* Delete all old shirts: last worn 200 days ago */
delete from shirts where last_worn = 200;

/* Delete all tank tops: Your tastes have change... */
delete from shirts where article = 'tank top';

/* Delete all shirts!. */
delete from shirts;

/* Drop the entire shirts table */
drop table shirts;
show tables;
desc shirts;

