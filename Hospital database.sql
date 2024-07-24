create database Hospital;
use Hospital;

#Physician Table

create table Physician(
employeeid int primary key,
name varchar(150) not null,
position varchar(150) not null
);

insert into Physician(employeeid,name,position) 
VALUES
(1,'Dr.John Dorian','Staff Internist'),
(2,'Dr.Elliot Reid','Attending Physician'),
(3,'Dr.Christopher Turk','Surgical Attending Physician'),
(4,'Dr.Percival Cox','Senior Attending Physician'),
(5,'Dr.Bob Kelso','Head Chief of pulmonology'),
(6,'Dr.Todd Quinlan','Surgical Attending Physician'),
(7,'Dr.John Wen','Surgical Attending Physician'),
(8,'Dr.Keith Dudemeister','Resident'),
(9,'Dr.Molly Clock','Attending Psychiatrist'),
(10,'Dr.Imani Harper','Senior Attending Nephrologist'),                        
(11,'Dr.Berkley McKenzie','Resident'),               
(12,'Dr.Scott Vaughan','Senior Attending Gynecologist'),
(13,'Dr.Nancy James','Cardiologist'),
(14,'Dr.Jaxson Khan','Assistant Intensivist'),
(15,'Dr.Mabel Leal','Senior ENT Surgeon'),
(16,'Dr.Cedric Kelley','Junior Resident'),
(17,'Dr.Rosalie Vaughn','Assistant Orthopedic Surgeon'),
(18,'Dr.Remy Cook','Head chief of Gastroenterology'),
(19,'Dr.Aaliyah Craig','Assistant Neuro Surgeon'),
(20,'Dr.Odin Banks','Junior Intensivist'),
(21,'Dr.Cali Vazquez','Head Chief of Orthopedics'),
(22,'Dr.Jesse Craig','Head chief of neonatal'),
(23,'Dr.Brynn Harrison','Staff Internist'),
(24,'Dr.Gavin Curtis','Assistant Physiotherapist'),
(25,'Dr.Alexis Estes','Senior Intensivist'),
(26,'Dr.Estella Keller','Assistant Gastro Surgeon'),
(27,'Dr.Nico Galvan','Head chief of physiotherapy'),
(28,'Dr.Dallas Gutierrez','Senior attending Urologist'),
(29,'Dr.Luca Flowers','Intensivist'),
(30,'Dr.Ariya Bradley','Senior Attending Neurologist'),
(31,'Dr.Richard Mitchell','Senior Resident'),
(32,'Dr.Willow Farmer','Junior Resident'),
(33,'Dr.Jamison Clayton','Assistant neonatologist'),
(34,'Dr.Saige Juarez','Senior Resident'),
(35,'Dr.Robert Suarez','Head Chief of Urology');

select * from Physician;

#Department Table

create table department(
department_id int Primary Key ,
dept_name varchar(150) not null,
head int not null,
foreign Key(head) references Physician(employeeid)
);

insert into department(department_id,dept_name,head)
values
(1,'General Medicine',4),
(2,'Surgery',7),
(3,'Psychiatry',9),
(4,'Cardiology',13),
(5,'Nephrology',10),
(6,'Urology',35),
(7,'Neurology',30),
(8,'Physiotherapy',27),
(9,'ENT',15),
(10,'Pulmonology',5),
(11,'Gastroenterology',18),
(12,'Gynecology',12),
(13,'Neonatal',22),
(14,'Critical care',25),
(15,'Orthopedics',21);

select * from department;

# Patient Table

create table Patient(
patient_id int primary key auto_increment,
name varchar(100) not null,
surname varchar(100) not null,
address varchar(100) not null,
Gender varchar(150) not null,
phone varchar(150) not null,
primary_check int not null,
foreign key(PRIMARY_CHECK) references Physician(employeeid)
);
insert into Patient(Patient_id,name,surname,address,Gender,phone,primary_check)
VALUES
(01,'John','Smith','42 Foobar Lane','Male','555-0256-896',2),
(02,'Grace','Ritchie','37 Snafu Drive','Female','555-0512-657',2),
(03,'Remo','Xavier','101 Omgbbq Street','Male','555-1204-345',9),
(04,'Dennis','Doe','1100 Foobaz Avenue','Male','555-2048-345',17),
(05,'John','Smith','123 Main St','Male','555-123-4567',24),
(06,'Emily','Johnson','56 Elm St','Female','555-234-5678',7),
(07,'Michael','Williams','789 Oak St','Male','555-345-6789',13),
(08,'Sarah','Brown','101 Pine St','Female','555-456-7890',25),
(09,'David','Jones','234 Maple St', 'Male','555-567-8901',28),
(10,'Jessica','Davis','567 Cedar St','Female','555-678-9012',19),
(11,'Christopher','Wilson','890 Birch St','Male','555-789-0123',5),
(12,'Ashley','Taylor','111 Walnut St','Female','555-890-1234',33),
(13,'Matthew','Martinez','222 Cherry St','Male','555-901-2345',3),
(14,'Samantha','Anderson','333 Spruce St','Female','555-012-3456',18),
(15,'Daniel','Garcia','444 Sycamore St','Male', '555-123-4567',6),
(16,'Amanda','Hernandez','555 Pineapple St','Female','555-234-5678',19),
(17,'James','Lopez', '666 Banana St','Male','555-345-6789',15),
(18,'Jennifer','Gonzalez','777 Orange St','Female','555-456-7890',26),
(19,'Joshua','Perez','888 Grape St','Male','555-567-8901',6),
(20,'Brittany','Torres','999 Lemon St','Female','555-678-9012',20),
(21,'Ryan', 'Flores','121 Apple St','Male','555-789-0123',28),
(22,'Lauren','Ramirez','232 Pear St','Female','555-890-1234',6),
(23,'Andrew','Cruz','343 Peach St','Male','555-901-2345',25),
(24,'Nicole','Scott','454 Plum St','Female','555-012-3456',19),
(25,'Justin','Morales','565 Watermelon St','Male', '555-123-4567',24),
(26,'Stephanie','Reed','676 Blueberry St','Female', '555-234-5678',28),
(27,'Brandon','Nguyen','787 Raspberry St','Male','555-345-6789',27),
(28,'Megan','Hill','898 Kiwi St', 'Female','555-456-7890',6),
(29,'Austin','Green','909 Pine St','Male','555-567-8901',33),
(30,'Kayla','Adams','343 Cherry St','Female','555-678-9012',10),
(31,'Tyler','Baker','454 Oak St', 'Male', '555-789-0123',5),
(32,'Haley','Campbell','565 Elm St','Female','555-890-1234',18),
(33,'Dylan','Ward','676 Maple St','Male','555-901-2345',2),
(34,'Victoria','Cox','787 Cedar St', 'Female', '555-012-3456',13),
(35,'Ethan','Rivera','898 Birch St','Male','555-123-4567',20),
(36,'Hannah','Long','909 Walnut St','Female','555-234-5678',21),
(37,'Noah','Diaz','343 Pine St', 'Male','555-345-6789',9),
(38,'Olivia','King','454 Cherry St', 'Female','555-456-7890',30),
(39,'Mason','Powell','565 Oak St','Male','555-567-8901',15);

select * from Patient;

# Patient_Diagnosis Table

create table PATIENT_DIAGNOSIS(
Diagnosis VARCHAR(150) NOT NULL,
Prescription VARCHAR(150) NOT NULL,
Patient_ID INT NOT NULL,
Physician_id INT NOT NULL,
FOREIGN KEY(Patient_id) references Patient(Patient_id),
FOREIGN KEY(Physician_id) references Physician(employeeid)
);

insert into PATIENT_DIAGNOSIS(Diagnosis,Prescription,Patient_ID,Physician_id)
VALUES
('Hypertension','Lisinopril',1,2),
('Arthritis','Naproxen & Aspirin',4,17), 
('Anxiety Disorder','Fluoxetine',3,9),     
('Muscular Dystrophy','Corticosteroids',5,24),                            
('Asthma','Albuterol',2,2),        
('IgA Nephropathy','Budesonide',30,10),     
('Chronic Pain','Tramadol',6,7),    
('Acoustic neuroma','Radiation therapy',7,13),     
('Septic Shock','Corticosteroids:Hydrocortisone',8,25),   
('Kidney Stones','Ibuprofen, Acetaminophen',9,28),     
('Parkinsons Disease,Pramipexole','Ropinirole',10,19),  
('Chronic Obstructive Pulmonary Disease (COPD)','Fluticasone,Budesonide',11,5), 
('Neonatal Jaundice','Phototherapy',12,33),  
('Chronic Pain','Tramadol',13,3),       
('Gallstones','Cholecystectomy',14,18),        
('Type 1 Diabetes','Insulin',15,6),                                  
('Migraine','Triptans',16,19),      
('Tonsillitis','Penicillin VK',17,15),         
('Inflammatory Bowel Disease','Mesalamine',18,26),       
('Coronary Artery Disease','Aspirin',19,6),     
('Chronic Obstructive Pulmonary Disease (COPD)','Tiotropium',20,20),   
('Urinary Tract Infection (UTI)','Nitrofurantoin',21,28),    
('Attention Deficit Disorder','Dextroamphetamine',22,6),      
('Traumatic Brain Injury (TBI)','Propofol,Midazolam',23,25),             
('Neuropathic Pain','Amitriptyline',24,19),                  
('Chronic Obstructive Pulmonary Disease','Breathing exercises',25,24),      
('Overactive Bladder','Oxybutynin',26,28),             
('Sports Injuries','muscle relaxants',27,27),                
('Psoriasis','Methotrexate',28,6),                            
('Respiratory Distress Syndrome','Beractant',29,33),
('Coronavirus Disease 2019 (COVID-191)','Remdesivir',31,5),   
('Chronic Gastritis','Pantoprazole',32,18),      
('Generalized Anxiety Disorder (GAD)','Buspirone',33,2),    
('Sinusitis','Acetaminophen',34,13),     
('Burn Injuries','Acetaminophen',35,20),
('Osteoporosis','Calcitonin',36,21),
('Depression','Fluoxetine',37,9),
('Myasthenia Gravis','Pyridostigmine',38,30),
('Otitis Media','Amoxicillin',39,15);

select * from PATIENT_DIAGNOSIS;


#Procedure Table

CREATE TABLE procedures(
code INT PRIMARY KEY,
name VARCHAR(150) NOT NULL,
cost INT NOT NULL
);

INSERT INTO procedures(code,name,cost)
VALUES
(1,'X-ray-Chest',1000),
(2,'X-ray-Abdomen',1200),
(3,'X-ray-Skull',900),
(4,'X-ray-Spine',1500),
(5,'MRI-Brain',5000),
(6,'MRI-Spine',6000),
(7,'CT Scan-Abdomen',3000),
(8,'CT Scan-Pelvis',3500),
(9,'Ultrasound-Abdomen',700),
(10,'Ultrasound-Obstetric',2500),
(11,'Mammogram',1200),
(12,'Bone Density Scan (DEXA)',1800),
(13,'PET-CT Scan',5000),
(14,'Fluoroscopy - Upper GI Series',7000),
(15,'Fluoroscopy - Barium Enema',4500),
(16,'Nuclear Medicine - Thyroid Scan',450),
(17,'Angiography - Cerebral',800),
(18,'Interventional Radiology - Biopsy',700),
(19,'X-ray-Extremities',300),
(20,'MRI-Knee',4000);

select * from procedures;

#SQL QUERIES

#1. Write a query in SQL to obtain the name of the physician in alphabetical order. 
select name as PHYSICIAN_NAME from PHYSICIAN order by name;

#2. Write a query in SQL to obtain the fullname of the patients whose gender is male.
select concat(name,' ',surname) as Patients_Fullname,GENDER from Patient where Gender = 'MALE';

#3. Write a query to obtain the avg cost of all the medical procedures.
SELECT AVG(COST) as Average_cost FROM PROCEDURES;

#4 Write a query to obtain name and cost of the procedure whose cost is greater than 2000.
SELECT NAME as Procedure_Name,COST as Procedure_Cost  FROM PROCEDURES WHERE NOT COST < 2000;

#5. Write a query to update the name of the patient to Robert Fernandez having patientid as 5.
UPDATE PATIENT SET NAME = 'Robert',SURNAME = 'Fernandez' WHERE PATIENT_ID = 5;

SELECT * FROM PATIENT;

#6. Write a query to drop phone column from patient table.
ALTER TABLE Patient DROP phone;

SELECT * FROM PATIENT;

#7. Second maximum cost of medical procedure
SELECT NAME,MAX(COST) as Procedure_cost FROM PROCEDURES  GROUP BY name
					 ORDER BY Procedure_cost DESC LIMIT 1,1;

#Like Operator
#8. Write a query in SQL to obtain the name of the patients starting with letter A.
SELECT CONCAT(NAME,' ',SURNAME) AS FULL_NAME,GENDER FROM PATIENT WHERE CONCAT(NAME,' ',SURNAME) LIKE 'A%';

#9. Write a query in SQL to obtain the name of the patients whose third letter is M.
SELECT CONCAT(NAME,' ',SURNAME) AS FULL_NAME,GENDER FROM PATIENT WHERE CONCAT(NAME,' ',SURNAME) LIKE '__M%';

#10. Write a query in SQL to obtain the name of the patients whose name start with letter J and ends with Z.
SELECT CONCAT(NAME,' ',SURNAME) AS FULL_NAME,GENDER FROM PATIENT WHERE CONCAT(NAME,' ',SURNAME) LIKE 'J%Z';

#11. Write a query to obtain patient details having patient_id 11 to 20.
SELECT * FROM PATIENT LIMIT 10,10;

#JOINS
#12.  Write a query in SQL to obtain the name of the physicians who are the head of each department
select p.name as Doctor_name,d.dept_name from physician p inner join department d on p.employeeid = d.head;

#13. Write a query in SQL to obtain the name of the patients with their physicians by whom they got their preliminary treatement
select CONCAT(p.name,' ',p.SURNAME) as PATIENT_NAME,ph.NAME as PHY_WHO_DID_PRI_TREATMENT
FROM PATIENT p LEFT JOIN PHYSICIAN ph ON p.PRIMARY_CHECK = ph.EMPLOYEEID;

#14. Write a query in SQL to obtain the patient name from which physician they get primary_checkup and also mention the patient diagnosis with prescription.
SELECT PH.EMPLOYEEID,PH.NAME AS Physician_Name,PH.POSITION AS Designation,P.PATIENT_ID,CONCAT(P.NAME,' ',P.SURNAME) AS Patient_treated,P.GENDER,PD.DIAGNOSIS,PD.PRESCRIPTION
FROM PATIENT_DIAGNOSIS pd LEFT JOIN Physician ph
ON pd.Physician_id = ph.employeeid LEFT JOIN PATIENT P ON P.PATIENT_ID = PD.PATIENT_ID;

#SUBQUERY

#15. Write a query in SQL to obtain the maximum cost of the medical procedure.
SELECT NAME,COST FROM PROCEDURES WHERE COST IN (SELECT MAX(COST) FROM PROCEDURES);

#16. Write a query in SQL to obtain the details of patient who has diagnosed with chronic pain.
SELECT * FROM Patient WHERE patient_id IN (SELECT Patient_ID FROM PATIENT_DIAGNOSIS WHERE Diagnosis = 'Chronic Pain');

#17. Write a query in SQL to obtain the procedure name and cost whose cost is greater than the avg cost of all the procedure.
SELECT name as Procedure_name,cost as Procedure_cost FROM procedures
                     WHERE cost > (SELECT AVG(cost) FROM procedures);

#18. Write a query in SQL to obtain the procedure name and cost whose cost is less than the avg cost of all the procedure.
SELECT name as Procedure_name,cost as Procedure_cost
FROM procedures WHERE cost < (SELECT AVG(cost) FROM procedures);

#19. Write a query in SQL to obtain the physician name who are either head chief or senior in their respective department.
SELECT * FROM Physician WHERE position IN (SELECT position FROM Physician
                   WHERE position LIKE '%Senior%' OR position LIKE '%Head Chief%');

