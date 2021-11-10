-- # Problem: https://www.hackerrank.com/challenges/contest-leaderboard/problem
-- # Score: 30
-- # Difficulty: Medium


select 
    t.hacker_id, 
    h.name, 
    sum(t.s) as total
from 
    (select 
        hacker_id,
        challenge_id,
        max(score) as s
    from
        Submissions
    group by
        hacker_id,
        challenge_id
    ) t
    join
    hackers h
    on h.hacker_id= t.hacker_id
group by
    t.hacker_id,
    h.name
having 
    total>0
order by 
    total desc,
    t.hacker_id;