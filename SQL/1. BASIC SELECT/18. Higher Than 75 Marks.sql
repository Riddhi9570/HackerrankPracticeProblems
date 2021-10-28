-- # Problem: https://www.hackerrank.com/challenges/more-than-75-marks/problem
-- # Score: 15
-- # Difficulty: Easy


SELECT Name
FROM Students
WHERE Marks > 75
ORDER BY SUBSTR(Name, - 3), Id ASC;


/* NOTE:
    - > :- greater than.
    - 'ORDER BY A' and 'ORDER BY A ASC' sort the result in ascending order of A.
    - 'ORDER BY A DESC' sort the result in descending order of A.
    - 'ORDER BY A, B' sort the result in ascending order of A, but for the same values of A, it will sort those values in ascending order of B.
    - SUBSTR(str,a,b) :- Extract a substring from a string str starting from position a and extract b number of characters.
        - if a is negative, it will extract from last a-th position.
        - if b is not given, it will extract till the end.
    
    
*/