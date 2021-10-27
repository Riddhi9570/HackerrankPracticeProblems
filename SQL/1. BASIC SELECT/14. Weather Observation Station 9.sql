-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-9/problem
-- # Score: 10
-- # Difficulty: Easy


SELECT DISTINCT CITY
FROM STATION
WHERE REGEXP_LIKE(City, '^[^AEIOU]');


/* NOTE:

    -DISTINCT excludes duplicates.
    -REGEXP_LIKE() :- This function represents whether the string matches regular expression or not.
    -^ :- The caret (^) character is used to start matches at the beginning of a searched string.
    -[abc] :- It is used to match any characters enclosed in the square brackets.
    -[^abc] :-	It is used to match any characters not specified in the square brackets.

*/