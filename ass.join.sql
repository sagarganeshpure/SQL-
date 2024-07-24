use mywork;

show tables;
select* from student_reg;
select* from student_course;

alter table student_reg drop primary key;
 select * from student_reg as r cross join student_course as c; 
select * from student_reg as r inner join student_course as c on r.sid=c.sid;













