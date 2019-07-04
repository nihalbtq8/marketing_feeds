
#KWD
#======
DROP TABLE IF exists google_feed_kwd_en_male;
create table google_feed_kwd_en_male as  
SELECT cpf.sku id, "1021268294" as mobile_ios_app_store_id, concat("boutiqaat://product_id/", cpf.entity_id) as mobile_ios_app_link, concat("android-app://com.lezasolutions.boutiqaat/boutiqaat/product_id/", cpf.entity_id) as mobile_android_app_link, replace(cpf.name,'"','') as title, cpf.description as description, concat("https://www.boutiqaat.com/en-kw/", cpf.url_key, "/p/") as link, concat("https://v2cdn.boutiqaat.com/media/catalog/product", small_image) as image_link, if(ci.stock_status=1, "in stock", "out of stock") as availability, concat(cpf.price, " KWD") price, concat(coalesce(cpf.special_price, cpf.price), " KWD") as sale_price, cpf.special_to_date as sale_price_effective_date, gcat.google_cat_code as google_product_category, gcat.cat1_name, cpev.value as gtin, IF(length(trim(cpev.value)) in (8,12,13,14),"Yes","No") as identifier_exists, cpf.manufacturer_value as brand_name, 'new' as `condition`, (case when cpf.gender="2741" then "male" else "unisex" end) as `gender` FROM (select * from catalog_product_flat_1 where gender in ('2741', '4194,2741', '2741,4194')) as cpf LEFT JOIN product_google_cat gcat on gcat.id = cpf.sku LEFT JOIN cataloginventory_stock_status as ci ON ci.product_id = cpf.entity_id  LEFT JOIN catalog_category_product as cat on cpf.entity_id = cat.product_id LEFT JOIN directory_currency_rate curr on curr.currency_from = "KWD" and curr.currency_to="KWD" LEFT JOIN catalog_product_entity_varchar as cpev on cpf.entity_id = cpev.row_id AND cpev.attribute_id = (SELECT attribute_id FROM eav_attribute WHERE attribute_code = 'bar_code') GROUP BY cpf.sku ORDER BY cpf.entity_id ;	


#AED
#======
DROP TABLE IF exists google_feed_aed_en_male;
create table google_feed_aed_en_male as  
SELECT cpf.sku id, "1021268294" as mobile_ios_app_store_id, concat("boutiqaat://product_id/", cpf.entity_id) as mobile_ios_app_link, concat("android-app://com.lezasolutions.boutiqaat/boutiqaat/product_id/", cpf.entity_id) as mobile_android_app_link, replace(cpf.name,'"','') as title, cpf.description as description, concat("https://www.boutiqaat.com/en-ae/", cpf.url_key, "/p/") as link, concat("https://v2cdn.boutiqaat.com/media/catalog/product", small_image) as image_link, if(ci.stock_status=1,"in stock","out of stock") as availability, concat((FLOOR(cpf.price*curr.rate)+IF(MOD((cpf.price*curr.rate),1)>0.25,1,0)), " AED") price, concat((FLOOR(coalesce(cpf.special_price, cpf.price)*curr.rate)+IF(MOD((coalesce(cpf.special_price, cpf.price)*curr.rate),1)>0.25,1,0)), " AED") as sale_price, cpf.special_to_date as sale_price_effective_date, gcat.google_cat_code as google_product_category, gcat.cat1_name, cpev.value as gtin, IF(length(trim(cpev.value)) in (8,12,13,14),"Yes","No") as identifier_exists, cpf.manufacturer_value as brand_name, 'new' as `condition`, (case when cpf.gender="2741" then "male" else "unisex" end) as `gender` FROM (select * from catalog_product_flat_1 where gender in ('2741', '4194,2741', '2741,4194')) as cpf LEFT JOIN product_google_cat gcat on gcat.id = cpf.sku LEFT JOIN cataloginventory_stock_status as ci ON ci.product_id = cpf.entity_id  LEFT JOIN catalog_category_product as cat on cpf.entity_id = cat.product_id LEFT JOIN directory_currency_rate curr on curr.currency_from = "KWD" and curr.currency_to="AED" LEFT JOIN catalog_product_entity_varchar as cpev on cpf.entity_id = cpev.row_id AND cpev.attribute_id = (SELECT attribute_id FROM eav_attribute WHERE attribute_code = 'bar_code') GROUP BY cpf.sku ORDER BY cpf.entity_id ;	



#BHD
#======
DROP TABLE IF exists google_feed_bhd_en_male;
create table google_feed_bhd_en_male as  
SELECT cpf.sku id, "1021268294" as mobile_ios_app_store_id, concat("boutiqaat://product_id/", cpf.entity_id) as mobile_ios_app_link, concat("android-app://com.lezasolutions.boutiqaat/boutiqaat/product_id/", cpf.entity_id) as mobile_android_app_link, replace(cpf.name,'"','') as title, cpf.description as description, concat("https://www.boutiqaat.com/en-bh/", cpf.url_key, "/p/") as link, concat("https://v2cdn.boutiqaat.com/media/catalog/product", small_image) as image_link, if(ci.stock_status=1, "in stock", "out of stock") as availability, concat((FLOOR(cpf.price*curr.rate)+IF(MOD((cpf.price*curr.rate),1)>0.25,1,0)), " BHD") price, concat((FLOOR(coalesce(cpf.special_price, cpf.price)*curr.rate)+IF(MOD((coalesce(cpf.special_price, cpf.price)*curr.rate),1)>0.25,1,0)), " BHD") as sale_price, cpf.special_to_date as sale_price_effective_date, gcat.google_cat_code as google_product_category, gcat.cat1_name, cpev.value as gtin, IF(length(trim(cpev.value)) in (8,12,13,14),"Yes","No") as identifier_exists, cpf.manufacturer_value as brand_name, 'new' as `condition`, (case when cpf.gender="2741" then "male" else "unisex" end) as `gender` FROM (select * from catalog_product_flat_1 where gender in ('2741', '4194,2741', '2741,4194')) as cpf LEFT JOIN product_google_cat gcat on gcat.id = cpf.sku LEFT JOIN cataloginventory_stock_status as ci ON ci.product_id = cpf.entity_id  LEFT JOIN catalog_category_product as cat on cpf.entity_id = cat.product_id LEFT JOIN directory_currency_rate curr on curr.currency_from = "KWD" and curr.currency_to="BHD" LEFT JOIN catalog_product_entity_varchar as cpev on cpf.entity_id = cpev.row_id AND cpev.attribute_id = (SELECT attribute_id FROM eav_attribute WHERE attribute_code = 'bar_code') GROUP BY cpf.sku ORDER BY cpf.entity_id ;	

#OMR
#======
DROP TABLE IF exists google_feed_omr_en_male;
create table google_feed_omr_en_male as  
SELECT cpf.sku id, "1021268294" as mobile_ios_app_store_id, concat("boutiqaat://product_id/", cpf.entity_id) as mobile_ios_app_link, concat("android-app://com.lezasolutions.boutiqaat/boutiqaat/product_id/", cpf.entity_id) as mobile_android_app_link, replace(cpf.name,'"','') as title, cpf.description as description, concat("https://www.boutiqaat.com/en-om/", cpf.url_key, "/p/") as link, concat("https://v2cdn.boutiqaat.com/media/catalog/product", small_image) as image_link, if(ci.stock_status=1, "in stock", "out of stock") as availability, concat((FLOOR(cpf.price*curr.rate)+IF(MOD((cpf.price*curr.rate),1)>0.25,1,0)), " OMR") price, concat((FLOOR(coalesce(cpf.special_price, cpf.price)*curr.rate)+IF(MOD((coalesce(cpf.special_price, cpf.price)*curr.rate),1)>0.25,1,0)), " OMR") as sale_price, cpf.special_to_date as sale_price_effective_date, gcat.google_cat_code as google_product_category, gcat.cat1_name, cpev.value as gtin, IF(length(trim(cpev.value)) in (8,12,13,14),"Yes","No") as identifier_exists, cpf.manufacturer_value as brand_name, 'new' as `condition`, (case when cpf.gender="2741" then "male" else "unisex" end) as `gender` FROM (select * from catalog_product_flat_1 where gender in ('2741', '4194,2741', '2741,4194')) as cpf LEFT JOIN product_google_cat gcat on gcat.id = cpf.sku LEFT JOIN cataloginventory_stock_status as ci ON ci.product_id = cpf.entity_id  LEFT JOIN catalog_category_product as cat on cpf.entity_id = cat.product_id LEFT JOIN directory_currency_rate curr on curr.currency_from = "KWD" and curr.currency_to="OMR" LEFT JOIN catalog_product_entity_varchar as cpev on cpf.entity_id = cpev.row_id AND cpev.attribute_id = (SELECT attribute_id FROM eav_attribute WHERE attribute_code = 'bar_code') GROUP BY cpf.sku ORDER BY cpf.entity_id ;	

#QAR
#======
DROP TABLE IF exists google_feed_qar_en_male;
create table google_feed_qar_en_male as  
SELECT cpf.sku id, "1021268294" as mobile_ios_app_store_id, concat("boutiqaat://product_id/", cpf.entity_id) as mobile_ios_app_link, concat("android-app://com.lezasolutions.boutiqaat/boutiqaat/product_id/", cpf.entity_id) as mobile_android_app_link, replace(cpf.name,'"','') as title, cpf.description as description, concat("https://www.boutiqaat.com/en-qa/", cpf.url_key, "/p/") as link, concat("https://v2cdn.boutiqaat.com/media/catalog/product", small_image) as image_link, if(ci.stock_status=1, "in stock", "out of stock") as availability, concat((FLOOR(cpf.price*curr.rate)+IF(MOD((cpf.price*curr.rate),1)>0.25,1,0)), " QAR") price, concat((FLOOR(coalesce(cpf.special_price, cpf.price)*curr.rate)+IF(MOD((coalesce(cpf.special_price, cpf.price)*curr.rate),1)>0.25,1,0)), " QAR") as sale_price, cpf.special_to_date as sale_price_effective_date, gcat.google_cat_code as google_product_category, gcat.cat1_name, cpev.value as gtin, IF(length(trim(cpev.value)) in (8,12,13,14),"Yes","No") as identifier_exists, cpf.manufacturer_value as brand_name, 'new' as `condition`, (case when cpf.gender="2741" then "male" else "unisex" end) as `gender` FROM (select * from catalog_product_flat_1 where gender in ('2741', '4194,2741', '2741,4194')) as cpf LEFT JOIN product_google_cat gcat on gcat.id = cpf.sku LEFT JOIN cataloginventory_stock_status as ci ON ci.product_id = cpf.entity_id  LEFT JOIN catalog_category_product as cat on cpf.entity_id = cat.product_id LEFT JOIN directory_currency_rate curr on curr.currency_from = "KWD" and curr.currency_to="QAR" LEFT JOIN catalog_product_entity_varchar as cpev on cpf.entity_id = cpev.row_id AND cpev.attribute_id = (SELECT attribute_id FROM eav_attribute WHERE attribute_code = 'bar_code') GROUP BY cpf.sku ORDER BY cpf.entity_id ;	

#SAR
#======
DROP TABLE IF exists google_feed_sar_en_male;
create table google_feed_sar_en_male as  
SELECT cpf.sku id, "1021268294" as mobile_ios_app_store_id, concat("boutiqaat://product_id/", cpf.entity_id) as mobile_ios_app_link, concat("android-app://com.lezasolutions.boutiqaat/boutiqaat/product_id/", cpf.entity_id) as mobile_android_app_link, replace(cpf.name,'"','') as title, cpf.description as description, concat("https://www.boutiqaat.com/en-sa/", cpf.url_key, "/p/") as link, concat("https://v2cdn.boutiqaat.com/media/catalog/product", small_image) as image_link, if(ci.stock_status=1, "in stock", "out of stock") as availability, concat((FLOOR(cpf.price*curr.rate)+IF(MOD((cpf.price*curr.rate),1)>0.25,1,0)), " SAR") price, concat((FLOOR(coalesce(cpf.special_price, cpf.price)*curr.rate)+IF(MOD((coalesce(cpf.special_price, cpf.price)*curr.rate),1)>0.25,1,0)), " SAR") as sale_price, cpf.special_to_date as sale_price_effective_date, gcat.google_cat_code as google_product_category, gcat.cat1_name, cpev.value as gtin, IF(length(trim(cpev.value)) in (8,12,13,14),"Yes","No") as identifier_exists, cpf.manufacturer_value as brand_name, 'new' as `condition`, (case when cpf.gender="2741" then "male" else "unisex" end) as `gender` FROM (select * from catalog_product_flat_1 where gender in ('2741', '4194,2741', '2741,4194')) as cpf LEFT JOIN product_google_cat gcat on gcat.id = cpf.sku LEFT JOIN cataloginventory_stock_status as ci ON ci.product_id = cpf.entity_id  LEFT JOIN catalog_category_product as cat on cpf.entity_id = cat.product_id LEFT JOIN directory_currency_rate curr on curr.currency_from = "KWD" and curr.currency_to="SAR" LEFT JOIN catalog_product_entity_varchar as cpev on cpf.entity_id = cpev.row_id AND cpev.attribute_id = (SELECT attribute_id FROM eav_attribute WHERE attribute_code = 'bar_code') GROUP BY cpf.sku ORDER BY cpf.entity_id ;	

#USD
#======
DROP TABLE IF exists google_feed_usd_en_male;
create table google_feed_usd_en_male as  
SELECT cpf.sku id, "1021268294" as mobile_ios_app_store_id, concat("boutiqaat://product_id/", cpf.entity_id) as mobile_ios_app_link, concat("android-app://com.lezasolutions.boutiqaat/boutiqaat/product_id/", cpf.entity_id) as mobile_android_app_link, replace(cpf.name,'"','') as title, cpf.description as description, concat("https://www.boutiqaat.com/en-kw/", cpf.url_key, "/p/") as link, concat("https://v2cdn.boutiqaat.com/media/catalog/product", small_image) as image_link, if(ci.stock_status=1, "in stock", "out of stock") as availability, concat((FLOOR(cpf.price*curr.rate)+IF(MOD((cpf.price*curr.rate),1)>0.25,1,0)), " USD") price, concat((FLOOR(coalesce(cpf.special_price, cpf.price)*curr.rate)+IF(MOD((coalesce(cpf.special_price, cpf.price)*curr.rate),1)>0.25,1,0)), " USD") as sale_price, cpf.special_to_date as sale_price_effective_date, gcat.google_cat_code as google_product_category, gcat.cat1_name, cpev.value as gtin, IF(length(trim(cpev.value)) in (8,12,13,14),"Yes","No") as identifier_exists, cpf.manufacturer_value as brand_name, 'new' as `condition`, (case when cpf.gender="2741" then "male" else "unisex" end) as `gender` FROM (select * from catalog_product_flat_1 where gender in ('2741', '4194,2741', '2741,4194')) as cpf LEFT JOIN product_google_cat gcat on gcat.id = cpf.sku LEFT JOIN cataloginventory_stock_status as ci ON ci.product_id = cpf.entity_id  LEFT JOIN catalog_category_product as cat on cpf.entity_id = cat.product_id LEFT JOIN directory_currency_rate curr on curr.currency_from = "KWD" and curr.currency_to="USD" LEFT JOIN catalog_product_entity_varchar as cpev on cpf.entity_id = cpev.row_id AND cpev.attribute_id = (SELECT attribute_id FROM eav_attribute WHERE attribute_code = 'bar_code') GROUP BY cpf.sku ORDER BY cpf.entity_id  ;