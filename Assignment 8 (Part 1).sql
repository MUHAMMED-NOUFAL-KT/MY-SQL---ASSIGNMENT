use project;

select * FROM PERSON;
select * from country;

##1. Find the number of persons in each country--
select Country_Name,count(*)F_name from person group by country_name;

##2. Find the number of persons in each country sorted from high to low--
select Country_Name,count(F_name) as count from person group by Country_Name
 order by count DESC;
 
 ##3. Find out an average rating for Persons in respective countries if the average is greater than 3.0--
  select Country_Name,count(F_name) as count,avg(Rating) as Avg_Rating from person group by Country_Name having Avg_Rating>3.0;
 
 ##4 -Find the countries with the same rating as the USA. (Use Subqueries)--

 IN MY TABLE THERE IS NO COUNTRY WITH THE SAME RATING AS USA SO, I TOOK THE SAME RATING AS CANADA---
 
 select country_name,rating from person
 where Rating = (select Rating from person where country_name ='canada');
 
 ##5 -Select all countries whose population is greater than the average population of all nations--
 select avg(POPULATION) AS AVG_POPULATION FROM person;
 
 select COUNTRY_NAME,POPULATION FROM person
 WHERE Population > (select avg(Population) from person);
 
 