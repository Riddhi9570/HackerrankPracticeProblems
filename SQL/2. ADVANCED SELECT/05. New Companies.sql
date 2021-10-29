-- # Problem: https://www.hackerrank.com/challenges/binary-search-tree-1/problem
-- # Score: 30
-- # Difficulty: Medium

select 
    c.company_code,
    c.founder, 
    count(distinct l.lead_manager_code),
    count(distinct s.senior_manager_code),
    count(distinct m.manager_code),
    count(distinct e.employee_code)
from 
    Company c,
    Lead_Manager l,
    Senior_Manager s,
    Manager M,
    Employee e
where 
    c.company_code = l.company_code 
    AND l.lead_manager_code = s.lead_manager_code 
    AND s.senior_manager_code = m.senior_manager_code 
    AND m.manager_code = e.manager_code
group by 
    c.company_code, 
    c.founder
order by 
    c.company_code;