use dbp311;
show tables;

create table emp11(empid int ,
                  empname varchar(20),
                  deptid varchar(20),
                  salary float );
                  
insert into emp11 values(1, "Raj",101,50000),(2, "Priya",102,55000),(3, "Rajiv",103,65000),(4, "Rakesh",104,57000),(5, "Akash",105,70000);                  
insert into emp11 values(8, "Raja",108,56000);

create table emp12(empid int ,
                  empname varchar(20),
                  deptid varchar(20),
                  salary float );
                  
insert into emp12 values(8, "Raja",108,56000),(7, "Prakash",106,67000),(6, "Ramesh",107,65000),(9, "Rakesh",109,57000),(10, "Akashi",111,70000);

-- Syntax >> 3table join 
-- select * from T1 join T2 on T1.c1=T2.c2 on T3.c2=T2.c2;

/*  Equi Join
>> where with =
-- Syntax >>
select * from T1 join T2 on T1.c1=T2.c2 where T3.c2=T2.c2;
*/
select * from emp11;
select * from emp_data;

select * from emp as e1 join emp_data as e2 
        on e1.dept=e2.DEPT_ID;

select * from emp as e1 join emp_data as e2 
        on e1.dept=e2.DEPT_ID join emp11 as e3 where e3.deptid=e2.DEPT_ID;
        
/*  Non Equi Join 
>> where with <,>,<=,>=, <>
-- Syntax >>
select * from T1 join T2 on T1.c1=T2.c2 where T3.c2 < T2.c2;
*/

select * from emp as e1 join emp_data as e2 
        on e1.dept=e2.DEPT_ID join emp11 as e3 where e3.deptid <> e2.DEPT_ID;

/* Union
>> it is used to combine two or more tables  and fetch unique records.
Syntax >> select c1 ,c2,c2 from T1
          union
          select c1,c2,c3 from T2
*/
select * from emp11
union
select * from emp12;

/* Union all
>> it is used to combine two or more tables  and fetch all records from both the tables with duplicates records
Syntax >> select c1 ,c2,c2 from T1
          union
          select c1,c2,c3 from T2
*/
select * from emp11
union all
select * from emp12;
