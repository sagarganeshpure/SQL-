=-- Math Functions
-- 1 abs(n)
select abs(5);
select abs(-10);

-- round
select round(10.56);-- 11


-- pow(n,p)
select pow(2,3);
select pow(4,0.5);-- sqrt root of 2
select pow(27,0.333);-- cube root of 3

-- sqrt(n)
select sqrt(9);

-- ceil(n) :>=n
select ceil(5.65); -- 6
select ceil(10.62);-- 11
select ceil(-5.65);-- -5

-- floor(n):<=n
select floor(5.65);-- 5
select floor(-10.55);-- -11
select floor(10.55);-- -11

-- date and tie functions
-- now() current date and time
select now();

-- curdate() 
select  curdate();

-- curtime()
select curtime();

-- datediff()
select datediff('2024-05-16','2023-05-17');

select date_format('2024-05-17',' %w');-- 4
select date_format('2024-05-17',' %W');-- friday

select time_format("14:23:02",'%h');-- 02
select time_format("14:23:02",'%H');-- 14

select hour("14:23:02"); -- 14
select minute("14:23:02"); -- 23
select second("14:23:02"); -- 02

select date_format('2024-05-17',' %m');-- 05
select date_format('2024-05-17',' %M');-- may













