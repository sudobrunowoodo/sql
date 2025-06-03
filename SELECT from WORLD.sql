SELECT name, continent, population FROM world

SELECT name FROM world
WHERE population >= 200000000

SELECT name, GDP/population FROM world
WHERE population >= 200000000

SELECT name, population/1000000 FROM world
WHERE continent = 'South America'

SELECT name, population FROM world
WHERE name IN ('France', 'Germany', 'Italy')

SELECT name FROM world
WHERE name LIKE '%United%'

SELECT name, population, area FROM world
WHERE population >= 250000000 OR area >= 3000000

SELECT name, population, area FROM world
WHERE (population >= 250000000 AND area < 3000000) OR (area >= 3000000 AND population < 250000000)

SELECT name, ROUND(population/1000000, 2), ROUND(GDP/1000000000, 2) FROM world
WHERE continent = 'South America'

SELECT name, ROUND(GDP/population, -3) FROM world
WHERE GDP >= 1000000000000

SELECT name, capital FROM world
 WHERE LENGTH(name) = LENGTH(capital)

SELECT name, capital FROM world
WHERE capital LIKE concat(LEFT(name, LENGTH(name)-(LENGTH(name)-1)), '%') AND capital != name

SELECT name FROM world
WHERE name NOT LIKE '% %' AND name LIKE '%a%' AND name LIKE '%e%' AND name LIKE '%i%' AND name LIKE '%o%' AND name LIKE '%u%'
