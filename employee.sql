

CREATE TABLE employees (
    id INT NOT NULL AUTO_INCREMENT,
    last_name VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(100) NOT NULL DEFAULT 'employed',
    PRIMARY KEY (id)
);


create table employees(
id int not null auto_increment,
last_name varchar(20) not null,
first_name varchar(20) not null,
middle_name varchar(20) null,
age INTEGER not null,
current_status varchar(20) not null default 'employed',
primary key(id));


create table cats(
cat_id INT NOT NULL auto_increment,
name varchar(100),
breed varchar(100),
age int,
 primary key(cat_id)
);

 insert into cats(name, breed, age)
 values ('Ringo', 'Tabby', 4),
 ('Cindy', 'Marine Coon', 10),
 ('Dumbledore', 'Marine Coon', 11),
 ('Egg', 'Persian', 4),
 ('Misty', 'Tabby', 13),
 ('George Micael', 'Ragdoll', 9),
 ('Jackson', 'Sphynx', 7);
 
 
 select breed, age from cats; 
 select * from cats where age=4;
 select cat_id, age from cats where cat_id=age;
 select cat_id as id, name from cats;
 
 UPDATE cats SET breed='Shorthair' WHERE breed='Tabby';
 UPDATE cats SET age=14 WHERE name='Misty';
 
 delete from cats where name = 'Egg';