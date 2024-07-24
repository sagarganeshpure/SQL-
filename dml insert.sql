use dbp311;
show tables;

insert into employee(empid,empname,contact,salary,age,location)
               values("AB001","RAJ","9876543210",50000,18,"Pune");
               
insert into employee(empid,empname,contact,salary,age,location)
               values("AB002","RAJA","9876543213",55000,19,"Pune"),
					 ("AB003","DEEP","9876543212",60000,20,"Pune");

insert into employee(empid,empname,salary)
               values("AB004","Suraj",75000),
					 ("AB005","DEEP",60000);
                     
     
insert into employee(empid,empname,salary)
               values("AB006","RAM",76000),
					 ("AB007","PRIYA",65000),               
                     ("AB008","RINKU",69000);
                     
-- read alll data fro table
select * from employee;
  select empid,empname,salary from employee; 