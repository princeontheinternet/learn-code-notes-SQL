SELECT
	count(*) AS failures,
	count(*) != 0 AS should_warn,
	count(*) != 0 AS should_error
FROM
	(
WITH child AS (
	SELECT
		customer_id AS from_field
	FROM DBT_FUNDAMENTAL_COURSE.dbt_prathore.stg_orders
	WHERE customer_id IS NOT NULL
),
	parent AS (
	SELECT
		customer_id AS to_field
	FROM DBT_FUNDAMENTAL_COURSE.dbt_prathore.stg_customers
)
	SELECT
		from_field
	FROM child
	LEFT JOIN parent
    ON child.from_field = parent.to_field
	WHERE parent.to_field IS NULL
	  ) dbt_internal_test
