-- # Problem: https://www.hackerrank.com/challenges/challenges/problem
-- # Score: 30
-- # Difficulty: Medium


select
    h.hacker_id, 
    h.name, 
    count(c.challenge_id) as cnt 
from 
    Hackers h 
    join 
    Challenges c 
    on h.hacker_id = c.hacker_id 
group by 
    h.hacker_id,
    h.name
having
    cnt = ( select count(challenge_id) as cn 
            from Challenges 
            group by hacker_id 
            order by cn desc 
            limit 1 ) 
    or 
    cnt in (select t.total 
            from (select count(*) as total 
                from Challenges 
                group by hacker_id) t 
            group by t.total 
            having count(t.total)=1) 
order by 
    cnt desc,
    h.hacker_id;