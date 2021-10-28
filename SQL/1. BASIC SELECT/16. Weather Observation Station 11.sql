-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-11/problem
-- # Score: 15
-- # Difficulty: Easy


SELECT DISTINCT City FROM Station
WHERE REGEXP_LIKE(City, '^[^AEIOU]|[^aeiou]$');


/* NOTE:

    -DISTINCT :- excludes duplicates.
    -REGEXP_LIKE() :- This function represents whether the string matches regular expression or not.
    -^ :- The caret (^) character is used to start matches at the beginning of a searched string.
    -[^abc] :-	It is used to match any characters not specified in the square brackets.
    -$ :- The dollar ($) character is used to start matches at the end of a searched string.
    -p1|p2 :- matches any of the patterns p1 or p2.

*/