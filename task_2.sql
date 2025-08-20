
USE alx_book_store;

-- Create Authors table
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT,
    author_name VARCHAR(215) NOT NULL,
    CONSTRAINT pk_author_id PRIMARY KEY (author_id)    
);

-- Create Books table
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT,
    title VARCHAR(130) NOT NULL,
    author_id INT NOT NULL,
    price DOUBLE NOT NULL,
    publication_date DATE,
    CONSTRAINT pk_book_id PRIMARY KEY (book_id),
    CONSTRAINT fk_author_id FOREIGN KEY (author_id) REFERENCES Authors(author_id)  
);

-- Create Customers table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE NOT NULL,
    address TEXT,
    CONSTRAINT pk_customer_id PRIMARY KEY (customer_id)
);

-- Create Orders table
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL, 
    CONSTRAINT pk_order_id PRIMARY KEY (order_id),
    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create Order_Details table
CREATE TABLE Order_Details (
    orderdetailid INT AUTO_INCREMENT, 
    order_id INT NOT NULL,
    book_id INT NOT NULL, 
    quantity DOUBLE NOT NULL,
    CONSTRAINT pk_orderdetailid PRIMARY KEY (orderdetailid),
    CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    CONSTRAINT fk_book_id FOREIGN KEY (book_id) REFERENCES Books(book_id)
);