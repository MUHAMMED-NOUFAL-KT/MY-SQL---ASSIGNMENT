use sales;
create table Managers (Manager_id int unique primary key,
First_Name varchar(50) not null,
Last_Name varchar(50),
DOB date,
Age int check (age<=60),
Last_Update date,
Gender char(1),
Department varchar(30),
Salary int not null);

Desc Managers;

# 1 Insert 10 Rows
use sales;
insert into Managers values
(1,'NOUFAL','KT','1993-10-24',30,'2024-11-10','M','IT',50000),
(2,'NOUFI','KT','2000-04-01',24,'2024-10-10','F','ACCOUNTS',30000),
(3,'SUFAID','V','1998-08-02',26,'2024-01-03','M','ADMIN',25000),
(4,'ARUN','PS','1999-08-02',25,'2024-10-10','M','IT',44000),
(5,'VISHNU','KR','2000-01-01',24,'2024-05-01','M','ADMIN',8000),
(6,'HARIS','AP','1900-10-02',34,'2024-01-01','M','GARMENTS',45000),
(7,'NAVAS','P','2000-02-15',24,'2024-04-15','M','ACCOUNTS',33000),
(8,'SINSIYA','KP','2000-01-04',24,'2024-5-15','F','ACCOUNTS',60000),
(9,'AALIYA','MR','2002-05-01',22,'2024-09-12','F','ADMIN',22000),
(10,'AFSAL','VP','2004-06-19',20,'2024-05-09','M','GARMENTS',5000);

select * from managers;

# 2 Retrieve Name,DOB & Manger_id
select First_Name,DOB,Manager_id from managers;

# 3 Annual income of all managers
select Manager_id,First_Name,Salary*12 as 'Annual salary' from Managers;

# 4 Show all records except AALIYA
select * FROM MANAGERS WHERE First_Name<>'AALIYA';

# 5 Display Mangers details works in IT and salary >25000
select * from managers where department ='IT' AND SALARY>=25000;

# 6 Managers salary between 10000 & 35000
select * from managers where salary between 10000 and 35000;


