from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent.parent

DATA_DIR = BASE_DIR / "data"
RAW_DATA_DIR = DATA_DIR / "raw"

DB_HOST = "localhost"
DB_PORT = 3306
DB_NAME = "Olist"
DB_USER = "root"
DB_PASSWORD = ""