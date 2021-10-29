-- # Problem: https://www.hackerrank.com/challenges/binary-search-tree-1/problem
-- # Score: 30
-- # Difficulty: Medium


SELECT
    N,
    IF(P IS NULL, 'Root', IF(N IN (SELECT P FROM BST), 'Inner', 'Leaf'))
FROM 
    BST
ORDER BY 
    N;


/*

How to solve :-

    - If P is null, then the node will be root.
    - Next check if the node value appears in Column P, it will be ‘Inner’, otherwise ‘Leaf’.

NOTE :-

    - The IF() function returns a value if a condition is TRUE, or another value if a condition is FALSE. Syntax. IF(condition, value_if_true, value_if_false)
    - 'IS NULL' is the keyword that performs the Boolean comparison. It returns true if the supplied value is NULL and false if the supplied value is not NULL.
    - 'ORDER BY N' sort the result in ascending order of N.

*/