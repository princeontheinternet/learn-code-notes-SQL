SELECT
	count(*) AS failures,
	count(*) != 0 AS should_warn,
	count(*) != 0 AS should_error
FROM
	(
WITH all_values AS (
	SELECT
		status AS value_field,
		count(*) AS n_records
	FROM DBT_FUNDAMENTAL_COURSE.dbt_prathore.stg_orders
	GROUP BY status
)
	SELECT * FROM all_values
	WHERE value_field NOT IN ('completed', 'shipped', 'returned', 'placed', 'return_pending')  
    ) dbt_internal_test