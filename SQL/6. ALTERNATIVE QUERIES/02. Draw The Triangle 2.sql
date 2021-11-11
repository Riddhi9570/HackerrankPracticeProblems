-- # Problem: https://www.hackerrank.com/challenges/draw-the-triangle-2/problem
-- # Score: 25
-- # Difficulty: Easy


SET @num = 0;
SELECT REPEAT('* ', @num := @num + 1) 
FROM information_schema.tables 
limit 20;