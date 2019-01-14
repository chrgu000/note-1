SELECT
  *,
  tranAddr (TRIM(BOTH '|' FROM rs.rs_area), '|') area_val
FROM
  resources_single rs