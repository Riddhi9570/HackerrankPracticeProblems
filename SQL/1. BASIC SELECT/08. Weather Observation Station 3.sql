-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-3/problem
-- # Score: 10
-- # Difficulty: Easy

SELECT DISTINCT CITY      -- # DISTINCT keyword is used to exclude duplicate values
FROM STATION
WHERE MOD(ID,2) = 0;      -- # MOD(A,B) is equivalent to A%B