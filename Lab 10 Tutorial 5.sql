--Tutorial 5

SELECT SUM(population) FROM world;
--sums and shows the entire population of the world

SELECT DISTINCT continent FROM world;
--list only one of each continent within the database and the world

SELECT SUM(gdp) FROM world
WHERE continent = 'Africa';
--sums up the gdp within Africa

SELECT COUNT(name) FROM world
WHERE area >= 1000000;
--counts the amount of countries that have an area of at least 1000000

SELECT SUM(population) FROM world
WHERE name IN ('Estonia', 'Latvia', 'Lithuania');
--shows the sum of populations for Estonia, Latvia and Lithuania

SELECT continent, COUNT(name) FROM world
GROUP BY continent;
--shows the amount of countries within each continent
--groups by each continent

SELECT continent, COUNT(name) FROM world
WHERE population >= 10000000
GROUP BY continent;
--returns the number of countries that has a population of at least 10 million for each continent

SELECT continent FROM world
GROUP BY continent
HAVING SUM(population) > 100000000;
--list continents with a total population of at least 100 million