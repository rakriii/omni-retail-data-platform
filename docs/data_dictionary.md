# Data Dictionary

## Overview

Database Olist memiliki 5 tabel
1.Tabel_customers
2.Tabel_geolocation
3.Tabel_order_items
4.Tabel_order_payments
5.Tabel_order_Reviews
6.Tabel_orders
7.Tabel_products
8.Tabel_sellers
9.Tabel_product_category_name_translation

## Tabel Customers
olist_customers_dataset
------------------------------
|Column |Type |Decs
-----------------------------------
|customer_id |                  str| PK |     
|customer_unique_id |           str|    |
|customer_zip_code_prefix |   int64|    |
|customer_city |                str|    |
|customer_state |               str|    |
|dtype: object |
