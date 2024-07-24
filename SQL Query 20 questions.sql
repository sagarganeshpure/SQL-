use mywork;

select * from emp_data;

-- 1.	How do you select all records from the employees table where the department is 'Sales'?
select * from employee where department="Sales";

-- 2.	How do you select the first 10 records from the employees table?
select * from emp_data limit 0,10;

-- 3.	How do you select all unique job titles from the employees table?
select distinct(job_title) from employee;

-- 4.	How do you select all records from the employees table and order them by hire_date in descending order?
select * from epmloyee order by hire_date desc;

-- 5.	How do you select all records from the employees table where the salary is greater than 50000 and order the results by last_name in ascending order?
select * from employee where salary>50000 order by last_name asc; 

-- 6.	How do you select all unique departments from the employees table and order them alphabetically?
select distinct(departments) from employee order by department asc;

-- 7.	How do you select the first 5 records from the employees table where the position is 'Manager'?
select * from employee where post="Manager" limit 0,5;

-- 8.	How do you select all unique job titles from the employees table where the department is 'Engineering' and order them by job_title?
select distinct(job_title)from employee where departent="Engineering" order by job_title;

-- 9.	How do you select all unique departments from the employees table where the location is 'New York', order the results by department in descending order, and limit the results to the first 3 records?
select distinct(department) from employee where location ="New York"order by department desc limit 0,3;
 
-- 10.	How do you select all records from the employees table where the department is 'Sales' and hire_date is after '2020-01-01'?
select * from employee where department ="sales"and hire_date > '2020-01-01';

-- 11.	How do you select all records from the employees table and order them by department in ascending order and then by salary in descending order?
select * from employee order by department asc , salary desc;

-- 12.	How do you select all records from the employees table where the last_name starts with 'Smi'?
select * from employee where last_name like "Smi%";

-- 13.	How do you select the first 5 unique job titles from the employees table where the location is 'London'?
select distinct(job_title)from employee where location="London";

-- 14.	How do you select all records from the employees table where the department is either 'HR' or 'Engineering'?
select * from employee where department ="HR" or department="Engineering";

-- 15.	How do you select all records from the employees table where the salary is between 40000 and 60000?
select * from employee where salary between 40000 and 60000;

-- 16.	How do you select the top 3 highest-paid employees in the Marketing department?
select distinct(salary) from employee where department="Marketing" order by salary desc limit 0,3;

-- 17.	How do you select all records from the employees table where the department is not 'Finance' or 'Legal'?
select * from employee where department  not in("Finanace","Legal"); 

-- 18.	How do you select the first 5 unique locations from the employees table where the position is 'Executive', ordered alphabetically?
select distinct(location) from employee where post ="Executive" order by location asc limit 0,5;

-- 19.	How do you select the top 10 employees with the highest salaries from those who were hired after 2019, ensuring that each employee's name appears only once, ordered by their salary in descending order?
select distinct(emp_name) from employee where hire_date > '2019-12-31' order by Salary desc limit 0,10;

-- 20.	How do you select the top 5 employees with the highest salaries who were hired before 2018, ensuring each employee's name appears only once, ordered by their salary in descending order?
select distinct(emp_name) from employee where hire_date < '2018-01-01' order by Salary desc limit 0,5;