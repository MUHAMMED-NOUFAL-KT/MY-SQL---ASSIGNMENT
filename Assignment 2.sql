create database Sales;
use sales;

# TABLE CREATION
create table Orders (Order_id int unique primary key,
Customer_name varchar(50) not null,
Product_category varchar(50),
Orderd_item varchar(50),
Contact_no int not null);

desc orders;

#1 ADD NEW COLUMN ORDER_QTY
alter table ORDERS ADD ORDER_QTY INT not NULL;
DESC ORDERS;

#2 TABLE RENAME
rename table ORDERS to SALES_ORDERS;

#3 INSERT 10 ROWS
insert into SALES_ORDERS (Order_id,Customer_name,Product_category,Orderd_item,Contact_no,ORDER_QTY) values
(1,'NOUFAL','ELECTRONICS','TV',97449856,1),
(2,'NOUFI','IT PRODUCTS','LAPTOP',97449859,5),
(3,'SUFAID','ELECTRONICS','FRIDGE',86067651,2),
(4,'ARUN','HOUSEHOLD','WASHINGPOWDER',95447856,10),
(5,'VISHNU','HOT FOOD','BIRIYANI',98778575,5),
(6,'HARIS','ELECTRONICS','WASHING MACHINE',88552211,2),
(7,'NAVAS','HOUSEHOLD','MOP',94478561,20),
(8,'SINSIYA','ELECTRONICS','KETTLE',85210357,5),
(9,'RAJESH','IT PRODUCTS','MOUSE',75967415,5),
(10,'AFSAL','ELECTRONICS','TORCH',85124567,15);

SELECT * FROM SALES_ORDERS;

#4 RETRIEVE CUSTOMER_NAME & ORDERED_ITEM
SELECT Customer_name,Orderd_item FROM SALES_ORDERS;

#5 USE UPDATE COMMAND
update SALES_ORDERS set Orderd_item = 'KEY BOARD' where order_id = 9;

select * from sales_orders;

#6 DELETE SALES_ORDER TABLE
drop table sales_orders;