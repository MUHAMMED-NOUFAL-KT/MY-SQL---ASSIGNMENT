create database PROJECT;
USE PROJECT;
## Create Table Country
create table Country(Id int auto_increment primary key,
Country_Name varchar(75) not null,
Population int not null,
Area varchar(75) not null);

Desc country;

## Creating table Persons
create table Person (Id int auto_increment primary key,
F_Name varchar(50) not null,
L_Name varchar(50),
Population int,
Rating decimal(2,1) check (Rating<10),
Country_id int,
Country_Name varchar(75),
foreign key (Country_id) references Country(Id));

desc person;

## Inserting Data into Country

insert into Country (Country_Name,Population,Area) values
('India','35000000','Asia'),
('USA',1570000,'America'),
('UK',1210000,'Europe'),
('Pakistan',2170000,'Asia'),
('Canada',8500000,'Europr'),
('Australia',6700000,'America'),
('Nepal',76000000,'Asia'),
('Germany',98750000,'Europe'),
('Spain',756500000,'Europe'),
('Brazil',75000000,'America');

select * from country;

## Inserting Data into Persons

insert into Person (F_Name,L_Name,Population,Rating,Country_id,Country_Name) values
('Noufal','KT',2200000,3.5,1,'India'),
('Arun','PP',450000,3.9,5,'Canada'),
('Anjana','RS',375000,2.5,1,'India'),
('Anoop','KC',1200000,4.9,2,'USA'),
('Siraj','KR',490000,2.7,3,'UK'),
('Robin','MR',1500000,3.1,6,'Australia'),
('Nithin','SR',1200000,4.3,2,'USA'),
('Kannan','PR',1800000,4.7,1,'India'),
('Noufidha','KT',300000,3.2,10,'Brazil'),
('Akhil','SK',1500000,4.1,9,'Spain');

select * from Person;

 #1 -Write an SQL query to print the first three characters of Country_name from the Country table.
 select left(Country_name,3) as Country_Code from country ;
 
 #2 -Write an SQL query to concatenate first name and last name from Persons table.
 select concat(F_Name,' ',L_Name) as Full_Name from person;
 
 #3 -Write an SQL query to count the number of unique country names from Persons table
 select count(distinct Country_name) as countries from person;
 
 #4 -Write a query to print the maximum population from the Country table.
 select max(population) as max_ppls from country;
 
 #5 -Write a query to print the minimum population from Persons table.
 select min(population) as Min_ppl from person;
 
 #6 -Insert 2 new rows to the Persons table making the Lname NULL.
 insert into person (F_Name,L_Name,Population,Rating,Country_id,Country_Name) values
 ('Anwar',null,2700000,4.4,9,'Spain'),
 ('Basil',null,1250000,3.9,10,'Brazil');
 
create database ENTRI;
USE ENTRI;
## Create Table Country
create table Country(Id int auto_increment primary key,
Country_Name varchar(75) not null,
Population int not null,
Area varchar(75) not null);

Desc country;

## Creating table Persons
create table Person (Id int auto_increment primary key,
F_Name varchar(50) not null,
L_Name varchar(50) not null,
Population int,
Rating decimal(2,1) check (Rating<10),
Country_id int,
Country_Name varchar(75),
foreign key (Country_id) references Country(Id));

desc person;

## Inserting Data into Country

insert into Country (Country_Name,Population,Area) values
('India','35000000','Asia'),
('USA',1570000,'America'),
('UK',1210000,'Europe'),
('Pakistan',2170000,'Asia'),
('Canada',8500000,'Europr'),
('Australia',6700000,'America'),
('Nepal',76000000,'Asia'),
('Germany',98750000,'Europe'),
('Spain',756500000,'Europe'),
('Brazil',75000000,'America');

select * from country;

## Inserting Data into Persons

insert into Person (F_Name,L_Name,Population,Rating,Country_id,Country_Name) values
('Noufal','KT',2200000,3.5,1,'India'),
('Arun','PP',450000,3.9,5,'Canada'),
('Anjana','RS',375000,2.5,1,'India'),
('Anoop','KC',1200000,4.9,2,'USA'),
('Siraj','KR',490000,2.7,3,'UK'),
('Robin','MR',1500000,3.1,6,'Australia'),
('Nithin','SR',1200000,4.3,2,'USA'),
('Kannan','PR',1800000,4.7,1,'India'),
('Noufidha','KT',300000,3.2,10,'Brazil'),
('Akhil','SK',1500000,4.1,9,'Spain');

select * from Person;

 #1 -Write an SQL query to print the first three characters of Country_name from the Country table.
 select left(Country_name,3) as Country_Code from country ;
 
 #2 -Write an SQL query to concatenate first name and last name from Persons table.
 select concat(F_Name,' ',L_Name) as Full_Name from person;
 
 #3 -Write an SQL query to count the number of unique country names from Persons table
 select count(distinct Country_name) as countries from person;
 
 #4 -Write a query to print the maximum population from the Country table.
 select max(population) as max_ppls from country;
 
 #5 -Write a query to print the minimum population from Persons table.
 select min(population) as Min_ppl from person;
 
 #6 -Insert 2 new rows to the Persons table making the Lname NULL.
 insert into person (F_Name,L_Name,Population,Rating,Country_id,Country_Name) values
 ('Anwar',null,2700000,4.4,9,'Spain'),
 ('Basil',null,1250000,3.9,10,'Brazil');
 select * from PERSON;
 
 # write another query to count Lname from Persons table.
 select count(L_NAME) as count_L_Name from person;
 
 #7 -Write a query to find the number of rows in the Persons table.
 select count(*) from person;
 
 #8 -Write an SQL query to show the population of the Country table for the first 3 rows.
 select population,country_name from country limit 3;
 
 #9 -Write a query to print 3 random rows of countries.
 select * from country order by rand() limit 3;
 
 #10 -List all persons ordered by their rating in descending order.
 select * from person order by rating desc;
 
 #11 -Find the total population for each country in the Persons table.
 
 select Country_name, sum(Population) AS Total_Population from person group by Country_name;
 
 #12 -Find countries in the Persons table with a total population greater than 50,000
select Country_name, sum(Population) AS Total_Population from person group by Country_name having Total_Population>=500000;

#13 -List the total number of persons and average rating for each country, 
# but only for countries with more than 2 persons, ordered by the average rating in ascending order.
select Country_name ,count(F_Name) as Count_of_People,avg(rating) as Avg_Rat from person group by country_name
 having count(F_Name)>2 order by Avg_Rat;

 