-- 1. Introduction
SELECT name, continent, population FROM world

-- 2. Large Countries
SELECT name FROM world WHERE population >= 200000000

-- 3. Per capita GDP
SELECT name, gdp/population 
FROM world
WHERE population > 200000000

-- 4. South America In millions
SELECT name, population/1000000
FROM world
WHERE continent = 'South America'

-- 5. France, Germany, Italy
SELECT name, population
FROM world
WHERE name = 'France' OR name = 'Germany' OR name = 'Italy'

-- 6. United
SELECT name FROM world WHERE name LIKE '%United%'

-- 7. Two ways to be big
SELECT name, population, area 
FROM world
WHERE area > 3000000 OR population > 250000000

-- 8. One or the other (but not both)
SELECT name, population, area
FROM world
WHERE (population >= 250000000 AND NOT area >= 3000000) OR 
      (area >= 3000000 AND NOT population >= 250000000);

-- 9. Rounding
SELECT name, Round(population/1000000,2), Round(GDP/1000000000, 2)
FROM world
WHERE continent = 'South America'

-- 10. Trillion dollar economies
SELECT name, Round(GDP/population,-3)
FROM world
WHERE GDP > 1000000000000

-- 11. Name AND capital have the same LENGTH
SELECT name,     capital
  FROM world
 WHERE LENGTH(name) = LENGTH(capital)

-- 12. Matching name AND capital
SELECT name, capital 
FROM world
WHERE LEFT(name, 1) = LEFT(capital, 1) AND name <> capital

-- 13 All the vowels
SELECT name
   FROM world
WHERE name LIKE '%a%' AND name like '%e%' AND name like '%i%' AND name like '%o%' AND name like '%u%' AND name not like '% %'