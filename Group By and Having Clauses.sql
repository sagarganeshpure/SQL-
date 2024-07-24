-- Group By clause
/*
syntax: select col, aggregate_function(col1) from <table name> group by col;

syntax: select col, aggregate_function(col1) from <table name> where condition group by col order by limit offset, Rows;
*/
-- total salary from EACH location
use dbp311;

select sum(Salary) from emp_data group by LOC;
select LOC, sum(Salary) from emp_data group by LOC;

-- max salary from each dept
select DEPT_ID, max(Salary) from emp_data group by DEPT_ID;
/*
'10', '184896'
'20', '190139'
'30', '197537'

*/

-- max salary from each dept, sorted in descending order by salary
select DEPT_ID, max(Salary) from emp_data group by DEPT_ID order by max(Salary) desc;
/*
'30', '197537'
'20', '190139'
'10', '184896'

*/

-- number of employees working from each city
select LOC, count(*) from emp_data group by LOC;
/*
'DALLAS', '37'
'CHICAGO', '44'
'NEW YORK', '19'
*/
/* clause : group by clause : used to make groups on the basis of similarities.

it makes group of each distinct/unique value in a column

syntax: select col, aggregate_function(col1) from <table name> group by col;

syntax: select col, aggregate_function(col1) from <table name> where condition group by col order by limit offset, Rows;
*/

-- total salary from EACH location
select LOC, sum(Salary) from emp_data group by LOC;

-- max salary from each dept
select DEPT_ID, max(Salary) from emp_data group by DEPT_ID;

-- max salary from each dept, sorted in descending order by salary
select DEPT_ID, max(Salary) from emp_data group by DEPT_ID order by max(Salary) desc;

-- number of employees working from each city
select LOC, count(*) from emp_data group by LOC;

-- number of employees working, max salary, min salary, avg salary, total salary from each city
select LOC, count(*), max(Salary), min(Salary), avg(Salary), sum(Salary) from emp_data group by LOC;

-- number of employyees from each city genderwise
select LOC, Gender, count(*) from emp_data group by LOC, Gender order by LOC;

-- number of employees working from each deptwhose salary >50k
select * from emp_data where Salary > 50000;
select DEPT_ID, count(*) from emp_data group by DEPT_ID;
/*
10	27
20	41
30	32
*/

select DEPT_ID, count(*) from emp_data where Salary > 50000 group by DEPT_ID;
/*	
10	27
20	41
30	32
/*


/* having clause : used to filter out groups as per condition
syntax : select col, agg_fun(col1) from <TN> group by col having condition;
*/

-- cities where employee count  > 30
select LOC, count(*) from emp_data group by LOC having count(*)>30;

-- depts where avg salary < 120000
select DEPT_ID, avg(Salary) from emp_data group by DEPT_ID having avg(Salary) < 120000;

/*
difference between where and having clauses

CLAUSES ORDER
while writing a query : distinct >> where >> group by >> having >> order by >> limit

while execution : where >> group by >> having >> order by >> distinct >> limit



