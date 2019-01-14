SELECT
  mp_tmp.product_name AS product_name_noa,
  mp_tmp.*,
  mpa_tmp.*
FROM
  (SELECT
    *
  FROM
    mlq_product
  WHERE gmt_modify > :sql_last_value
  OR gmt_create > :sql_last_value
  ) mp_tmp,
  (SELECT
    mpa.product_id,
    MAX(
      CASE
        mpa.attr_name
        WHEN '销售地区'
        THEN IFNULL(
          tranAddr (mpa.attr_value, '-'),
          CAST(mpa.attr_value AS CHAR(50))
        )
        ELSE NULL
      END
    ) sale_region,
    MAX(
      CASE
        mpa.attr_name
        WHEN '出库地区'
        THEN IFNULL(
          tranAddr (mpa.attr_value, '-'),
          CAST(mpa.attr_value AS CHAR(50))
        )
        ELSE NULL
      END
    ) repository_region,
    MAX(
      CASE
        mpa.attr_name
        WHEN '出库地区'
        THEN IFNULL(
          tranAddr (mpa.attr_value, '-'),
          CAST(mpa.attr_value AS CHAR(50))
        )
        ELSE NULL
      END
    ) repository_region_noa,
    MAX(
      CASE
        mpa.attr_name
        WHEN '最小起订量'
        THEN mpa.attr_value
        ELSE 0
      END
    ) min_quantity,
    MAX(
      CASE
        mpa.attr_name
        WHEN '库存量'
        THEN mpa.attr_value
        ELSE 0
      END
    ) stock_quantity,
    MAX(
      CASE
        mpa.attr_name
        WHEN '单位'
        THEN mpa.attr_value
        ELSE '吨'
      END
    ) unit,
    MAX(
      CASE
        mpa.attr_name
        WHEN '交货天数'
        THEN mpa.attr_value
        ELSE 1
      END
    ) delivery_day,
    MAX(
      CASE
        mpa.attr_name
        WHEN '包装类型'
        THEN mpa.attr_value
        ELSE '散装'
      END
    ) package_type
  FROM
    mlq_product_attr mpa
  WHERE mpa.product_id IN
    (SELECT
      id
    FROM
      mlq_product
    WHERE gmt_modify > :sql_last_value
    OR gmt_create > :sql_last_value)
  GROUP BY mpa.product_id) mpa_tmp
WHERE mp_tmp.id = mpa_tmp.product_id


