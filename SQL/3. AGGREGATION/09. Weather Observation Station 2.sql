-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-2/problem
-- # Score: 15
-- # Difficulty: Easy


SELECT 
    ROUND(SUM(Lat_N), 2),
    ROUND(SUM(Long_W), 2)
FROM 
    Station;


/*
NOTE:- 

    -'SELECT' QUERY is used to fetch the data from the database.
    -'ROUND(number,decimal_places)' :- rounds a number to specified number of decimal places.
    - The 'SUM()' function returns the total sum of a numeric column.
    -'FROM' specifies the table or tables to select the data from.

*/