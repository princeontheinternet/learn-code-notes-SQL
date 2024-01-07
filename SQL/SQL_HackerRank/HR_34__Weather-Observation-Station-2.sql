--Query the following two values from the STATION table:

--The sum of all values in LAT_N rounded to a scale of 2 decimal places.
--The sum of all values in LONG_W rounded to a scale of 2 decimal places.



SELECT
	CAST(round(sum(lat_n), 2) AS NUMERIC(18,2)),
	CAST(round(sum(long_w), 2) AS NUMERIC(18,2))
FROM
	station;