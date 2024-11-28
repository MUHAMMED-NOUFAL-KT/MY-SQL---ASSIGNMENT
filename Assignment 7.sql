use project;

## 1 --Add a new column called DOB in Persons table with data type as Date
alter table person 
add DOB date;

DESC PERSON;

SELECT * FROM PERSON;

update person
set DOB ='2000-04-01' where Id=1;
update person
SET DOB ='1993-10-24' Where Id=2;
update person
SET DOB ='1995-05-14' Where Id=3;
update person
set DOB ='2010-03-10' Where Id=4;
update person
set DOB ='2005-10-22' where Id=5;
update person
set DOB ='1999-01-15' where Id=6;
update person
set DOB ='2020-10-15' where Id=7;
update person
set DOB ='2002-05-25' where Id=8;
update person
set DOB ='1998-12-31' where Id=9;
update person
set DOB ='2012-10-24' where Id=10;
update person
set DOB ='2000-01-01' where Id=11;
update person
set DOB ='2022-03-15' where Id=12;

##2-Write a user-defined function to calculate age using DOB--
DELIMITER $$
create function AGE(DOB date)
returns int
deterministic
begin
declare AGE int;
set AGE =timestampdiff(YEAR,DOB,CURRENT_DATE());
return AGE;
end $$

DELIMITER ;

##3 --Write a select query to fetch the Age of all persons using the function that has been created--
select AGE ('2000-04-01'),
AGE ('1993-10-24'),
AGE ('1995-05-14'),
AGE ('2010-03-10'),
AGE ('2005-10-22'),
AGE ('1999-01-15'),
AGE ('2020-10-15'),
AGE ('2002-05-25'),
AGE ('1998-12-31'),
AGE ('2012-10-24'),
AGE ('2000-01-01'),
AGE ('2022-03-15');

##4 --Find the length of each country name in the Country table--
select COUNTRY_NAME ,length(COUNTRY_NAME) AS LENGTH FROM country;

##5 --Extract the first three characters of each country's name in the Country table--
select COUNTRY_NAME,left(COUNTRY_NAME,3) AS FIRST_THREE FROM country;

##6 -Convert all country names to uppercase and lowercase in the Country table--
select COUNTRY_NAME,ucase(COUNTRY_NAME) AS UPPER_CASE,lcase(COUNTRY_NAME) AS LOWER_CASE FROM country;



