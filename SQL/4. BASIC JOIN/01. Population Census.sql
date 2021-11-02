-- # Problem: https://www.hackerrank.com/challenges/asian-population/problem
-- # Score: 10
-- # Difficulty: Easy


SELECT 
    SUM(CITY.POPULATION)
FROM 
    CITY JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE 
    COUNTRY.CONTINENT = 'Asia';


/*NOTE:- 

    -'SELECT' QUERY is used to fetch the data from the database.
    - Dot (Table_name.column_name) is used to specify from which table we are looking for that column when we are retreiving data from multiple tables.
    -'FROM' specifies the table or tables to select the data from.
    - JOIN clause is used to combine and retrieve data from multiple tables, where combination is based on a related column between them.
    - ON clause serves for conditions that specify how to join tables.
    - Using 'WHERE' clause, we can specify a selection criteria to select the required records from a table.
 
*/