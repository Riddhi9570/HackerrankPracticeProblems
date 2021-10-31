-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-15/problem
-- # Score: 15
-- # Difficulty: Easy


SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC
LIMIT 1;


/*NOTE:- 

    -'SELECT' QUERY is used to fetch the data from the database.
    -'ROUND(number,decimal_places)' :- rounds a number to specified number of decimal places.
    -'FROM' specifies the table or tables to select the data from.
    - Using 'WHERE' clause, we can specify a selection criteria to select the required records from a table.
    - '<':- Less than.
    - 'ORDER BY A DESC' sort the result in descending order of A.
    - 'LIMIT n' is used to limit the number of outputs to n when there are more than n outputs.

*/