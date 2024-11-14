-- Create the database
CREATE DATABASE RetailCustomerSegmentation;
USE RetailCustomerSegmentation;

-- Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50),
    signup_date DATE
);

-- Products Table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category_id INT,
    price DECIMAL (10, 2)
);

-- Categories Table
CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

-- Transactions Table
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    purchase_date DATE,
    quantity INT,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Sample Data Insertion

-- Insert categories
INSERT INTO Categories (category_id, category_name) VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Home Goods'),
(4, 'Groceries');

-- Insert products
INSERT INTO Products (product_id, product_name, category_id, price) VALUES
(101, 'Smartphone', 1, 699.99),
(102, 'Jeans', 2, 49.99),
(103, 'Microwave', 3, 89.99),
(104, 'Milk', 4, 1.99);

-- Insert customers
INSERT INTO Customers (customer_id, name, age, gender, city, signup_date) VALUES
(1, 'Alice Smith', 28, 'Female', 'New York', '2024-01-15'),
(2, 'John Doe', 35, 'Male', 'Los Angeles', '2022-11-20'),
(3, 'Emma Johnson', 40, 'Female', 'Chicago', '2023-05-05');

-- Insert transactions
INSERT INTO Transactions (transaction_id, customer_id, product_id, purchase_date, quantity, total_amount) VALUES
(1001, 1, 101, '2024-02-01', 1, 699.99),
(1002, 2, 102, '2024-03-10', 2, 99.98),
(1003, 3, 103, '2024-06-12', 1, 89.99),
(1004, 1, 104, '2024-07-21', 5, 9.95);
