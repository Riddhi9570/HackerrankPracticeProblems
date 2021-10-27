-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-8/problem
-- # Score: 15
-- # Difficulty: Easy

SELECT DISTINCT city
FROM   station
WHERE  city REGEXP '^[AEIOU].*[aeiou]$' 

/* NOTE:

    -DISTINCT excludes duplicates.
    -REGEXP is the operator used when performing regular expression pattern matches.
    -^ :- The caret (^) character is used to start matches at the beginning of a searched string.
    -$ :- The dollar ($) character is used to start matches at the end of a searched string.
    -[abc] :- It is used to match any characters enclosed in the square brackets.
    -* :-The asterisk (*) character matches zero (0) or more instances of the preceding strings.
    -WHERE city REGEXP '^[AEIOU].*[aeiou]$' is equivalent to WHERE REGEXP_LIKE(City, '^[AEIOU].*[aeiou]$')
    
*/