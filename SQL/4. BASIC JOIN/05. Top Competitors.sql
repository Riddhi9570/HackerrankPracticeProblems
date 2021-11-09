-- # Problem: https://www.hackerrank.com/challenges/full-score/problem
-- # Score: 30
-- # Difficulty: Medium


select h.Hacker_Id, h.Name
from submissions s
inner join Challenges c on c.challenge_id = s.challenge_id 
inner join Difficulty d on d.difficulty_level = c.difficulty_level and d.score = s.score
inner join Hackers h on s.hacker_id = h.hacker_id 
group by h.hacker_id, h.name
having count(s.score) > 1
order by count(s.score) desc, h.hacker_Id;