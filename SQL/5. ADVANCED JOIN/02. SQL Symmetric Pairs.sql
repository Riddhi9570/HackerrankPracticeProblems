-- # Problem: https://www.hackerrank.com/challenges/symmetric-pairs/problem?isFullScreen=true
-- # Score: 40
-- # Difficulty: Medium



SELECT DISTINCT f1.x,f1.y 
FROM   functions f1 
       inner join functions f2 
               ON f1.x IN f2.y 
                  AND f1.y IN f2.x 
WHERE  f1.x < f1.y 
        OR f1.x IN (SELECT x 
                   FROM   functions 
                   WHERE  x = y 
                   GROUP  BY x,y 
                   HAVING Count(*) > 1) 
ORDER  BY f1.x; 

