show databases;

use world_innodb;

select name,population from city where name = "portland";

Select name, population from country order by population asc limit 10;

Select count(*) from countrylanguage where percentage > 50;

Select count(*) from city where population < 30000;

Select count(*) from country where indepYear > 1900;

select language from countrylanguage;

select countrycode from countrylanguage;

select * from countrylanguage where countrycode = "usa";

select continent from country;

select name, capital from country where continent = "south america";

select * from countrylanguage where isofficial = "Greek" or "hebrew";

select name from country;

Select count(*) from country;

Select count(*) from city;

select name from city where name like "New%";

select name from country where name like "%z%";

select language from countrylanguage;

Select name, population, surfaceArea from country where continent = "Africa"
order by SurfaceArea desc limit 10;

Select name, population from city where countrycode = "usa"
order by population desc limit 10;
