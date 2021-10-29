-- # Problem: https://www.hackerrank.com/challenges/occupations/problem
-- # Score: 30
-- # Difficulty: Medium


set @d=0, @p=0, @s=0, @a=0;

select min(Doctor), min(Professor), min(Singer), min(Actor)
from(
  select
        case 
            when Occupation='Doctor' then (@d:=@d+1)
            when Occupation='Professor' then (@p:=@p+1)
            when Occupation='Singer' then (@s:=@s+1)
            when Occupation='Actor' then (@a:=@a+1) 
            end
            as Rowline,
        case 
            when Occupation='Doctor' then Name 
            end
            as Doctor,
        case 
            when Occupation='Professor' then Name
            end
            as Professor,
        case
            when Occupation='Singer' then Name
            end
            as Singer,
        case
            when Occupation='Actor' then Name
            end
            as Actor
  from OCCUPATIONS
  order by Name
)
as temp
group by Rowline;


/*

Explaination :-

    To solve this problem, we can create a new table (let's say temp) using user-defined variables which will look like this for the given sample table :- 

    RowLine	Doctor	  Professor	 Singer	Actor
    1	    NULL	  Ashely	 NULL	NULL
    2	    NULL	  Christeen	 NULL	NULL
    1	    NULL	  NULL	     NULL	Jane
    1	    Jenny	  NULL	     NULL	NULL
    2	    NULL	  NULL	     NULL	Julia
    3	    NULL	  Ketty	     NULL	NULL
    3	    NULL	  NULL	     NULL	Maria
    1	    NULL	  NULL	     Meera	NULL
    2	    NULL	  NULL	     Priya	NULL
    2	    Samantha  NULL	     NULL	NULL

    To get the table temp, we create four variables to record the line number RowLine, one for each occupation. We use CASE to add variables according to occupation. We use as (alias) to give field name as Rowline, Doctor, Professor, Singer and Actor. The RowLine represents the line where the name should be put. In addition, because we want to sort names alphabetically for each occupation, the first step of creating the table above is to sort OCCUPATIONS table by name. Once we have got the table temp, we can use “SELECT MIN(Doctor), MIN(Professor), MIN(Singer), MIN(Actor) FROM temp GROUP BY RowLine” to get the desired result.

Note :-

    - SET statement is used to set a user-defined variable.
    - User-defined variables are written as @var_name.
    - The MIN() function returns the minimum value in a set of values. By default, it do not count NULL in the evaluation of data.
    - The CASE statement goes through conditions and returns a value when the first condition is met. Once a condition is true, it will stop reading and return the result. If no conditions are true, it returns the value in the ELSE clause. If there is no ELSE part and no conditions are true, it returns NULL.
    - END is the marker that closes the CASE expression.
    - AS is used to give a temporary name to a table or a column in a table for the purpose of a particular query.
    - 'ORDER BY A' sort the result in ascending order of A.
    - The GROUP BY statement groups rows that have the same values into summary rows.

*/