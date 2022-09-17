/*

Interview Question in Dream 11

Table_name: crci_score

Columns:

1. p_id (auto increment)
2. match_id
3. Player_id
4. player_score

Data:

1, 10, 1, 10
2, 10, 2, 20
3, 10, 1, 15
4, 10, 3, 20
5, 10, 2, 50
6, 10, 4, 0
7, 10, 4, 5

There are multiple entries for each player_id and the latest entry is the right entry.
Fetch the latest player_score of each player_id.

*/

--Tried
SELECT pid
FROM   cric_score
WHERE  pid = (SELECT Max(p_id)
              FROM   cric_score)


--Tried again
SELECT Max(p_id) AS id,
       player_id,
       max(player_score)
FROM   cric_score
GROUP  BY player_id
ORDER  BY player_id



--CORRECT ANSWER
SELECT p_id,
       player_id,
       player_score
FROM   cric_score
WHERE  p_id IN (SELECT Max(p_id)
                FROM   cric_score
                GROUP  BY player_id) 