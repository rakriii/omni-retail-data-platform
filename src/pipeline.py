from config import RAW_DATA_DIR
from extract import extract
from transform import transform
from load import load

tables = {
    RAW_DATA_DIR / "olist_customers_dataset.csv": "customers",
    RAW_DATA_DIR / "olist_orders_dataset.csv": "orders",
    RAW_DATA_DIR / "product_category_name_translation.csv": "product_category_name_translation",
    RAW_DATA_DIR / "olist_products_dataset.csv": "products",
    RAW_DATA_DIR / "olist_sellers_dataset.csv": "sellers",
    RAW_DATA_DIR / "olist_order_items_dataset.csv": "order_items",
    RAW_DATA_DIR / "olist_order_payments_dataset.csv": "order_payments",
    RAW_DATA_DIR / "olist_order_reviews_dataset.csv": "order_reviews",
    RAW_DATA_DIR / "olist_geolocation_dataset.csv": "geolocation",
}

def main():
    for csv_path, table_name in tables.items():
        df = extract(csv_path)
        df = transform(df)
        load(df, table_name)

if __name__ == "__main__":
    main()