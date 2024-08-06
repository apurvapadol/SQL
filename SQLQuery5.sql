=============>>
write the query to find average marks in each city in assending order.

create table stu(
rollno int,
name varchar(50),
city varchar(50),
marks int not null,
grade varchar(50)
);

insert into stu
values
(1,'bhumika','mumbai',93,'a'),
(2,'ram','Delhi',98,'a'),
(3,'apurva','pune',95,'a'),
(4,'shyam','jalgaon',83,'b'),
(5,'joni','amravati',79,'c'),
(6,'tomy','nandura',57,'d'),
(7,'pinki','warud',43,'e'),
(8,'sonu','kolkata',85,'b');

select * from stu;

select city,avg(marks)
from stu
group by city
order by avg(marks) DESC;

===========> Having clause
select city,avg(marks)
from stu
group by city
having max(marks)>80;


select city
from stu
where grade >='a'
group by city
having max(marks)>90
order by city desc;

=======> update_command 

update stu
set grade='o'
where grade='a';




