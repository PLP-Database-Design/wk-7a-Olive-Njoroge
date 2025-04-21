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