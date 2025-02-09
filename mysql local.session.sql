show databases;

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
limit 2; # limit that show the given n number of tuples in data base 




 