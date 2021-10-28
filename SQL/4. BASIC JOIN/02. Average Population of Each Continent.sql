-- # Problem: https://www.hackerrank.com/challenges/average-population-of-each-continent/problem
-- # Score: 10
-- # Difficulty: Easy


SELECT 
  o.CONTINENT,
  FLOOR(AVG(i.POPULATION))
FROM 
  CITY AS i JOIN COUNTRY AS o 
  ON i.COUNTRYCODE=o.CODE 
GROUP BY 
  o.CONTINENT;


/* NOTE:

  - FLOOR() function is used to return the largest integer value which will be either equal to or less than from a given input number.
  - The AVG() function returns the average value of all records in a field.
  - AVG() when used with GROUP BY clause, returns the average value of group of records in a field.
  - JOINS are used to retrieve data from multiple tables.
  - ON clause serves for conditions that specify how to join tables.
  - AS is used to give a temporary name to a table or a column in a table for the purpose of a particular query.
  
*/
