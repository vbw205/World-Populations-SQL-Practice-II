-- How many entries in the countries table are from Africa?
SELECT continent, COUNT(*) FROM countries WHERE continent = 'Africa';
-- What was the total population of the continent of Oceania in 2005?
SELECT countries.continent, SUM(population_years.population) AS 'population' FROM countries JOIN population_years ON countries.id = population_years.country_id WHERE countries.continent = 'Oceania' AND population_years.year = 2005;
-- What is the average population of countries in South America in 2003? 
SELECT countries.continent, AVG(population_years.population) AS 'average population' FROM countries JOIN population_years ON countries.id = population_years.country_id WHERE countries.continent = 'South America' AND population_years.year = 2003;
-- What country had the smallest population in 2007?
SELECT countries.name AS 'country with smallest pop in 2007', MIN(population_years.population) FROM countries JOIN population_years ON countries.id = population_years.country_id WHERE population_years.year = 2007 AND population_years.population IS NOT NULL;
-- What is the average population of Poland during the time period covered by this dataset?
SELECT countries.name, AVG(population_years.population) FROM countries JOIN population_years WHERE countries.name = 'Poland';
-- How many countries have the word “The” in their name?
SELECT COUNT(*) AS "'The' Countries" FROM countries WHERE name LIKE '%The%';
-- What was the total population of each continent in 2010?
SELECT countries.continent, SUM(population_years.population) FROM countries JOIN population_years ON countries.id = population_years.country_id WHERE population_years.year = 2010 GROUP BY countries.continent;
