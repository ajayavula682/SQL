show databases;

use collage;

show tables;

select * from student;

drop table student;

create table student (
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

insert into student
(rollno,name,marks,grade,city)
values
(101,"ajay",95,"A","Tirupathi"),
(102,"Akhil",90,"A","Kdp"),
(103,"Max",85,"B","Rjp"),
(104,"Bhumika",90,"C","Mumbai"),
(105,"Neha",70,"c","Hyd");

insert into student values(106,"Amigo",90,"A","Tirupathi");

select distinct city  from student;

select * from student where marks > 80; # finding values based on condition

select * 
from student
where marks >80 and  city = "Tirupathi";

select * from student 
where city not in ("Rjp","Kdp","Tirupathi");

select * from student 
limit 2; 
# limit that show the given n number of tuples in data base 
show databases;

use collage;

select * from student where marks >80 and city="tirupathi";

select * from student where marks != 90;

select * from student where marks  between  80 and 93;

select * from student where city in ("Rjp","tirupathi"); #  checks in the given values

select * from student where city not in ("Rjp","Kdp","Tirupathi"); # gives oposite to the given condition --> checks opposite 

select name,marks from student
where marks > 80 
limit  2;

# shows only two tuples in the given condition

select city,name,count(rollno)
from student
group by city;

select city,avg(marks)
from student
group by city
order by city;

select city,avg(marks)
from student
order by avg(marks);

select grade,count(rollno)
from student 
group by grade order by grade;
 # having clause used for conditions and the having that alter
 # mostly applies on the rows.
 # mainly it used for the when we want to apply after grouping.
 
 select count(name),city
 from student 
 group by city
 having max(marks) >90;
 
start transaction;

show databases;

use collage;
 
update student 
set grade ="O"
where grade="A";




select * from student;

show tables;

show databases;

use collage;


create table payments (
customer_id int primary key,
customer char(20),
mode char(20),
city char(20));

insert into payments 
(customer_id,customer,mode,city)
values
(103,"Maya Hemandaz","credit card","seattle"),
(104,"Liam","Netbanking","denver"),
(105,"Sophia","creditcard","new orleans"),
(106,"caleb","debit card","minneapolis"),
(107,"Ava patel","debit card","pheonix"),
(108,"lucas carter","netbanking","bostan"),
(109,"isabella martinez","netbanking","nashivelle"),
(110,"jackson brooks","credit card","cleveland");

select * from payments;

select mode,count(customer)
from payments
group by mode;

select * from student;

set SQL_safe_updates=0; # by default in sql you have safe mode
# turn on  to turn off this we use the following command

set sql_safe_updates=1; # to turn back on.

update student 
set grade ="O"
where grade ="A";

update student
set grade ="f"
where marks between 80 and 90;

update student 
set marks =marks+1;

select * from student;

delete from student
where marks < 92;


use collage;

show databases;

create table dept (
id int primary key,
name varchar(50)
); 

insert into dept
values
(101,"English"),
(102,"CSE");

select * from dept;

update dept 
set id=103
where id=102;

select * from teacher;

drop  table teacher; #this drops the table 

create table teacher (
id int primary key,
name varchar(50),
dept_id int,
foreign key (dept_id) references dept(id)
on delete cascade
on update cascade
);

insert into teacher
values
(101,"Adam",101),
(102,"Eve",102);





















 