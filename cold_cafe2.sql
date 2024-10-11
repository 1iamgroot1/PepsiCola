-- Create the database
CREATE DATABASE IF NOT EXISTS cold_cafe;

-- Use the newly created database
USE cold_cafe;

-- Create Categories table
CREATE TABLE IF NOT EXISTS Categories (
    categoryID INT AUTO_INCREMENT PRIMARY KEY,
    categoryName VARCHAR(50) NOT NULL
);

-- Create Products table
CREATE TABLE IF NOT EXISTS Products (
    productID INT AUTO_INCREMENT PRIMARY KEY,
    categoryID INT NOT NULL,
    productCode VARCHAR(50) NOT NULL,
    productName VARCHAR(100) NOT NULL,
    listPrice DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (categoryID) REFERENCES Categories(categoryID)
);

-- Insert sample data into Categories table
INSERT INTO Categories (categoryName) VALUES 
    ('Regular'),
    ('Zero Sugar'),
    ('Diet');

-- Insert sample data into Products table
INSERT INTO Products (categoryID, productCode, productName, listPrice) VALUES
    (1, 'REG001', 'Regular Coffee', 2.50),
    (2, 'ZERO001', 'Zero Sugar Cola', 3.00),
    (3, 'DIET001', 'Diet Lemonade', 2.75);
