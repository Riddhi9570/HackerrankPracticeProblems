-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-16/problem
-- # Score: 10
-- # Difficulty: Easy


SELECT ROUND(MIN(Lat_N), 4)
FROM Station
WHERE Lat_N > 38.7780;


/*NOTE:- 

    -'SELECT' QUERY is used to fetch the data from the database.
    -'ROUND(number,decimal_places)' :- rounds a number to specified number of decimal places.
    - The MIN() function returns the smallest value of the selected column.
    -'FROM' specifies the table or tables to select the data from.
    - Using 'WHERE' clause, we can specify a selection criteria to select the required records from a table.
    - '>':- Greater than.

*/