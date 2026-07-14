## Dataset

This project uses the **Brazilian E-Commerce Public Dataset by Olist**.

Please download the dataset from Kaggle:
https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

Once downloaded, place all CSV files in the following folder:

data/raw/                                                            
------------------------------------------------------------------------------
Project ini menggunakan **Brazilian E-Commerce Public Dataset by Olist**.
Silakan unduh dataset dari Kaggle
https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

Setelah diunduh, letakkan seluruh file CSV ke folder:

data/raw/

## Key Findings
------------------------------------------------------------------------------
- Loaded 9 raw CSV datasets.
- Identified primary keys for the main entities (`orders`, `customers`, `products`, `sellers`, ``product_category_name`).
- Validated foreign key relationships between tables.
- Found 610 missing `product_category_name` values.
- Found 13 product rows with categories missing from the translation table.
------------------------------------------------------------------------------
## Progress
- [X]Project setup
- [X]Data ingestion
- [X]Data Profiling
- [X]Primary Key validation
- [X]Foreign Key validation
- [X]Data Dictionary