-- QUESTION 1
-- DELETE Products COLUMN
ALTER TABLE productDetail
DROP COLUMN products;

-- CREATE NEW TABLE FOR PRODUCTS
CREATE TABLE products(
productsId INT PRIMARY KEY AUTO_INCREMENT,
Pname VARCHAR (100),
OrderID INT,
FOREIGN KEY(OrderID) REFERENCES productDetail(OrderID)
);

-- INSERT DATA INTO products
INSERT INTO products(Pname, OrderID)
VALUES ('Laptop', 101),('Mouse', 101),('Tablet', 102),(' Keyboard', 102),('Mouse',102),('Phone', 103);

SELECT * FROM products;

-- QUESTION 2

-- CREATE A TABLE FOR CUSTOMERS
CREATE TABLE customer(
CustomerName VARCHAR(100),
CustomerId INT PRIMARY KEY
);

-- INSERT DATA 
INSERT INTO customer(customerName, customerId)
VALUES ('John Doe', 101),('Jane Smith', 102),('Emily Clark', 103);

-- Create normalized OrderDetails table
CREATE TABLE OrderDetails (
  OrderID INT,
  Product VARCHAR(100),
  Quantity INT,
  FOREIGN KEY (OrderID) REFERENCES Customer(CustomerId)
);

-- INSERT DATA
INSERT INTO OrderDetails (OrderID, ProductName, Quantity)
VALUES 
  (101, 'Laptop', 2),
  (101, 'Mouse', 1),
  (102, 'Tablet', 3),
  (102, 'Keyboard', 1),
  (102, 'Mouse', 2),
  (103, 'Phone', 1);
