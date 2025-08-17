CREATE DATABASE IF NOT EXISTS alx_book_store;

CREATE TABLE Authors (
author_id INT,
author_name VARCHAR(215),
CONSTRAINT pk_author_id PRIMARY KEY (author_id)    
);

CREATE TABLE Books (
book_id INT,
title VARCHAR(130),
author_id INT,
price DOUBLE,
publication_date DATE,
CONSTRAINT pk_book_id PRIMARY KEY (book_id),
CONSTRAINT fk_author_id FOREIGN KEY REFERENCES authors(author_id)  
);


CREATE TABLE Customers(
customer_id INT,
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT,
CONSTRAINT pk_customer_id PRIMARY KEY (customer_id)
)

CREATE TABLE Orders (
order_id INT,
customer_id INT,
order_date DATE, 
CONSTRAINT pk_order_id PRIMARY KEY (order_id),
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
)

CREATE TABLE Order_Details (
orderdetailid INT, 
order_id INT,
book_id INT, 
quantity DOUBLE,
CONSTRAINT pk_orderdetailid PRIMARY KEY (pk_orderdetailid),
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
FOREIGN KEY (book_id) REFERENCES Books(book_id)
)