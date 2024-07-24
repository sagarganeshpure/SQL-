-- 15. create following sales and product tables and insert data into it Table : sales

use dbp311;
 create table sales (sale_id int,product_id int primary key,
                      quantity_sold int,sale_date date,total_price int);
                      
create table product (product_id int, product_name varchar(20), 
                       category varchar(20), unit_price int);		
                       
insert into sales(sale_id, product_id, quantity_sold, sale_date, total_price )
           values("1","101",5,"2024-01-01","150");  
           
select * from sales;   

insert into sales(sale_id, product_id, quantity_sold, sale_date, total_price )
           values("2","102",3,"2024-01-02","90") ,("3","103",2,"2024-01-02","60"),
           ("4","104",4,"2024-01-03","120"), ("5","105",6,"2024-01-03","180");
select * from sales;


insert into product(product_id, product_name, category, unit_price)
           values(101,"Laptop","Electronics",500),(102,"Smartphone","Electronics",300),
                  (103,"Headphones","Electronics",30),(104,"Keyboard","Electronics",20),
                  (105,"Mouse","Electronics",15);
           select * from  product;
           
 --  16. Retrieve all columns from the Sales table.
 select * from sales;
 
 -- 17. Retrieve the product_name and unit_price from the Products table. 
  select product_name,unit_price from product;
 
 -- 18. Filter the Sales table to show only sales with a total_price greater than $100.
 select * from sales where total_price > 100 ;
 
 -- 19. Filter the Products table to show only products in the Electronics’ category.
 select * from product where category="Electronics" ;
 
--  20. Retrieve the sale_id and total_price from the Sales table for sales made on January 3, 2024.
 select sale_id, total_price from sales where sale_date="2024-01-03";
 
 -- 21. Retrieve the product_id and product_name from the Products table for products with a unit_price 
--  greater than $100. 
select product_id, product_name from product where unit_price > 100;

-- 22. Retrieve the sale_id, product_id, and total_price from the Sales table for sales with a
 -- quantity_sold greater than 4.  
 select sale_id, product_id , total_price from sales where quantity_sold > 4;
           
          
           
           
        