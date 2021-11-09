-- # Problem: https://www.hackerrank.com/challenges/harry-potter-and-wands/problem
-- # Score: 30
-- # Difficulty: Medium


SELECT 
    W.ID,
    WP.AGE,
    W.COINS_NEEDED,
    W.POWER 
FROM 
    WANDS AS W
    JOIN 
    WANDS_PROPERTY AS WP
    ON (W.CODE = WP.CODE) 
WHERE 
    WP.IS_EVIL = 0 
    AND 
    W.COINS_NEEDED=(SELECT 
                        MIN(COINS_NEEDED) 
                    FROM
                        WANDS AS X
                        JOIN 
                        WANDS_PROPERTY AS Y 
                        ON (X.CODE = Y.CODE) 
                    WHERE 
                        X.POWER = W.POWER 
                        AND 
                        Y.AGE = WP.AGE) 
ORDER BY 
    W.POWER DESC, 
    WP.AGE DESC;