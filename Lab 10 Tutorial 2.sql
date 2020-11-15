--Tutorial 2

SELECT  name, continent, population FROM world;
--Displays countries, continents and populations within the world database

SELECT name FROM world
WHERE population >= 200000000;
--Displays countries with a population of at least 200,000,000

SELECT name, (gdp/population) as gdpcap FROM world
WHERE population >= 200000000;
--Displays countries and gdp per capita for countries with a population  of at least 200,000,000

SELECT name, (population/1000000) as pop FROM world
WHERE continent = 'South America';

SELECT name, population FROM world
WHERE name IN ('France', 'Germany', 'Italy');
--Displays name and population for France, Germany and Italy

SELECT name FROM world
WHERE name LIKE 'United %';
--Displays countries whose names have 'United' in it

SELECT name, population, area FROM world
WHERE area > 3000000 OR population > 250000000;
--Displays countries, population and area for countries with an area of nore than 3000000 or population of more than 250,000,000

SELECT name, population, area FROM world
WHERE area > 3000000 XOR population > 250000000;
--Shows name, population and area for countries that are big by area or big by population but not both

SELECT name, ROUND(population/1000000, 2) as pop, ROUND(gdp/1000000000, 2) as gdp FROM world
WHERE continent = 'South America';
--Shows name, population in millions and gdp in billions for countries in South America

SELECT name, ROUND(gdp/population, -3) FROM world
WHERE gdp > 1000000000000;
--Shows name and gdp per capita for countries with a GDP of at least one trillion
-- Rounds values to the nearest 1000

SELECT name, capital
  FROM world
 WHERE LENGTH(name) = LENGTH(capital);
--Displays countries and capital for countries whose name have the same amount of characters as their capital

SELECT name, capital
FROM world
WHERE LEFT(name,1) = LEFT(capital,1) AND name <> capital;
--Shows the country and its capital, for records where their first letters. 
--Doesn't include countries where the name and the capital are the same word

SELECT name FROM world 
WHERE name LIKE '%A%' AND name LIKE '%E%' AND name LIKE '%I%' AND name LIKE '%O%' AND name LIKE '%U%'
AND name NOT LIKE '% %';
--Finds the country that has all the vowels and no spaces in its name