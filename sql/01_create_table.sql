-- Create Database
Create database Olist;
Use Olist;

-- CREATE TABLE customers
CREATE TABLE customers(
    customer_id varchar (38) NOT NULL PRIMARY KEY,
    customer_unique_id varchar (38),
    customer_zip_code_prefix INT,
    customer_city varchar (50),
    customer_state char (2)
);

-- CREATE TABLE geolocation
CREATE TABLE geolocation(
    geolocation_zip_code_prefix INT,
    geolocation_lat decimal(10, 7),
    geolocation_lng decimal(10, 7),
    geolocation_city varchar (50),
    geolocation_state varchar (2)

);

-- CREATE TABLE orders
CREATE TABLE orders(
    order_id varchar (38) NOT NULL PRIMARY KEY,
    customer_id varchar (38) NOT NULL,
    order_status varchar (30),
    order_purchase_timestamp datetime,
    order_approved_at datetime,
    order_delivered_carrier_date datetime,
    order_delivered_customer_date datetime,
    order_estimated_delivery_date datetime,

    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Table Sellers
CREATE TABLE sellers(
    seller_id varchar (38) NOT NULL PRIMARY KEY,
    seller_zip_code_prefix INT,
    seller_city varchar (50),
    seller_state char(2)
);

-- Table product_category_name_translation
CREATE TABLE product_category_name_translation(
    product_category_name varchar (50) PRIMARY KEY,
    product_category_name_english varchar (50)
);

-- Table products
CREATE TABLE products(
    product_id varchar (38) NOT NULL PRIMARY KEY,
    product_category_name varchar (50),
    product_name_length INT,
    product_description_length INT,
    product_photos_qty INT,
    product_weight_g INT,
    product_length_cm INT,
    product_height_cm INT,
    product_width_cm INT,

    FOREIGN KEY (product_category_name) REFERENCES product_category_name_translation(product_category_name)

);

-- Table order_items
CREATE TABLE order_items(
    order_id varchar (38) NOT NULL,
    order_item_id INT NOT NULL,
    product_id varchar (38) NOT NULL,
    seller_id varchar (38) NOT NULL,
    shipping_limit_date datetime,
    price decimal(10, 2),
    freight_value decimal(10,  2),

    PRIMARY KEY (order_id, order_item_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (seller_id) REFERENCES sellers(seller_id)

);

-- Table order_payments
CREATE TABLE  order_payments(
    order_id varchar (38) NOT NULL,
    payment_sequential INT NOT NULL,
    payment_type varchar (20),
    payment_installments INT,
    payment_value decimal(10, 2),

    PRIMARY KEY (order_id, payment_sequential),
    FOREIGN KEY (order_id)  REFERENCES orders(order_id)
);

-- Table order_reviews
CREATE TABLE order_reviews(
    review_id varchar (38) NOT NULL,
    order_id  varchar (38) NOT NULL,
    review_score INT,
    review_comment_title varchar (100),
    review_comment_message TEXT,
    review_creation_date datetime,
    review_answer_timestamp datetime,

    PRIMARY KEY (order_id, review_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)

);