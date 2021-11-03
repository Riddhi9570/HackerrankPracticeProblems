-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-20/problem
-- # Score: 40
-- # Difficulty: Medium


SET
    @rowIndex := -1;
SELECT
    ROUND(AVG(t.LAT_N), 4) 
FROM
    (
    SELECT
        @rowIndex := @rowIndex+1 AS rowIndex,
        s.LAT_N
    FROM STATION AS s
    ORDER BY s.LAT_N
    ) AS t
WHERE
    t.rowIndex IN (FLOOR(@rowIndex / 2), CEIL(@rowIndex / 2));


/*
APPROACH :-

    - Create a table with 2 fields- rowIndex and LAT_N.
    - Set the value of rowIndex as -1 and increase its value for each row. The first row will have the value 0, the second row will have the value 1, and so on.
    - Sort the created table in ascending order of LAT_N.
    - Name this table as t.
    - The table t may look something like this:-
        +----------+-------+
        | rowIndex | LAT_N |
        +----------+-------+
        |        0 |     1 |
        |        1 |     7 |
        |        2 |    10 |
        |        3 |    19 |
        |        4 |    21 |
        |        5 |    25 |
        |        6 |    36 |
        |        7 |    39 |
        |        8 |    45 |
        |        9 |    52 |
        |       10 |    88 |
        |       11 |    97 |
        +----------+-------+
    - Now, how to find the median of LAT_N from this sorted table-
        -For n number of records,
            -If n is odd, the median is the number at position floor(n/2) + 1.
            -If n is even, the median is the average of numbers at position n/2 and n/2 + 1.
        -Here, we have counted the numbers from index 0.
            -If n is odd, let's say 9, indexes are 0,1,2,...,8, and the index of the median is 4, which is exactly half of index of the last element.
            -If n is even, let's say 10, indexes are 0,1,2,...,9, and the median is average of numbers of index 4 and 5, which are floor and ceil of index of last element divided by 2.
        -Thus, we can find the median by taking the average of 
            (FLOOR(@rowIndex / 2), CEIL(@rowIndex / 2))
            where @rowIndex is the index of last element when started the count from 0.
    - Now, round the result to 4 decimal places.


NOTE:- 

    - 'SET' statement is used to set a user-defined variable.
    - User-defined variables are written as @var_name.
    - 'SELECT' QUERY is used to fetch the data from the database.
    - 'ROUND(a,b)' :- rounds a number 'a' to specified number of decimal places 'b'.
    - AVG() function returns the average value in a set of values.
    - 'FROM' specifies the table or tables to select the data from.
    - 'AS' is used to give a temporary name to a table or a column in a table for the purpose of a particular query.
    - 'ORDER BY A' sort the result in ascending order of A.
    - Using 'WHERE' clause, we can specify a selection criteria to select the required records from a table.
    - The 'IN' operator allows you to determine if a value matches any value in a list of values. 
    - FLOOR() function is used to return the largest integer value which will be either equal to or less than from a given input number.
    - CEIL() function is used to return the smallest integer value which is either greater than or equal to the given input number.

*/