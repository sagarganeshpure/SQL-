/*Dr_ID	Dr_Name	Dept
1011	Arjun A	Ortho
1022	Varun M	paediatrics
1033	Manohar	ENT*/

use dbp311;
-- Write SQL Commands for the below questions:

-- 1. Create the above table with suitable data types (primary key- Dr_ID)
create table dr_details (Dr_ID int primary key	,Dr_Name  varchar(20),Dept varchar(20));
insert into dr_details values(1011,"Arjun A","Ortho"),(1022,"Varun M","paediatrics"),(1033,"Manohar","ENT");
select * from dr_details;
-- 2. Insert the records as shown as above

-- 3. Update Dr_Id of Manohar to 1044
update dr_details set Dr_Id=1044 where Dr_Name="Manohar";
alter table dr_details add salary float;
  update dr_details set salary=50000;
4. Delete the record of Arjun

5. Add a column salary 

6. Set value as 50000 to salary column
select uname, ucolor, size, cost from uniform, cost
where uniform.ucode=cost.ucode and uniform.ucolor in ('Blue','Grey');