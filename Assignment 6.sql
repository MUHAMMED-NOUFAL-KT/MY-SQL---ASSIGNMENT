use project;

## 1 -- Perform inner join ,left join & Right Join Function

## Inner Join
select person.F_Name,person.Country_Name,country.Area,country.Population FROM person inner join country ON
country.Id = person.Id;

## Left Join
select person.F_Name,person.Country_Name,country.Area FROM person left join country ON
country.Id = person.Id;

## Right Join
select person.Country_Name,country.Population FROM person right join country ON
country.Id = person.Id;

## 2 -List all distinct country names from both country and Person Tables-
select Country_Name from country
union
select Country_Name from person;

##3 - select all country names from both tables inbcluding duplicate
select Country_Name from country
union all 
select Country_Name from person;

##4 - Round the ratings of all persons to the nearest integer in the person table
select round(rating) as New_Rating from person;