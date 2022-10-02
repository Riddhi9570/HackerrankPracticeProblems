-- # Problem: https://www.hackerrank.com/challenges/15-days-of-learning-sql/problem?isFullScreen=true
-- # Score: 50
-- # Difficulty: Hard



SELECT t1.submission_date, hkr_cnt, t2.hacker_id, name
FROM (SELECT p1.submission_date, 
             COUNT(DISTINCT p1.hacker_id) AS hkr_cnt
      FROM (SELECT submission_date, hacker_id, 
                   @h_rnk := CASE WHEN @h_grp != hacker_id THEN 1 ELSE @h_rnk+1 END AS hacker_rank,
                   @h_grp := hacker_id AS hacker_group
            FROM (SELECT DISTINCT submission_date, hacker_id 
                  FROM submissions
                  ORDER BY hacker_id, submission_date) AS a, 
                 (SELECT @h_rnk := 1, @h_grp := 0) AS r) AS p1
      JOIN (SELECT submission_date, 
                   @d_rnk := @d_rnk + 1 AS date_rank
            FROM (SELECT DISTINCT submission_date
                  FROM submissions 
                  ORDER BY submission_date) AS b, 
                 (SELECT @d_rnk := 0) r) AS p2
      ON p1.submission_date = p2.submission_date 
         AND hacker_rank = date_rank
      GROUP BY p1.submission_Date) AS t1
JOIN (SELECT submission_date, hacker_id, sub_cnt,
             @s_rnk := CASE WHEN @d_grp != submission_date THEN 1 ELSE @s_rnk+1 END AS max_rnk,
             @d_grp := submission_date AS date_group
      FROM (SELECT submission_date, hacker_id, COUNT(*) AS sub_cnt
            FROM submissions AS s
            GROUP BY submission_date, hacker_id
            ORDER BY submission_date, sub_cnt DESC, hacker_id) AS c,
           (SELECT @s_rnk := 1, @d_grp := 0) AS r) AS t2                            
ON t1.submission_date = t2.submission_date AND max_rnk = 1
JOIN hackers AS h ON h.hacker_id = t2.hacker_id            
ORDER BY t1.submission_date
;
