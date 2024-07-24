use dbp311;
show tables;
 
create table emp1(empid int ,
                  empname varchar(20),
                  deptid varchar(20),
                  salary float );
	
 create table dept1(emp_id int ,
                  deptid varchar(20),
                  deptname varchar(20) );   
                  
 insert into emp1 values(1, "Raj",101,50000),(2, "Priya",102,55000),(3, "Rajiv",103,65000),(4, "Rakesh",104,57000),(5, "Akash",105,70000);
 insert into dept1 values(2,10,"HR"),
                    (4,10,"HR"),
					(5,20,"HR"),
					(3,30,"HR");
                    
 select * from emp1 as e join dept1 as d on e.empid=d.emp_id;
 select * from emp1 as e left outer join dept1 as d on e.empid=d.emp_id;
 select * from emp1 as e right outer join dept1 as d on e.empid=d.emp_id; 
  select * from emp1 as e cross join dept1 as d on e.empid=d.emp_id;
  
 select * from emp;
 select * from emp_data;
 desc emp;
 
 insert into emp values(10,"ab001","Raj",1234567890,21,"M","Pune"),
                       (20,"ab003","Akash",1236567890,21,"M","Pune"),
					   (20,"ab002","Ram",1244557890,21,"M","Mumbai"),
                       (30,"ab005","Priya",1254567890,21,"F","Thane"),
                       (10,"ab004","Rakesh",1237567890,21,"M","Pune");
                       
  select * from emp_data inner join emp on emp_data.DEPT_ID= emp.dept; 
  select * from emp_data as e1 left outer join emp as e2 on e1.DEPT_ID=e2.dept;
  select * from emp as e1 left outer join emp_data as e2 on e1.dept=e2.DEPT_ID;
  select * from emp_data as e1 right outer join emp as e2 on e1.DEPT_ID=e2.dept; 
   select * from emp_data as e1  cross join emp as e2 on e1.DEPT_ID=e2.dept;
   
   -- self join 
   -- retrieve all employees who are managers
   select * from emp_data as e1 join emp_data as e2 on e1.EmpID=e2.MGR_ID;
   select  e1.EmpID ,e2.MGR_ID from emp_data as e1 join emp_data as e2 on e1.EmpID=e2.MGR_ID;