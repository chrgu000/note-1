SELECT 
  mdr.id as id,
  mdr.shop_id AS parent_id,   
  mdr.is_distribute,
  mdr.sale_price AS sale_price,
  mg.id AS goods_id,
  mdr.title,
  mdr.status AS goods_status,
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
  mg.cat_code,
  mg.brand_id,
  mg.goods_model,
  mg.goods_desc,
  mg.goods_selling_point,
  mg.is_listing_now,
  mg.distribution_mode,
  mg.shop_recommended,
  mg.admin_recommended,
  mg.is_self,
  mg.sort,
  mg.weight,
  mdr.gmt_modify as gmt_listing,
  mdr.shop_id as shop_id 
FROM
  mlq_distribution md,
  mlq_distribution_rel mdr,
  mlq_goods mg 
WHERE md.id = mdr.dis_product_id 
  AND md.goods_code = mg.id