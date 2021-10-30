-- # Problem: https://www.hackerrank.com/challenges/earnings-of-employees/problem
-- # Score: 20
-- # Difficulty: Easy

	
SELECT
    (months*salary) as earnings,
    COUNT(*)
FROM 
    Employee
GROUP BY
    earnings
ORDER BY
    earnings DESC 
LIMIT 1;


/*

EXPLAINATION of the solution:-

    - Compute earnings first (month* salary).
    - Then group data by earnings.
    - Get earnings and number of employees for each group.
    - Finally sort groups by earnings in descending order
    - Output the first record of the sorted group which will give the maximum earning and the corresponding count.


NOTE :-

    - 'SELECT' QUERY is used to fetch the data from the database.
    - 'AS' is used to give a temporary name to a table or a column in a table for the purpose of a particular query.
    - The 'COUNT(*)' function counts the number of records produced by the query.
    - 'FROM' specifies the table or tables to select the data from
    - The 'GROUP BY' statement groups rows that have the same values into summary rows.
    - 'ORDER BY A DESC' sort the result in descending order of A.
    - 'LIMIT n' is used to limit the number of outputs to n when there are more than n outputs.

*/