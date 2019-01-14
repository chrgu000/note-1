SELECT
  tranCat (LEFT(cat_code, LENGTH(cat_code) - 1)) AS category,
  (SELECT
    brand_name
  FROM
    mlq_brand
  WHERE id = brand_id) brand_name,
  (SELECT
    brand_name
  FROM
    mlq_brand
  WHERE id = brand_id) brand_name_noa,
  (SELECT
    msi.shop_name
  FROM
    mlq_shop_info msi
  WHERE msi.id = mg.shop_id) new_seller_nick,
  (SELECT
    msi.shop_name
  FROM
    mlq_shop_info msi
  WHERE msi.id = mg.shop_id) new_seller_nick_noa,
  mg.*
FROM
  mlq_goods mg
WHERE mg.shop_id IS NOT NULL