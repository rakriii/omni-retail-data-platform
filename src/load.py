from sqlalchemy import create_engine
from config import *

from config import *

engine = create_engine(
    f"mysql+pymysql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}"
)

def load(df, table_name):
    """
    Load DataFrame into MySQL.
    """

    print(f"Loading {table_name}...")

    df.to_sql(
        table_name,
        con=engine,
        if_exists="append",
        index=False
    )

    print(f"{len(df)} rows inserted.")