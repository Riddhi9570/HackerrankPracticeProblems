-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-11/problem
-- # Score: 15
-- # Difficulty: Easy


SELECT DISTINCT City
FROM Station
WHERE REGEXP_LIKE(City, '^[^AEIOU].*[^aeiou]$');


/* NOTE:

    -DISTINCT :- excludes duplicates.
    -REGEXP_LIKE() :- This function represents whether the string matches regular expression or not.
    -[abc] :- It is used to match any characters enclosed in the square brackets.
    -[^abc] :-	It is used to match any characters not specified in the square brackets.
    -^ :- The caret (^) character is used to start matches at the beginning of a searched string.
    -. :- The dot (.) character matches any single character.
    -* :-The asterisk (*) character matches zero (0) or more instances of the preceding strings.
    -$ :- The dollar ($) character is used to start matches at the end of a searched string.

*/