use mywork;

create table student_reg(sid int primary key,name varchar(20),par float,city varchar(20));
insert into student_reg values(1,"Harry",95.26,"Pune"),
							  (2,"Mac",98.45,"Nashik"),
                              (3,"Rox",75.69,"Nagpur"),
                              (4,"shree",85.65,"Thane"),
                              (5,"Seema",89.45,"Mumbai");
  select * from student_reg;                            
  
  create table student_course(cid int,sid int,cname varchar(20),branch varchar(20));
insert into student_course values(1,1,"Web designing","Mumbai"),
							  (2,2,"Python","Pune"),
                              (3,4,"PHP","Thane"),
                              (4,5,"DBMS","Nashik"),
                              (3,1,"PHP","Thane");
   select * from student_course;                            
   
    select * from student_reg as r cross join student_course as c on r.sid =c.sid;
    select * from student_reg as r inner join student_course as c on r.sid =c.sid;