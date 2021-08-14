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

-- 008 Weather Observation Station 3

select distinct(city) from station where id IN(SELECT id FROM station WHERE id%2 = 0);

-- 009 Weather Observation Station 4

select (Count(City) - Count(Distinct(City))) from Station;

-- 010 Weather Observation Station 5

select city, length(city) from station
order by length(city),city asc
limit 1;
select city, length(city) from station
order by length(city) desc
limit 1;

-- 011 Weather Observation Station 6

Select Distinct(city) from  station where city REGEXP '^a.*|^e.*|^i.*|^o.*|^u.*'

-- 012 Weather Observation Station 7

Select Distinct(city) from  station where city REGEXP '.*[aeiou]$'

-- 013 Weather Observation Station 8

Select Distinct(city) from  station where city REGEXP '^[aeiou].*[aeiou]$'

-- 014 Weather Observation Station 9

Select Distinct(city) from  station where city REGEXP '^[^aeiou].*'

-- 015 Weather Observation Station 10

Select Distinct(city) from  station where city REGEXP '.*[^aeiou]$'

-- 016 Weather Observation Station 11

Select Distinct(city) from  station where city REGEXP '(^[^aeiou].*)|(.*[^aeiou]$)'

-- 017 Weather Observation Station 12

Select Distinct(city) from  station where city REGEXP '^[^aeiou].*[^aeiou]$'

-- 018 Higher Than 75 Marks

Select name from students where marks>75 order by right(name,3), id;

-- 019 Employee Names

Select name from Employee order by name;

-- 020 Employee Salaries

Select name from employee where salary > 2000 and months<10 order by employee_id;

-- 021 Type of Triangle

SELECT CASE             
            WHEN A + B > C AND B + C > A AND A + C > B THEN
                CASE 
                    WHEN A = B AND B = C THEN 'Equilateral'
                    WHEN A = B OR B = C OR A = C THEN 'Isosceles'
                    ELSE 'Scalene'
                END
            ELSE 'Not A Triangle'
        END
FROM TRIANGLES;

-- 022 The PADS

select concat(
    Name,'(',Substring(Occupation,1,1),')'
    ) from occupations order by name;
Select concat(
    'There are a total of ',count(occupation),' ',lower(occupation),'s.'
    ) as total 
from occupations 
group by occupation 
order by COUNT(OCCUPATION), OCCUPATION; 

-- 023 Occupations

set @index1=0, @index2=0, @index3=0, @index4=0;
select min(Doctor), min(Professor), min(Singer), min(Actor)
from(
SELECT case 
        when Occupation='Doctor' then (@index1:=@index1+1)
        when Occupation='Professor' then (@index2:=@index2+1)
        when Occupation='Singer' then (@index3:=@index3+1)
        when Occupation='Actor' then (@index4:=@index4+1) end as RowNumber,
        
        case when Occupation='Doctor' then Name end as Doctor,
        case when Occupation='Professor' then Name end as Professor,
        case when Occupation='Singer' then Name end as Singer,
        case when Occupation='Actor' then Name end as Actor
    
FROM OCCUPATIONS order by name) aliased group by RowNumber;

-- 024 Binary Tree Nodes

SELECT 
        N,
        IF(P IS NULL, 'Root', 
           IF((SELECT COUNT(P) AS C FROM BST GROUP BY P HAVING P = N) > 0, 'Inner', 
              'Leaf')) AS CATEGORY
FROM BST ORDER BY N;

-- 025 New Companies

-- To do 

-- 026 Revising Aggregations - The Count Function

Select count(name) from city where population>100000;

-- 027 Revising Aggregations - The Sum Function

Select sum(population) from city where district = "California";

-- 028 Revising Aggregations - Averages

Select avg(population) from city where district = "California";

-- 029 Average Population

Select round(avg(population)) from city;

-- 030 Japan Population

Select sum(population) from city where countrycode = "JPN";

-- 031 Population Density Difference

Select max(population) - min(population) from city;

-- 032 The Blunder

SELECT CEIL((AVG(salary)) - (AVG(REPLACE(salary, '0', '')))) FROM employees;

-- 033 Top Earners

Select 
    max(salary*months), 
    count(*) from employee 
group by 
    salary 
HAVING 
    MAX(months * salary) = (SELECT MAX(months * salary) from employee);

-- 034 Weather Observation Station 2

select round(sum(lat_n),2), round(sum(long_w),2) from station;

-- 035 Weather Observation Station 13

select truncate(sum(lat_n),4) from station where lat_n between 38.7880 and 137.2345;

-- 036 Weather Observation Station 14

Select truncate(max(lat_n),4) from station where lat_n < 137.2345;

-- 037 Weather Observation Station 15

Select 
    round(long_w,4) 
from 
    station
where 
    lat_n = (select max(lat_n) from station where lat_n < 137.2345);

-- 038 Weather Observation Station 16

Select round(min(lat_n),4) from station where lat_n > 38.7780;

-- 039 Weather Observation Station 17

Select 
    round(long_w,4) 
from
    station 
where lat_n = (Select min(lat_n) from station where lat_n>38.7780);

-- 040 Weather Observation Station 18

Select 
    round((abs(min(lat_n)-max(lat_n)) + abs(min(long_w) - max(long_w))), 4) 
from station;

-- 041 Weather Observation Station 19

Select 
    round(sqrt(power((max(lat_n)-min(lat_n)),2) + power((max(long_w)-min(long_w)),2)),4) 
From station;

-- 042 Weather Observation Station 20

Set @n := 0;
Select count(*) from station into @total;

Select round(avg(median.lat_n),4) from (Select @n := @n +1 as indexval, lat_n from station order by lat_n) median where
Case

when mod(@total,2) = 0
then median.indexval in (@total/2, @total/2+1)
else median.indexval = (@total+1)/2

end;

-- 043 Population Census

Select 
    sum(city.population) 
from 
    city
    inner join country on city.countrycode = country.code 
where 
    country.continent = "Asia";

-- 044 African Cities

Select 
    city.name 
from 
    city 
    inner join country on city.countrycode = country.code 
where 
    country.continent = "Africa";

-- 045 Average Population of Each Continent

Select
    Country.Continent, 
    floor(Avg(city.population)) 
from 
    city 
    inner join country on city.countrycode = country.code 
group by 
    country.continent;

-- 046 The Report

Select 
    if(grade<8, NULL, Name), 
    Grade, 
    Marks 
from 
    Students 
    inner join Grades 
where 
    marks between Min_mark and Max_mark 
order by 
    grade desc, name;

-- 047 Top Competitors

Select 
    hackers.hacker_id as hid, 
    hackers.name as name
from submissions 
    inner join hackers on submissions.hacker_id = hackers.hacker_id
    inner join challenges on submissions.challenge_id = challenges.challenge_id
    inner join difficulty on challenges.difficulty_level = difficulty.difficulty_level
    and submissions.score = difficulty.score
group by 
    hackers.hacker_id, hackers.name
having count(hackers.hacker_id) > 1
order by
    count(hackers.hacker_id) desc, 
    hid asc
;

-- 048 Ollivander's Inventory

Select 
    w1.id,
    wp1.age,
    w1.coins_needed,
    power
from 
    Wands w1 
    join wands_property wp1 on w1.code = wp1.code
where 
    wp1.is_evil = 0 and coins_needed = (Select min(coins_needed)
from 
    Wands w2
    join wands_property wp2 on w2.code = wp2.code
where 
    wp2.age = wp1.age and w2.power = w1.power)
order by
    w1.power desc, wp1.age desc;

-- 049 Challenges

Select 
    challenges.hacker_id, 
    hackers.name, 
    count(challenges.challenge_id) as challengecount
from 
    hackers 
    inner join challenges on challenges.hacker_id = hackers.hacker_id 
group by 
    challenges.hacker_id, 
    hackers.name
having
    challengecount = 
        (Select max(countTable.h_count) from (
            Select count(hacker_id) as h_count from challenges group by hacker_id order by hacker_id) countTable )
            
            or

            challengecount in 
            (select countTable2.cnt from
            (select count(*) as cnt from challenges group by hacker_id) countTable2 group by countTable2.cnt having count(countTable2.cnt) = 1
             )
            
order by 
    challengecount DESC, 
    challenges.hacker_id;

-- 050 Contest Leaderboard

SELECT HACKER_ID, NAME, SUM(CHALLENGE_MAXIMUM_SCORE) AS HACKER_TOTAL_SCORE 
FROM
(
SELECT 
        H.HACKER_ID AS HACKER_ID,
        H.NAME AS NAME,
        MAX(S.SCORE) AS CHALLENGE_MAXIMUM_SCORE
FROM 
    SUBMISSIONS S
INNER JOIN
    HACKERS H ON S.HACKER_ID = H.HACKER_ID
GROUP BY 
    S.CHALLENGE_ID, 
    H.NAME, 
    H.HACKER_ID
) ALIASTABLE
GROUP BY 
    HACKER_ID, 
    NAME 
HAVING 
    SUM(CHALLENGE_MAXIMUM_SCORE) != 0
ORDER BY 
    SUM(CHALLENGE_MAXIMUM_SCORE) DESC, 
    HACKER_ID ASC;

-- 051 SQL Project Planning

-- to do

-- 052 Placements

Select 
    Students.name 
from 
    Students 
    join friends on students.id = friends.id 
    join packages p1 on friends.id = p1.id 
    join packages p2 on p2.id = friends.friend_id
where 
    p1.salary < p2.salary 
order by
    p2.salary;

-- 053 Symmetric Pairs

Select
    t1.X,
    t1.Y 
from
    functions t1
    join functions t2 on t1.X = t2.Y and t1.Y=t2.X
Group by 
    t1.X,
    t1.Y
having
    count(t1.x) > 1 or t1.X < t1.Y
order by
    X;

-- 054 Interviews

-- to do

-- 055 15 Days of Learning SQL

-- to do

-- 056 Draw The Triangle 1

set @number = 21;
select 
    repeat('* ', @number := @number - 1)
from
    information_schema.tables;

-- 057 Draw The Triangle 2

set @number = 0;
select
    repeat('* ', @number := @number + 1)
from
    information_schema.tables
where
    @number<20;

-- 058 Print Prime Numbers

USE INFORMATION_SCHEMA;

SET @NUM1 = 1;
SET @NUM2 = 1;
SET @PRIME_OUTPUT = "";

SELECT
        SUBSTR(O, 1, LENGTH(O)-1) AS FO
FROM
(
    SELECT
            @PRIME_OUTPUT := CONCAT(@PRIME_OUTPUT, N2, '&') AS O
    FROM 
    (
        SELECT 
                N2
        FROM 
        (
            SELECT 
                    N1,
                    N2
            FROM
            (
                SELECT 
                        @NUM1 := @NUM1 + 1 AS N1
                FROM TABLES T1, TABLES T2
                LIMIT 1000
            ) A
            CROSS JOIN
            (
                SELECT 
                        @NUM2 := @NUM2 + 1 AS N2
                FROM TABLES T1, TABLES T2
                LIMIT 1000
            ) B
            WHERE N2 % N1 = 0
        ) ALIAS_TABLE
        GROUP BY N2 HAVING(COUNT(N2) = 1)
    ) A
) B 
ORDER BY LENGTH(FO) DESC LIMIT 1;