-- # Problem: https://www.hackerrank.com/challenges/the-blunder/problem
-- # Score: 15
-- # Difficulty: Easy


SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary, '0', '')))
FROM EMPLOYEES;