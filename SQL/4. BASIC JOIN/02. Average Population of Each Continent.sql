-- # Problem: https://www.hackerrank.com/challenges/average-population-of-each-continent/problem
-- # Score: 10
-- # Difficulty: Easy


SELECT o.CONTINENT, FLOOR(AVG(i.POPULATION)) FROM CITY AS i JOIN COUNTRY AS o ON i.COUNTRYCODE=o.CODE GROUP BY o.CONTINENT;
