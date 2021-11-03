-- # Problem: https://www.hackerrank.com/challenges/the-report/problem
-- # Score: 20
-- # Difficulty: Medium


select
    if(g.Grade<8, NULL, s.Name),
    g.grade,
    s.marks
from
    Students s,
    Grades g 
where
    s.marks between g.Min_Mark and g.Max_Mark
order by 
    g.grade desc,
    s.name;


/*NOTE:- 

    -'SELECT' is used to fetch the data from the database.
    - The IF() function returns a value if a condition is TRUE, or another value if a condition is FALSE.
        Syntax:- IF(condition, value_if_true, value_if_false)
    - We can give a temporary name to a table or a column in a table for the purpose of a particular query. In the solution, we want to fetch rows from the table Students and Grades but reference it as s and g respectively.
    - Dot (Table_name.column_name) is used to specify from which table we are looking for that column when we are retreiving data from multiple tables.
    -'FROM' specifies the table or tables to select the data from.
    - Using 'WHERE' clause, we can specify a selection criteria to select the required records from a table.
    - The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates. The BETWEEN operator is inclusive: begin and end values are included. 
    - 'ORDER BY A DESC' sort the result in descending order of A.
    - 'ORDER BY A' sort the result in ascending order of A.
    - 'ORDER BY A DESC, B' sort the result in descending order of A, but for the same values of A, it will sort those values in ascending order of B.

*/