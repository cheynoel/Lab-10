--Tutorial 0
SELECT population FROM world
  WHERE name = 'Germany';
--Finds the population of Germany 

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');
--Finds the population of Sweden, Norway and Denmark

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000;
--Pulls records of countries and areas for countries with an area between 200,000 and 250,000