create database Product;
 use product;
 
 create table Customer
 (customer_id int auto_increment primary key,
 F_Name varchar (50),
 L_name varchar (25),
 Email varchar (50),
 Phone_No int,
 Address varchar(75),
 City varchar(30),
 State varchar (25),
 Zip_Code int,
 Country varchar(30));
 
 desc customer;
 
 insert into Customer (F_Name,L_name,Email ,Phone_No,Address,City,State,Zip_Code,Country) values
 ('Noufal','KT','noufal123@gmail.com',31008773,'House no 15','California','USA',255,'USA'),
 ('Sinsiya','AP','sinu456@gmail.com',7896541,'House no 51','Kochi','Kerala',456,'India'),
 ('Noufidha','KT','noufi987@gmail.com',456123,'House no 56','California','USA',275,'USA'),
 ('Shakir','OP','shakir900@gmail.com',756324,'House no 85','Calicut','Kerala',755,'India'),
 ('Ruba','KK','ruba097@gmail.com',756148,'House no 98','FUJI','Fujiyan',355,'Chaina'),
 ('Shoukath','KT','shouku123@gmail.com',31008773,'House no 54','California','USA',254,'USA'),
 ('Sonam','AP','sonu@gmail.com',7896771,'House no 57','Kadmandu','Pokari',476,'Nepal'),
 ('Noushi','KT','noushi987@gmail.com',456153,'House no 156','California','USA',275,'USA'),
 ('Shayam','OP','shyam909@gmail.com',756314,'House no 185','Singolu','colombo',755,'srilanka'),
 ('Roma','KK','roma097@gmail.com',756178,'House no 198','California','USA',355,'USA');
 
 
 select * from Customer;
 
 ##1 -Create a view named customer_info for the Customer table that displays Customer’s Full name and email address--
 ## Then perform the SELECT operation for the customer_info view--
 create view Customer_info as
 (select concat(F_Name," ",L_Name) as Full_Name,Email from Customer);
 
 select * from customer_info;
 
 ##2 -Create a view named US_Customers that displays customers located in the USA--
 create view US_Customers as
 (select * from customer where Country ='USA');
 
 select * FROM us_customers;
 
 ##3 -Create another view named Customer_details with columns full name(Combine first_name and last_name), email, phone_no, and state--
 
 create view Customer_Details as
 (select concat(F_name," ",L_Name) as Full_Name,Email,Phone_No,State from customer);
 
 Select * from Customer_Details;
 
 ##4 -Update phone numbers of customers who live in California for Customer_details view--
 alter view Customer_Details as
  (select concat(F_name," ",L_Name) as Full_Name,Email,Phone_No,State,City from customer);
  
  select * from customer_Details;
  
  Update customer_Details
  set Phone_No =99999 where City='California';
  
  ##5 -Count the number of customers in each state and show only states with more than 5 customers--
  select State,count(*) as Total_Cust from Customer
group by State HAVING count(*)>=5;

##6 -Write a query that will return the number of customers in each state, based on the "state" column in the "customer_details" view--
select STATE,count(*) AS Tot_Cus from customer_details
group by state;

##7 -Write a query that returns all the columns from the "customer_details" view, sorted by the "state" column in ascending order--
select * from customer_details order by state ASC;
