CREATE DATABASE IF NOT EXIST alx_book_store;

CREATE TABLE books (
book_id INT,
title VARCHAR(130),
author_id INT,
price DOUBLE,
publication_date DATE,
CONSTRAINT pk_book_id PRIMARY KEY (book_id),
CONSTRAINT fk_author_id FOREIGN KEY REFERENCES authors(author_id)  
);

CREATE TABLE authors (
author_id INT,
author_name VARCHAR(215),
CONSTRAINT pk_author_id PRIMARY KEY (author_id)    
);

CREATE TABLE customers(
customer_id INT,
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT,
CONSTRAINT pk_customer_id PRIMARY KEY (customer_id)
)

CREATE TABLE orders (
order_id INT,
customer_id INT,
order_date DATE, 
CONSTRAINT pk_order_id PRIMARY KEY (order_id),
CONSTRAINT fk_customer_id FOREIGN KEY REFERENCES customers (customer_id)
)

CREATE TABLE order_details (
orderdetailid INT, 
order_id INT,
book_id INT, 
quantity DOUBLE,
CONSTRAINT pk_orderdetailid PRIMARY KEY (pk_orderdetailid),
CONSTRAINT fk_order_id FOREIGN KEY REFERENCES orders(order_id),
CONSTRAINT fk_book_id FOREIGN KEY REFERENCES books (book_id)
)