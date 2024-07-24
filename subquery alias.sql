use dbp311;

create table new_emp(select Fname,Lname,lOC,Salary from emp_data);
 select * from emp_data;
desc new_emp;
 select * from new_emp;
 
-- to find max salary
select max(Salary) from emp_data; -- '197537'

-- to find salary less than max salary
 select * from emp_data where Salary <'197537';
 
 -- find 2nd max Salary using Subquery;
select max(Salary) from emp_data where Salary < (select max(Salary) from emp_data);-- '190765'

-- Alias = give temporary name table,column,query  as Keyword
 
select Fname as Firstname,Lname as Lastname from emp_data;
select e.EmpID,e.LOc,e.MGR_ID from emp_data as e;

-- SUBQUERY
 
-- select * from emp_data where Salary = (select max(Salary from new_emp group by DEPT_ID) ;
select * from emp_data;

-- 1 Which employee has the highest salary in each department
select FName, DEPT_ID,max(Salary) from emp_data group by DEPT_ID;
/*'10', '184896'
'20', '190139'
'30', '197537'
*/
select DEPT_ID,Salary from emp_data where Salary in (select max(Salary) from emp_data group by DEPT_ID);
/*  '10', '184896'
 '30', '197537'
 '20', '190139'
*/

select DEPT_ID,Salary from emp_data as E1 
	   where Salary=(select max(Salary)
       from emp_data as E2
       where E1.DEPT_ID=E2.DEPT_ID);
/* '10', '184896'
'30', '197537'
'20', '190139'

*/
 
-- 2 Which custmors have made a purchase over $10000
select  customer_name ,max(price) from customers where price >
        (select price from customers where price=10000);
        
-- 3 Which product have never been ordered?
        
-- 4 which product cost more than the avg price of all products?
select product_name from customers where cost > 
       (select avg(cost) from customers);        

-- 5 find departments with more than 5 empolyees ?
select DEPT_ID,count(*) from emp_data  group by DEPT_ID having count(*)>5;      

select DEPT_ID from emp_data as a 
where count(*) =
(select count(*) from emp_data as b where a.DEPT_ID=b.DEPT_ID);


select DEPT_ID, count(*) from emp_data group by DEPT_ID;
select DEPT_ID from emp_data where DEPT_ID= (select DEPT_ID from emp_data group by DEPT_ID having count(*) > 5);