-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-18/problem
-- # Score: 25
-- # Difficulty: Medium


SELECT ROUND(MAX(Lat_N) - MIN(Lat_N) + MAX(Long_W) - MIN(Long_W), 4)
FROM Station;


/*NOTE:- 

    - 'Manhattan distance' is the distance between two points measured along axes at right angles. In a plane with p1 at (x1, y1) and p2 at (x2, y2), it is |x1 - x2| + |y1 - y2|.
    - 'SELECT' QUERY is used to fetch the data from the database.
    - 'ROUND(number,decimal_places)' :- rounds a number to specified number of decimal places.
    - The MAX() function returns the largest value of the selected column.
    - The MIN() function returns the smallest value of the selected column.
    - 'FROM' specifies the table or tables to select the data from.

*/