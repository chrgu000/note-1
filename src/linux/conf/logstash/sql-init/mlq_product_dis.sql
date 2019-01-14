SELECT 
  mp.dis_goods_id AS id,
  mp.dis_goods_id AS parent_id,
  mp.product_name AS product_name_noa,
  mp.product_name,
  mpa.* 
FROM
  (SELECT 
    mdr.id dis_goods_id,
    mp.* 
  FROM
    mlq_distribution_rel mdr,
    mlq_distribution md,
    mlq_product mp 
  WHERE mdr.dis_product_id = md.id 
    AND md.product_id = mp.id) mp,
  (SELECT 
    mpa.product_id,
    tranAddr (
      MAX(
  CASE
    mpa.attr_name 
    WHEN '销售地区' 
    THEN mpa.attr_value 
    ELSE NULL 
  END
      ),
      '-'
    ) sale_region,
    tranAddr (
      MAX(
  CASE
    mpa.attr_name 
    WHEN '出库地区' 
    THEN mpa.attr_value 
    ELSE NULL 
  END
      ),
      '-'
    ) repository_region,
    tranAddr (
      MAX(
  CASE
    mpa.attr_name 
    WHEN '出库地区' 
    THEN mpa.attr_value 
    ELSE NULL 
  END
      ),
      '-'
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
  ELSE 0 
      END
    ) unit,
    MAX(
      CASE
  mpa.attr_name 
  WHEN '交货天数' 
  THEN mpa.attr_value 
  ELSE 0 
      END
    ) delivery_day,
    MAX(
      CASE
  mpa.attr_name 
  WHEN '包装类型' 
  THEN mpa.attr_value 
  ELSE NULL 
      END
    ) package_type 
  FROM
    mlq_product_attr mpa,
    (SELECT 
      mdr.id dis_goods_id,
      mp.* 
    FROM
      mlq_distribution_rel mdr,
      mlq_distribution md,
      mlq_product mp 
    WHERE mdr.dis_product_id = md.id 
      AND md.product_id = mp.id) mp1 
  WHERE mpa.product_id = mp1.id 
  GROUP BY mpa.product_id) mpa 
WHERE mp.id = mpa.product_id