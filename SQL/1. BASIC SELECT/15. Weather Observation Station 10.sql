-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-10/problem
-- # Score: 10
-- # Difficulty: Easy


SELECT DISTINCT City
FROM Station
WHERE REGEXP_LIKE(City, '[^aeiou]$');


/* NOTE:

    -DISTINCT excludes duplicates.
    -REGEXP_LIKE() :- This function represents whether the string matches regular expression or not.
    -[^abc] :-	It is used to match any characters not specified in the square brackets.
    -$ :- The dollar ($) character is used to start matches at the end of a searched string.

*/