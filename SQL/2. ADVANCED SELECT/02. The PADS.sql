-- # Problem: https://www.hackerrank.com/challenges/the-pads/problem
-- # Score: 30
-- # Difficulty: Medium


select
    concat(name,"(",upper(substr(occupation,1,1)),")") 
from
    occupations
order by
    name;


select
    "There are a total of ",
    concat(count(*)," ",lower(occupation),"s.")
from
    occupations 
group by
    occupation
order by
    count(*),
    occupation;


/* NOTE:
    
    - The CONCAT() function adds two or more expressions together.
    - The UPPER() function converts a string to upper-case.
    - The LOWER() function converts a string to lower-case.
    - The SUBSTR(str,a,b) function extract a substring from a string 'str' starting from position 'a' and extract 'b' number of characters.
    - 'ORDER BY A' sort the result in ascending order of A.
    - 'ORDER BY A, B' sort the result in ascending order of A, but for the same values of A, it will sort those values in ascending order of B.
    - The COUNT(*) function counts the number of rows produced by the query.
    - The GROUP BY statement groups rows that have the same values into summary rows.
    
*/