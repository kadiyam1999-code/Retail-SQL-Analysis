-- Retail SQL Project: Create Tables & Insert Data

CREATE DATABASE IF NOT EXISTS retail_sql_project;
USE retail_sql_project;

-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    customer_city VARCHAR(50)
);

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

-- Transactions Table
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    sale_date DATE,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY(product_id) REFERENCES products(product_id)
);

-- Insert Data
INSERT INTO customers VALUES
(1, 'Nag', 'Hyderabad'),
(2, 'Koti', 'Bangalore'),
(3, 'Surya', 'Mumbai'),
(4, 'Priya', 'Chennai');

INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 55000),
(102, 'Mobile', 'Electronics', 15000),
(103, 'Headphones', 'Accessories', 2000),
(104, 'Shoes', 'Fashion', 2500);

INSERT INTO transactions VALUES
(1001, 1, 101, 1, '2024-01-15'),
(1002, 2, 102, 2, '2024-02-10'),
(1003, 3, 103, 1, '2024-02-18'),
(1004, 1, 104, 3, '2024-03-02'),
(1005, 4, 102, 1, '2024-03-15'),
(1006, 3, 101, 1, '2024-04-05');
