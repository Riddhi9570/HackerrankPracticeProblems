-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-13/problem
-- # Score: 10
-- # Difficulty: Easy


SELECT TRUNCATE(SUM(Lat_N), 4)
FROM STATION
WHERE Lat_N > 38.7880 AND Lat_N < 137.2345;


/*

NOTE:- 

    -'SELECT' QUERY is used to fetch the data from the database.
    -'TRUNCATE(number,decimal_places)' :- truncate a number to specified number of decimal places.
    - The 'SUM()' function returns the total sum of a numeric column.
    -'FROM' specifies the table or tables to select the data from.
    - Using 'WHERE' clause, we can specify a selection criteria to select the required records from a table.
    - The WHERE condition used together with the AND logical operator, is only executed if ALL filter criteria specified are met.
    - '>':- Greater than.
    - '<':- Less than.

*/