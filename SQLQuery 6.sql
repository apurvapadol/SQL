--------> Joins in sql
1)Inner Joins
2)Left Joins
3)Right Joins
4)Full Joins

L,R,F joins also called outer join

Left exclusive join
Right exclusive join
Full exclusive join

union 
union all


create database joins;
use joins;

create table student(
student_id int ,
student_name varchar(50)
);

create table course(
course_id int,
course_name varchar(50)
);

insert into student
values 
(101,'Adam'),
(102,'bob'),
(103,'casey');

insert into course
values 
(102,'english'),
(105,'math'),
(103,'science'),
(107,'physics');

select* from student;
select* from course;



----------> inner join
select *
from student 
inner join course
on student.student_id=course.course_id; 


----------> left join
select *
from student as s 
left join course as c
on s.student_id=c.course_id; 


---------> Right join
select *
from student as s 
right join course as c
on s.student_id=c.course_id; 


---------> Full join and union
select *
from student as s 
left join course as c
on s.student_id=c.course_id
union
select *
from student as s 
right join course as c
on s.student_id=c.course_id
order by student_name asc; 



----------> union all
select *
from student as s 
union all
select *
from course as c;