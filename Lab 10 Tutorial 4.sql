--Tutorial 4
SELECT name FROM world
WHERE population >
     (SELECT population FROM world
      WHERE name='Russia');--Statement to retrieve Russia's population
--shows all countries with a population bigger than Russia's

SELECT name FROM world
WHERE (gdp/population) >
     (SELECT (gdp/population) FROM world
      WHERE name ='United Kingdom') AND continent = 'Europe';
--finds European countries who have a higher gdp per capita than the United Kindom

SELECT name, continent FROM world
WHERE continent IN
     (SELECT continent FROM world
      WHERE name IN ('Argentina','Australia'))--orders by name of country
ORDER BY name;
--finds countries who share the same continent as Austrailia and Argentina

SELECT name, population FROM world
WHERE population >
     (SELECT population FROM world
      WHERE name = 'Canada') AND
population < (SELECT population FROM world
      WHERE name = 'Poland');
--shows countries with a population more than Canada's, but less than Poland's
--no reocrds are returned from this query

SELECT name, concat(ROUND(population/(SELECT population FROM world
      WHERE name = 'Germany')*100), '%') as percentage  FROM world
  WHERE continent = 'Europe';
--shows all European countries and their populations as a percentage of Germany's
-- concat function appends percent sign to population percentages

SELECT name FROM world
WHERE gdp > ALL(SELECT gdp FROM world
                   WHERE gdp > 0 AND continent = 'Europe')
--returns countries with a gdp higher than all European countries

SELECT continent, name, area FROM world a
WHERE area >= ALL (SELECT area FROM world b
        WHERE b.continent = a.continent
          AND area > 0);
--returns records of largests countries by area, for each continent

SELECT continent, name FROM world a
WHERE name <= ALL (SELECT name FROM world b
        WHERE a.continent = b.continent);
--returns each continent and the first country within it alphabetically

SELECT name, continent, population FROM world a
WHERE 25000000 >= ALL(SELECT population FROM world b
		        WHERE a.continent = b.continent AND b.population>0);
-- Returns name, continent and population, for continents that have countries with a population of less than or equal to 25000000
-- It then finds the names of the countries associated with the continents

SELECT name, continent FROM world a
WHERE population >= ALL(SELECT population*3 FROM world b
                     WHERE a.continent = b.continent AND b.name != a.name);
--returns names of countries and their continents who have a population 3x larger than any other country that they share a continent with