-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-5/problem
-- # Score: 30
-- # Difficulty: Easy

SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY), CITY LIMIT 1;
SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) DESC, CITY LIMIT 1;

/*EXPLANATION of solution:

    For the shortest city name, we can sort city names according to their length in ascending order, and for cities having the same length, sort with their names in alphabetical order. Then we output city name and its length of the first entry.

    For the longest city name, we can sort city names with length in descending order. Then sort cities’ names in alphabetical order for those having the same length. Finally output city name and length of first entry.

NOTE:

    -'LENGTH(A)' is used to get the length of the A.
    -'ORDER BY A' sort the result in ascending order of A.
    -'ORDER BY A DESC' sort the result in descending order of A.
    -'ORDER BY A, B' sort the result in ascending order of A, but for the same values of A, it will sort in ascending order of B.
    -'ORDER BY A DESC, B' sort the result in descending order of A, but for the same values of A, it will sort in ascending order of B.
    -'LIMIT n' is used to limit the number of outputs to n when there are more than n outputs.
*/