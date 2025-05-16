-- Question 1
-- Create table in 1NF
CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100)
);

-- Insert data in 1NF format
INSERT INTO ProductDetail_1NF(OrderID, CustomerName, Product)
VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');

-- Create orders table
CREATE TABLE Orders_2NF (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- Insert data into orders table
INSERT INTO Orders_2NF (OrderID, CustomerName)
VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- Create order_products table for the many-to-many relationship
CREATE TABLE Order_Products_2NF (
    OrderProductID INT PRIMARY KEY,
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    FOREIGN KEY(OrderID) REFERENCES Orders_2NF(OrderID)
);

-- Insert data into order_products table
INSERT INTO Order_Products_2NF (OrderProductID, OrderID, Product, Quantity)
VALUES
(1, 101, 'Laptop', 2),
(2, 101, 'Mouse', 1),
(3, 102, 'Tablet', 3),
(4, 102, 'Keyboard', 1),
(5, 102, 'Mouse', 2),
(6, 103, 'Phone', 1);
