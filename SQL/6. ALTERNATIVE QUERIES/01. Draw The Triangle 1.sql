-- # Problem: https://www.hackerrank.com/challenges/draw-the-triangle-1/problem
-- # Score: 25
-- # Difficulty: Easy


SET @num = 21;
SELECT REPEAT('* ', @num := @num - 1)
FROM information_schema.tables 
WHERE @num > 0;