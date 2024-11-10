create database SCHOOL;
USE SCHOOL;

# Create Table CODE 

create table STUDENTS(
Roll_No INT auto_increment primary key,
Student_Name varcharacter(50) not null,
Marks int check (marks>0),
Grade char(1) check (Grade in ('A','B','C')));

desc STUDENTS;

# data insert 

insert into students (Student_Name,Marks,Grade)
values('NOUFAL',99,'A'),
('SINSIYA',95,'A'),
('NOUFI',50,'B'),
('SAKEENA',25,'C'),
('RUBA',100,'A');

#1 SELECT COMMAND
select * from STUDENTS;

#2 ADD COLUMN 
alter table STUDENTS ADD CONTACT int NOT null;

#3 REMOVE GRADE COLUMN
alter table STUDENTS drop GRADE;

#4 TABLE RENAME 
rename table STUDENTS TO CLASSTEN;
use school;

#5 DELETE ALL ROWS
truncate CLASSTEN;

#6 Remove table
drop table CLASSTEN;