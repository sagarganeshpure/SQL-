use dbp311;
show tables;
alter table emp_data  add column Age int;
insert into emp_data (age) values(30),(40),(50);
select * from employee;
					

-- 1 If Thomas Lewis is no longer employed , how would you remove his record from the 'emp_data' table
delete from emp_data where FName="Thomas" and LName="Lewis";
select * from emp_data;

-- 2. If Thomas Lewis's age was incorrectly entered as 30, how would you update it to 35?
update emp_data set age = 35 where  FName="Thomas" and LName="Lewis";

-- 3. Retrieve all records from emp_data
select * from emp_data;

-- 4. How would you retrieve records of employees aged between 30 and 40?
select * from employee where age between 30 and 40;

-- 5. Retrieve the names of employees who are 35 years old.



-- 6. How would you add a new column named 'email' to the 'employees' table?


-- 7. How would you retrieve a list of all databases in the MySQL?
show databases;

-- 8. List the employees who are working in dept 10 and 20.
select * from emp_data where DEPT_ID=10 OR DEPT_ID=20;

-- 9. List the employees who does not belong to Dallas.
select * from emp_data where LOC <>"DALLAS";

-- 10. List the empid, name, salary and incremented salary after 50% increment of all 
select EmpID, FName, LName, Salary, 0.5* Salary from emp_data;

-- 11. List the employees for those we do not have loc information.
select * from emp_data where LOC is null;

-- 12. What is the syntax to add a record to a table?
/* -- insert single row
-- syntax: insert into <tablename> (col1, col2,...,coln) values (val1,val2, ...,valn);

insert into employee (empid, empname, contact, salary, age,location) values ("AB001", "Mayank", 9876543210, 50000, 22, "Pune");


-- insert multiple rows
-- syntax: insert into <tablename> (col1, col2,...,coln) values (val1,val2, ...,valn), (val1,val2, ...,valn),(val1,val2, ...,valn), (val1,val2, ...,valn);

insert into employee (empid, empname, contact, salary, age,location) values ("CD001", "Priyanka", 9876534210, 75000, 24,"Mumbai");

insert into employee (empid, empname, contact, salary, age,location) values ("FG001", "Priya", 8976534210, 75000, 29,"Mumbai"), ("TG008", "Sagar", 897653421, 5000, 19,"Chennai"),("XY004", "Faisal", 8976530910, 65000, 25,"Mumbai");

-- insert values for specific columns
-- syntax: insert into <tablename> (col1, col2, col5, col6) values (val1,val2,val5, val6), (val1,val2,val5, val6);
*/
-- 13. Difference between Data definition language and Data manipulation language.
-- 14. Difference between Delete , Drop and Truncate.
