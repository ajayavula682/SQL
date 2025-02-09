show databases;

use collage;

show tables;
 
select * from student;

create database if not exists XYZ;

use XYZ;

create table employee(
id  int primary key ,
name varchar(50),
salary int(10));

insert into employee 
(id,name,salary)
values
(1,"adam",25000),
(2,"bob",30000),
(3,"casey",40000);

select * from employee;

alter table employee add(
email varchar(50));

DESCRIBE employee;

INSERT INTO employee (email)
VALUES 
('amigo12@gmail.com'),
('reddy123@gmail.com'),
('aj123@outlook.com');


select * from employee;

create table temp1 (
id int unique #unique prevents from the duplicating the values  
);

insert into temp1 values(101);
insert into temp1 values(101);

#drop temp1;
show tables;

drop table  temp1;

show tables;

show databases;

use temp2;

show tables;

 #primary key example
 create table temp2 (
 id int not null,
 name varchar(50),
 age int not null,
 city varchar(20),
 primary key(id,name)
 );
 
 #forigen key example
 create table temp3 (
 cust_id int,
 foreign key (cust_id) # cust_id is coloum for the temp3 table for (cust_id(temp3 table)--> id(temp2 table)
 references temp2(id), # id is refered to the id of the temp2 table which used as forigen key
 purchased_value float(10)
 );
 
create table emp (
  id int,
  salary int  default 25000);
  
insert into emp (id) emp values (101);
  
 
 
 # default it used to set the default value for the column if no values were inserted in the column
 









