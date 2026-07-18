def transform(df):
    """
    Apply basic data transformations.
    """

    print("Transforming data...")

    # contoh
    df.columns = df.columns.str.lower()

    df = df.rename(columns={
        "product_name_lenght": "product_name_length",
        "product_description_lenght": "product_description_length"
    })


    return df