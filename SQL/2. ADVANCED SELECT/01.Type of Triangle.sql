-- # Problem: https://www.hackerrank.com/challenges/what-type-of-triangle/problem
-- # Score: 20
-- # Difficulty: Easy

SELECT 
IF(A+B>C AND A+C>B AND B+C>A, IF(A=B AND B=C, 'Equilateral', IF(A=B OR B=C OR A=C, 'Isosceles', 'Scalene')), 'Not A Triangle')
FROM TRIANGLES;