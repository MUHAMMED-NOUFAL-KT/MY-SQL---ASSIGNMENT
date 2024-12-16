CREATE database Triggers;
USE TRIGGERS;

#1. Create a table named teachers with fields id, name, subject, experience and salary and insert 8 rows--
Create table Teachers(Id int auto_increment primary key,
name varchar(25), subject varchar(25), experiance int,salary int);

desc TEACHERS;

insert into Teachers (name,subject,experiance,salary)
values('Noufal','IT',11,50000),
('Noufidha','English',8,40000),
('Sinsiya','Arabic',5,35000),
('Ruba','Malayalam',12,60000),
('Anshad','Accounting',15,75000),
('Akhila','Biology',5,25000),
('Abaya','Business',8,42000),
('Anoop','Politics',5,28000);

select * FROM TEACHERS;

##2.-- Create a before insert trigger named before_insert_teacher*
that will raise an error “salary cannot be negative” if the salary inserted to the table is less than zero.--

delimiter $$
Create trigger before_insert_teacher
before insert on teachers for each row
begin
if new.salary < 0 then
signal sqlstate '45000' set message_text ='salary cannot be negative';
end if;
end $$

delimiter ;

insert into teachers values(9,'Aparna','Physics',5,-5000);

##3.Create an after insert trigger named after_insert_teacher that inserts a row with 
## teacher_id,action, timestamp to a table called teacher_log when a new entry gets inserted to the teacher 
## table. tecaher_id -> column of teacher table, action -> the trigger action, timestamp -> time at which the new row has got inserted.

##create a table named teacher_log--##
create table teacher_log
 (log_id int auto_increment key,
 teacher_id int,
 action varchar(50),
 timestamp datetime);
 
  desc teacher_log;
  
DELIMITER $$
create trigger after_insert_teacher
After insert on teachers
for each row
begin
insert into teacher_log (log_id,teacher_id,action,timestamp)
values (New.id,'INSERT',NOW());
END $$
DELIMITER ;

insert into teachers 
values ('Noushad','Eng',11,50000);

select * FROM teacher_log;

##4. Create a before delete trigger that will raise an error when you try to delete 
 ## a row that has experience greater than 10 years.
 
 Delimiter $$
 create trigger before_dlt_Exp
 before delete on teachers for each row
 begin
 if old.experiance > 10 then
 signal sqlstate '45000' set message_text = 'Cannot delete with more than 10 year experianced teachers';
 end if;
 end $$
Delimiter $$

delete from teachers where ID =1;

##5.Create an after delete trigger that will insert a row to teacher_log table when that row is deleted from teacher table##

Delimiter $$
create trigger after_delete_trigger
after delete on teachers for each row
begin
insert into teacher_log
where new.teacher_id =old.ID;
END $$
 DELIMITER ;