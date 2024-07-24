use dbp311;
-- range operator between and

-- retrive all employee salary between 75k to 100000
select * from emp_data where salary between 75000 and 100000;

-- Case operator
create table wheather (temp float) ;
insert into wheather (temp) values ("30"),("40"),("-10"),("45"),("50"),("70");
select * from wheather;
   
select temp ,
case 
when temp< 20 then "Low"
when temp>20  and temp<=40 then "Medium"
when temp> 40 then "High"
end as wheather_conditions
from wheather;

create table student_per(roll_number int, marks int);
insert into student_per(roll_number,marks)
values (1,40),(2,50),(3, 44),(4,45),(5,70),(6,80),(7,65);
select * from student_per;

select roll_number, marks,
case 
when marks <=40 then "d"
when marks >40 and marks <58 then " c"
when marks >59 and marks <65 then"b"
when marks >66 and marks <80 then "A"
when marks > 80 then "A+"
end as grade
from student_per;

-- Like Operators
-- Wildard Entries

-- "_" : underscore : any single character
-- "%" : mod : 0 or more occurences of characters
-- syntax:
-- select * from <table_name> where column like "pattern";
 
 use dbp311;
select * from emp_data;

-- query to retrieve all employees whose names starts with D
select * from emp_data where FName like'D%';

-- query to retrieve all employees whose names ends with s
select * from emp_data where FName like'%s';

-- query to retrieve all employees whose names contains "anc"
select * from emp_data where FName like'%anc%';

-- query to retrieve all employees whose names consists of exact 3 characters
select * from emp_data where  FName like '___';

-- query to retrieve all employees whose names consists of atleast 5 characters
select * from emp_data where  LName like '_____%';

-- query to retrieve all employees whose names consists of atleast 6 characters and 3, 5 characters are "e"
select * from emp_data where FName like'__e_e_';

-- query to retrieve all employees whose names consists of atleast 4 characters 
-- and 1, 2 characters are "T","h" respectively
select * from emp_data where FName like'Th___%';


-- query to retrieve all employees whose names starts with either A or G
select * from emp_data where FName like "A%" or FName like "G%";

-- query to retrieve all employees whose first names starts with A and last names are starts with R
select * from emp_data where FName like "A%" and LName like "R%";

-- query to retrieve all employees whose first names starts with A and last names are ends with a
select * from emp_data where FName like "A%" and LName like "%a";

-- query to retrieve all employees whose first names starts with A and ends with a
select * from emp_data where FName like "A%a";

-- query to retrieve all employees whose first names starts with N and ends with y
select * from emp_data where FName like "N%y";





