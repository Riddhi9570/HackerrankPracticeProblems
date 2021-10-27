-- # Problem: https://www.hackerrank.com/challenges/revising-the-select-query/problem
-- # Score: 10
-- # Difficulty : Easy

SELECT *
FROM CITY
WHERE
    POPULATION > 100000
    AND COUNTRYCODE = 'USA';