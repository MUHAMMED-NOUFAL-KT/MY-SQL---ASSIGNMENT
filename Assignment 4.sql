create database ASSIGNMENT;
USE ASSIGNMENT;
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
('Kannan','PR',1800000,4.7,NULL,NULL),
('Noufidha','KT',300000,3.2,10,'Brazil'),
('Akhil','SK',1500000,4.1,9,'Spain');

select * from Person;

##1 select distinct country from person table
select distinct Country_Name from person;

##2 select first name & last name from person table with alias
select F_Name as First_name, L_Name as Last_name from person;

##3 First all person with arating greater than 4.0
select * from person where rating>4.0;

##4 Countries with population greater than 10 lakhs.
select * from person where population>=1000000;

##5 find person who is from USA and rating greater than 4.5
select * from person where country_name ='USA' and rating>4.5;

##6 find all person where country is null
select * from person where country_name is null;

##7 find all persons from the countries USA,Canada,UK
select * from person where country_name in('USA','Canada','UK');

##8 find all persons not from the countries India & Australia
select * from person where country_name not in	('India','Australia');

##9 find all countries with population between 5 lakhs and 20 lakhs
select * from person where population between 500000 and 2000000;

##10 find all countries whose name not start with 'C'
select * from country where country_name not like 'C%';


