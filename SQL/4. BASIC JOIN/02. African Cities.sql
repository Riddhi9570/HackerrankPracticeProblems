-- # Problem: https://www.hackerrank.com/challenges/african-cities/problem
-- # Score: 10
-- # Difficulty: Easy


SELECT 
    ci.NAME 
FROM 
    CITY AS ci
    JOIN
    COUNTRY AS co
    ON ci.COUNTRYCODE=co.CODE 
WHERE 
    co.CONTINENT='Africa';


/*NOTE:- 

    -'SELECT' QUERY is used to fetch the data from the database.
    -'FROM' specifies the table or tables to select the data from.
    - 'AS' (Alias) is used to give a temporary name to a table or a column in a table for the purpose of a particular query. In the solution, we want to fetch rows from the table CITY and COUNTRY but reference it as ci and co respectively.
    - Dot (Table_name.column_name) is used to specify from which table we are looking for that column when we are retreiving data from multiple tables.
    - JOIN clause is used to combine and retrieve data from multiple tables, where combination is based on a related column between them.
    - ON clause serves for conditions that specify how to join tables.
    - Using 'WHERE' clause, we can specify a selection criteria to select the required records from a table.

*/