
-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-6/problem
-- # Score: 10
-- # Difficulty: Easy

SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY REGEXP '^[aeiou]'

/* NOTE:

    -REGEXP is the operator used when performing regular expression pattern matches.
    -^ :- caret(^) matches the beginning of the string.
    -[abc] :- any character listed between the square brackets.
    -REGEXP is not case sensitive.i.e, we can also take '^[AEIOU]' in this question.
*/