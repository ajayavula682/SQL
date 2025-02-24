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

select * from students;

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

select * from dept;

#rename table teacher as teachers;

show tables;

alter table  student # to add or to modify the exsisting tables columns
add column age int;



alter table student
drop column age;# command of alter to drop the column

alter table student # alter command to rename the table name
rename to students;

alter table students# alter command to rename the column name
change column  age stu_age int;

alter table students
add column age int not null default 19;

alter table students
modify column age varchar(2);

select * from students;

insert into students
values
(107,"gargi",68,"O","Kadapa",100);

truncate table  students;# this command delete all 
#the values in the table and not the structutre of the table

alter table students
change column name student_name varchar(20);

delete * from  students
where marks <= 80;

set SQL_safe_updates=0;# command disable the safemode

delete from students
where marks < 80;

set SQL_safe_updates=1;#command enable the safemode

alter table students
drop column grade;

select * from students;

alter table students 
drop column city,
drop column stu_age;

create table course (
stu_id int ,
course varchar(20));

select * from course;

insert into course
values
(100,"english"),
(105,"math"),
(103,"science"),
(107,"computer science");

select * # example for inner join
from students as s # output is generates are the rows which are overlaped
inner join course as c # here we also used the alias for shorter notation of  names
on s.stu_id =c.stu_id;

select * # example for left exclusive  join
from students as s # output is generates are the rows which are overlaped
left join course as c # here we also used the alias for shorter notation of  names
on s.stu_id =c.stu_id
where c.stu_id is null;

select * # example for right  exclusive  join
from students as s # output is generates are the rows which are overlaped
right join course as c # here we also used the alias for shorter notation of  names
on s.stu_id =c.stu_id
where s.stu_id is null;

select *  # left joins here we get all left table values 
from students as s # with over lapping values of right table
left join course as c
on s.stu_id=c.stu_id;

select * from  # right joins get all right values with overlapped 
students as s # right and left table values.
right join course as c
on s.stu_id=c.stu_id;

select * from students,course; # it wont give full joins (wrong syntax)


select *  # left joins here we get all left table values (full joins by union)
from students as s # with over lapping values of right table
left join course as c
on s.stu_id=c.stu_id
union
select * from  # right joins get all right values with overlapped 
students as s # right and left table values.
right join course as c
on s.stu_id=c.stu_id;








































 