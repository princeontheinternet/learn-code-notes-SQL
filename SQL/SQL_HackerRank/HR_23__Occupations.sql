--Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. 
--The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

--Note: Print NULL when there are no more names corresponding to an occupation.
--Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.



SELECT
	Doctor,
	Professor,
	Singer,
	Actor
FROM
	(
	SELECT
		NAME,
		occupation,
		ROW_NUMBER() OVER(PARTITION BY occupation ORDER BY NAME) AS row_num
	FROM occupations) AS TEMP
pivot
(
max(NAME) FOR occupation IN (Doctor, Professor, Singer, Actor)
) AS pivottable;