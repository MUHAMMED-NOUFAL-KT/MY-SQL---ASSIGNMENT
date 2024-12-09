Create database Assignment9;
use Assignment9;

create table Workers (Worker_Id int auto_increment primary key,
First_Name varchar(25),
Last_Name varchar(25),
Salary int,
JoiningDate datetime,
Department varchar(25));

desc Workers;

insert into Workers (First_Name,Last_Name,Salary,JoiningDate,Department)
values ('Noufal','KT',25000,'2008-11-11 13:23:44','IT'),
('Sinsiya','AP',50000,'2020-11-09 15:45:21','Admin'),
('Noufidha','KT',35000,'2018-01-10 08:23:44','Accounts'),
('Siyana','P',15000,'2022-02-02 10:48:21','IT'),
('Sakkeena','KR',75000,'2024-10-10 17:28:44','IT'),
('Ruba','VP',5000,'2021-11-09 09:45:21','Admin'),
('Shakir','KP',15000,'2023-01-11 06:23:44','Accounts'),
('Safvan','TK',45000,'2024-01-01 14:48:21','Admin'),
('Shoukath','PV',75000,'2023-12-31 11:25:44','IT'),
('Jasir','VP',12000,'2024-10-10 18:46:21','Accounts');

select * from workers;

##1. Create a stored procedure that takes in IN parameters for all the columns in the Worker table 
## and adds a new record to the table and then invokes the procedure call---##

## 1.A --Create Procedure to take all coloumns by using IN###
DELIMITER ##
create procedure Get_WorkerData (IN Employee_id int)
begin
 select * from Workers where Worker_Id = Employee_id;
End ##

Delimiter ; 

call Get_workerData (3);

## 1.B --Insert Data Through procedure
Delimiter %%
create procedure Add_New (In Worker_ID int,IN First_Name varchar(25),Last_Name varchar(25),Salary int,JoiningDate datetime,
Department varchar(25))
begin
insert into Workers values(Worker_ID,First_Name,Last_Name,Salary,JoiningDate,Department);
end %%

Delimiter ;

call Add_New (11,'Anwar','R',100000,'2022-10-10 07:45:21','Admin');

##2 - Write stored procedure takes in an IN parameter for WORKER_ID and an OUT parameter for SALARY--
It should retrieve the salary of the worker with the given ID and returns it in the p_salary parameter. Then make the procedure call###

delimiter ##

create procedure p_salary (in Staff_ID INT)
begin
select Salary from workers where Staff_ID = Worker_Id;
End ##

Delimiter ;

call p_salary (8);

##3 -Create a stored procedure that takes in IN parameters for WORKER_ID and DEPARTMENT. 
It should update the department of the worker with the given ID. Then make a procedure call##

Delimiter %%
create procedure Update_Dep (In Staff_ID INT,IN Staff_Department varchar(25))
begin 
update Workers set Department = Staff_Department where Worker_ID = Staff_ID;
End %%

delimiter ;
	
Call Update_Dep (1,'Public Relation');

##4 -Write a stored procedure that takes in an IN parameter for DEPARTMENT and an OUT parameter for p_workerCount.##
 ## It should retrieve the number of workers in the given department and returns it in the p_workerCount parameter. Make procedure call--
 
 Delimiter $$
 create procedure p_workerCount1 (in Department_Name varchar(25),out worker_count int)
 begin
 select count(*) INTO worker_count from Workers where Department = Department_Name;
 End $$
 Delimiter ;
 
 set @worker_count= 0;
 call p_workerCount1 ('Accounts',@worker_count);
 select @worker_count as worker_count;
 
 ##5 -  Write a stored procedure that takes in an IN parameter for DEPARTMENT and an OUT parameter for p_avgSalary. 
 ## It should retrieve the average salary of all workers in the given department and returns it in the p_avgSalary parameter 
 ## and call the procedure.
 
 delimiter //
 create procedure p_avgSalary (in Department_name varchar(25),out avg_salary int)
 begin
 select avg(salary) into avg_salary from workers where Department = Department_name;
 end //
 
delimiter ;

set @avg_salary = 0;
call p_avgSalary ('IT',@avg_salary);
select @avg_salary;
 