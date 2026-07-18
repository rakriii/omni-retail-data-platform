import pandas as pd

def extract(csv_path):
    """
    Read CSV file into a pandas DataFrame.
    """

    print(f"Extracting: {csv_path}")

    df = pd.read_csv(csv_path)

    return df