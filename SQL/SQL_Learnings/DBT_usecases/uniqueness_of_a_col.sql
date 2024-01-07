SELECT
	count(*) AS failures,
	count(*) != 0 AS should_warn,
	count(*) != 0 AS should_error
FROM
	(
	SELECT
		customer_id AS unique_field,
		count(*) AS n_records
	FROM DBT_FUNDAMENTAL_COURSE.dbt_prathore.stg_customers
	WHERE customer_id IS NOT NULL
	GROUP BY customer_id
	HAVING count(*) > 1
		 ) dbt_internal_test