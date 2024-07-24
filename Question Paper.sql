use dbp311;

-- 1
select * from emp_data;
select DEPT_ID, sum(Salary) from emp_data group by DEPT_ID;

-- 2
select DEPT_ID, sum(Salary) from emp_data group by DEPT_ID having sum(Salary) > 50000;
select DEPT_ID ,Salary  from emp_data where Salary > 50000;

-- 5
select DEPT_ID ,sum(Salary) from emp_data group by DEPT_ID;


