# EDA Findings

## Products
- 610 NULL values in product_category_name
- 13 rows contain categories not found in product_category_name_translation
- Invalid categories:
  - pc_gamer
  - portateis_cozinha_e_preparadores_de_alimentos
  
## Composite Key 
Several tables do not have a single unique column. Composite keys were identified through uniqueness validation.
`order_items`, (`order_id`, `order_item_id`) The combination is unique, while each column alone is not.                               
`order_payments` (`order_id`, `payment_sequential`) Multiple payments can exist for a single order.                                              
`order_reviews` (`order_id`, `review_id`) Neither column is unique individually, but their combination uniquely identifies each record. 

## Check the number of rows
 MariaDB [Olist]> SELECT COUNT(*) FROM customers;
+----------+
| COUNT(*) |
+----------+
|    99441 |
+----------+
1 row in set (0.309 sec)

MariaDB [Olist]> SELECT COUNT(*) FROM orders;
+----------+
| COUNT(*) |
+----------+
|    99441 |
+----------+
1 row in set (0.033 sec)

MariaDB [Olist]> SELECT COUNT(*) FROM products;
+----------+
| COUNT(*) |
+----------+
|    32951 |
+----------+
1 row in set (0.011 sec)

MariaDB [Olist]> SELECT COUNT(*) FROM order_items;
+----------+
| COUNT(*) |
+----------+
|   112650 |
+----------+
1 row in set (0.041 sec)

MariaDB [Olist]> SELECT COUNT(*) FROM order_reviews;
+----------+
| COUNT(*) |
+----------+
|    99224 |
+----------+
1 row in set (0.037 sec)

MariaDB [Olist]> SELECT COUNT(*) FROM order_payments;
+----------+
| COUNT(*) |
+----------+
|   103886 |
+----------+
1 row in set (0.030 sec)

MariaDB [Olist]> SELECT COUNT(*) FROM sellers;
+----------+
| COUNT(*) |
+----------+
|     3095 |
+----------+
1 row in set (0.001 sec)

MariaDB [Olist]> SELECT COUNT(*) FROM product_category_name_translation;
+----------+
| COUNT(*) |
+----------+
|       73 |
+----------+
1 row in set (0.000 sec)

MariaDB [Olist]> SELECT COUNT(*) FROM geolocation;
+----------+
| COUNT(*) |
+----------+
|  1000163 |
+----------+
1 row in set (0.381 sec)