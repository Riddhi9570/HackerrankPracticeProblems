-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-19/problem
-- # Score: 30
-- # Difficulty: Medium


SELECT
    ROUND(
        SQRT(
            POWER((MAX(Lat_N) - MIN(Lat_N)), 2) +
            POWER((MAX(Long_W) - MIN(Long_W)), 2)
            )
        , 4)
FROM Station;


/*NOTE:- 

    - The Euclidean distance formula says the distance between two points (x1, y1) and (x2, y2) is d = √[(x2 – x1)^2 + (y2 – y1)^2].
    - 'SELECT' QUERY is used to fetch the data from the database.
    - 'ROUND(a,b)' :- rounds a number 'a' to specified number of decimal places 'b'.
    - The MAX() function returns the largest value of the selected column.
    - The MIN() function returns the smallest value of the selected column.
    - The POWER(a,b) function returns the value of a number 'a' raised to the power of 'b'.
    - The SQRT() function returns the square root of a number.
    - 'FROM' specifies the table or tables to select the data from.

*/