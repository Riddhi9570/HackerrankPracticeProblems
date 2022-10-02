WITH total_submit as (

    SELECT
            coll.contest_id,
            SUM(ss.total_submissions) as sumts,
            SUM(ss.total_accepted_submissions) as sumtas
FROM        Colleges coll
INNER JOIN  Challenges chall    ON chall.college_id = coll.college_id
INNER JOIN  Submission_Stats ss ON chall.challenge_id = ss.challenge_id
GROUP BY    coll.contest_id
    
),

total_view as (

    SELECT
            coll.contest_id,
            SUM(vs.total_views) as sumtv,
            SUM(vs.total_unique_views) as sumtuv
FROM        Colleges coll
INNER JOIN  Challenges chall ON chall.college_id = coll.college_id
INNER JOIN  View_Stats vs    ON chall.challenge_id = vs.challenge_id
GROUP BY    coll.contest_id

)

SELECT
            cont.contest_id,
            cont.hacker_id,
            cont.name,
            ts.sumts,
            ts.sumtas,
            tv.sumtv,
            tv.sumtuv
FROM        Contests cont
INNER JOIN  total_submit ts ON ts.contest_id = cont.contest_id
INNER JOIN  total_view   tv ON tv.contest_id = cont.contest_id
WHERE       ts.sumts  > 0
OR          ts.sumtas > 0
OR          tv.sumtv  > 0
OR          tv.sumtuv > 0
ORDER BY    cont.contest_id
;
