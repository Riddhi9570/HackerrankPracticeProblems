-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-7/problem
-- # Score: 10
-- # Difficulty: Easy


SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[aeiou]$';

/* NOTE:

    -DISTINCT excludes duplicates.
    -REGEXP is the operator used when performing regular expression pattern matches.
    -$:- Matches end of the string.
    -[abc] :- any character listed between the square brackets.
    -REGEXP is not case sensitive.i.e, we can also take '[AEIOU]$' in this question.
*/