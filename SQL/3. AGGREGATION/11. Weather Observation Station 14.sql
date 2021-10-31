-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-14/problem
-- # Score: 10
-- # Difficulty: Easy


SELECT TRUNCATE(MAX(Lat_N), 4)
FROM Station
WHERE Lat_N < 137.2345;


/*

NOTE:- 

    -'SELECT' QUERY is used to fetch the data from the database.
    -'TRUNCATE(number,decimal_places)' :- truncate a number to specified number of decimal places.
    - The MAX() function returns the largest value of the selected column.
    -'FROM' specifies the table or tables to select the data from.
    - Using 'WHERE' clause, we can specify a selection criteria to select the required records from a table.
    - '<':- Less than.

*/