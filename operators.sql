use dbp311;
 select * from emp_data;
 
 -- 1. arithmatic operators
select empid, salary from employee;

-- display 50% salary of each emloyee
select empid, salary, 0.5*salary from employee;

-- display 75% salary of each emloyee
select empid, salary, 0.75*salary from employee;

-- 2. comparison operators : =,< , >, <=, >=, <>(not equals to)

-- retrieve all employess having salary=50000
select * from employee where salary = 50000;
select empname from employee where salary = 50000;

select * from emp_data;
select * from emp_data where Salary = 50155;
select * from emp_data where Salary < 50155;
select * from emp_data where Salary <= 50155;
select * from emp_data where Salary > 50155;
select * from emp_data where Salary >= 50155;
select * from emp_data where Salary <> 50155; -- <> : not equals to

-- 3. Logical Operators : and, or

-- retrieve all female employees from DALLAS
select * from emp_data where LOC = "DALLAS" and Gender = "F";

-- retrieve all male employees whose salary > 50k
select * from emp_data where Salary > 50000 and Gender = "M";

-- retrieve all male employees whose salary > 50k from new york city
select * from emp_data where Salary > 50000 and Gender = "M" and LOC = "NEW YORK" ;

-- OR : retrieve all employees from 10 or 20 dept_id
select * from emp_data where DEPT_ID = 10 or  DEPT_ID =20;

-- OR : retrieve all female employees from 10 or 20 dept_id
select * from emp_data where Gender = "F" and (DEPT_ID = 10 or  DEPT_ID = 20);

-- 4. membership operators : in, not in

-- retrieve all employees from dallas or new york
select * from emp_data where LOC in ("DALLAS", "NEW YORK");

-- retrieve all employees who are not from dallas or new york
select * from emp_data where LOC not in ("DALLAS", "NEW YORK");


-- is null, is not null
select * from employee where contact is null;

select * from employee where contact is not null;

select * from employee;

-- 1. DDL : truncate command >> all records will get deleted, structure remains as it is

-- truncate table <tablename>;
truncate table emp_data;

select * from emp_data;

-- 2. DML : update >> used to update specific rows

select * from employee;

-- update suraj contact number
update employee set contact = 5432167890 where empname = "suraj";
update employee set location ="Mumbai" where empname="RAJA"; 
 update employee set location ="Mumbai" where empname="DEEP";
 update employee set empname ="DEEPAK" where empid="AB003";
 
 select * from employee;

