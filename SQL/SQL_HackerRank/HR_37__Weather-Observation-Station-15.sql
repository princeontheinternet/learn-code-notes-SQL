--Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345.
--Round your answer to 4 decimal places.


SELECT
	top 1 CAST(round(long_w, 4) AS NUMERIC(10,	4))
FROM
	station
WHERE
	lat_n < 137.2345
ORDER BY lat_n DESC;

--OR

SELECT
	CAST(LONG_W AS DECIMAL(10,	4))
FROM
	STATION
WHERE
	LAT_N = (SELECT MAX(LAT_N) FROM	STATION	WHERE LAT_N < 137.2345);
	
	
	