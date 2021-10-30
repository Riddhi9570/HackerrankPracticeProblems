-- # Problem: https://www.hackerrank.com/challenges/japan-population/problem
-- # Score: 10
-- # Difficulty: Easy


SELECT SUM(Population)
FROM City
WHERE CountryCode = 'JPN';