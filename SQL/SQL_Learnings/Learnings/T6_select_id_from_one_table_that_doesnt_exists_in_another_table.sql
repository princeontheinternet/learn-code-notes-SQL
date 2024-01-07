--How to select all records from one table that do not exist in another table?


CREATE TABLE t1 (id1 int);

CREATE TABLE t2(id2 int);

INSERT INTO t1 VALUES (1), (2), (3), (4), (5);

INSERT INTO t2 VALUES (1), (2), (5);

select * from t1;

	|ID1|
	|---|
	|1  |
	|2  |
	|3  |
	|4  |
	|5  |


select * from t2;

	|ID2|
	|---|
	|1  |
	|2  |
	|5  |


SELECT
	t1.id1
FROM t1
LEFT JOIN t2
ON t1.id1 = t2.id2
WHERE t2.id2 IS NULL;


	|ID1|
	|---|
	|3  |
	|4  |


SELECT
	t1.id1
FROM t1
WHERE t1.id1 NOT IN 
    (SELECT t2.id2 FROM t2 );
	
	
	|ID1|
	|---|
	|3  |
	|4  |
