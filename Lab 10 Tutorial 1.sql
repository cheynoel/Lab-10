--Tutorial 1

SELECT name FROM world
  WHERE name LIKE 'Y%';
--Displays countries whose names start with a Y

SELECT name FROM world
  WHERE name LIKE '%y';
--Displays countries whose names end with a y

SELECT name FROM world
  WHERE name LIKE '%x%';
--Displays countries whose names contain an x

SELECT name FROM world
  WHERE name LIKE '%land';
--Displays countries whose names start with land

SELECT name FROM world
  WHERE name LIKE 'C%ia';
--Displays countries whose names start with a C and end with ia

SELECT name FROM world
  WHERE name LIKE '%oo%';
--Displays countries whose names contain 'oo'

SELECT name FROM world
  WHERE name LIKE '%a%a%a%';
--Displays countries whose names contain 3 a's

SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name;
--Displays countries whose names who have a 't' as its second letter and is ordered by name

SELECT name FROM world
 WHERE name LIKE '%o__o%';
--Displays countries whose names contain 2 o's with 2 spaces sepereating them

SELECT name FROM world
 WHERE name LIKE '____';
--Displays countries whose names only contain 4 letters

SELECT name
  FROM world
 WHERE name LIKE capital;
--Displays countries whose names are the same as their capital

SELECT name
  FROM world
 WHERE capital LIKE concat(name, ' City');--concat function concacts name of country to the word city
--Displays countries whose capitals are the name of the country with the word city next to it

SELECT capital, name
  FROM world
 WHERE capital LIKE concat(name, '%');
--Displays capitals and countries of countries whose capitals contain the name of the country