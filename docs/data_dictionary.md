# Data Dictionary

## Overview

The Olist database has 5 tables.
1.Tabel_customers
2.Tabel_geolocation
3.Tabel_order_items
4.Tabel_order_payments
5.Tabel_order_Reviews
6.Tabel_orders
7.Tabel_products
8.Tabel_sellers
9.Tabel_product_category_name_translation

## Table Customers
olist_customers_dataset
|Column |Type |Decs
-----------------------------------
customer_id                   str| PK |     
customer_unique_id            str|    |
customer_zip_code_prefix    int64|    |
customer_city                 str|    |
customer_state                str|    |
dtype: object 

## Table Geolocation
olist_geolocation_dataset
|Column |Type |Decs
------------------------------
geolocation_zip_code_prefix      int64| |
geolocation_lat                float64| |
geolocation_lng                float64| |
geolocation_city                   str| |
geolocation_state                  str| |
dtype: object

## Table Order Items
olist_order_items_dataset
|Column|Type|Decs
------------------------------
order_id                   str|FK   |
order_item_id            int64|     |
product_id                 str|FK   |
seller_id                  str|FK   |
shipping_limit_date        str|     |
price                  float64|     |
freight_value          float64|     |
dtype: object

## Table Order Payments
olist_order_payments_dataset
|Column|Type|Decs
------------------------------
order_id                    str|FK  |
payment_sequential        int64|    |
payment_type                str|    |
payment_installments      int64|    |
payment_value           float64|    |
dtype: object

## Table Order Reviews
olist_order_reviews_dataset
|Column|Type|Decs
------------------------------
review_id                    str|   |
order_id                     str|FK |
review_score               int64|   |
review_comment_title         str|   |
review_comment_message       str|   |
review_creation_date         str|   |
review_answer_timestamp      str|   |
dtype: object

## Table Orders
olist_orders_dataset
|Column|Type|Decs
------------------------------
order_id                         str|PK |
customer_id                      str|FK |
order_status                     str|   |
order_purchase_timestamp         str|   |
order_approved_at                str|   |
order_delivered_carrier_date     str|   |
order_delivered_customer_date    str|   |
order_estimated_delivery_date    str|   |
dtype: object

## Table Products
olist_products_dataset
|Column|Type|Decs
------------------------------
product_id                        str|PK|
product_category_name             str|FK|
product_name_lenght           float64|  |
product_description_lenght    float64|  |
product_photos_qty            float64|  |
product_weight_g              float64|  |
product_length_cm             float64|  |
product_height_cm             float64|  |
product_width_cm              float64|  |
dtype: object

## Table Sellers
olist_sellers_dataset
|Column|Type|Decs
------------------------------
seller_id                   str|PK  |
seller_zip_code_prefix    int64|    |
seller_city                 str|    |
seller_state                str|    |
dtype: object


## Table Product Category Name Translation
product_category_name_translation
|Column|Type|Decs
------------------------------
product_category_name            str|PK |
product_category_name_english    str|   |
dtype: object


## Final Table FK & PK

|Tabel|PK|FK|
-----------------------------------------------------------------------------
|Customers         |Customer_Id             | -                             |
|Order             |Order_Id                |Customer_Id                    |
|Order_Items       | -                      |Order_Id, Product_Id, Seller_Id|
|Order_Payments    | -                      |Order_Id                       |
|Order_Reviews     | -                      |Order_Id                       |
|Sellers           |Seller_Id               | -                             |
|Products          |Product_Id              |Product_category_name          |
|Product_Category  |Product_Category_Name   | -                             |
|Geolocation       | -                      | -                             |