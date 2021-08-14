-- 001 Revising the Select Query I

Select * from City where Countrycode = "USA" and population > 100000;

-- 002 Revising the Select Query II

Select NAME from City where Countrycode = "USA" and population > 120000;

-- 003 Select All

Select * from city;

-- 004 Select By ID

Select * from City where id = 1661;

-- 005 Japanese Cities' Attributes

Select * from City where Countrycode = "JPN";

-- 006 Japanese Cities' Names

Select Name from City where Countrycode = "JPN";

-- 007 Weather Observation Station 1

Select city, state from station;

-- Weather Observation Station 3

select distinct(city) from station where id IN(SELECT id FROM station WHERE id%2 = 0);

