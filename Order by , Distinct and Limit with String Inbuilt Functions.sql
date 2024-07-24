-- order By clause

use dbp311;

-- query to aess salary in asending order
select * from emp_data order by salary ;

-- query to aess salary in descending order
select * from emp_data order by salary  desc;

-- query to aess salary in descending order and gender in descing order
select * from emp_data order by Salary , Gender;

select * from emp_data order by LOC , Gender desc;

-- Distinct clause
select distinct(Salary) from emp_data ;
select distinct( LOC) from emp_data;
select distinct( Gender) from emp_data;

-- Limit clause

 -- query to acess top 10 rows
select * from emp_data limit 10; 

-- Find 2nd Highest salary from emp_data
select distinct(Salary) from emp_data order by Salary desc limit 1,1;  -- 190765

-- Find 2nd Lowest salary from emp_data
select distinct(Salary) from emp_data order by Salary asc limit 1,1;  -- 43010

-- query to access 51th reord
select * from emp_data limit 50,1;

-- query to access 20th reord
select * from emp_data limit 19,1;-- 73823

-- Built in Funtions
-- 1 String Funtions 
 -- 1.concat()
select concat("Priya"," ","Pawar");
select concat(Fname," ",Lname) from emp_data;

-- 2. upper()
select upper("india");
-- 2. upper() : converts columns data to upper case(capital)

-- syntax : select upper(st1);
-- select upper(colname) from <table_name>;

select upper("india");

select upper(FName) from emp_data;

-- 3. lower() : converts columns data to lower case(small)

-- syntax : select lower(st1);
-- select lower(colname) from <table_name>;

select lower("India");
select lower(FName) from emp_data;

-- 3. length() : find out number of chracters in text data

-- syntax : select length(st1);
-- select length(colname) from <table_name>;

select length("India");
select FName,length(FName) from emp_data;

-- 4. replace() : replace old substring by new substring
-- syntax : select replace(original_string, oldsubstring, newsubstring) from <TN>;

select replace("Data Science","Science","Analytics");

select replace(Fname,"a","**") from emp_data;

-- 4. substr() : acess portion of a string
-- syntax : select substr(original_string, start_index, number of char) from <TN>;

select substr("Data Science",1,4); -- Data

select substr("Data Science",6,3); -- sci

select substr("its not title case",9,5); -- title

select replace(Fname,"a","**") from emp_data;













