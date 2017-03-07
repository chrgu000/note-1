SELECT
  *
FROM
  ti_procurement tp
WHERE tp.update_date > :sql_last_value