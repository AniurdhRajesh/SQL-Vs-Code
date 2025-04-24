 CREATE TABLE Products (
  ProductID INTEGER PRIMARY KEY AUTOINCREMENT,
  ProductName TEXT NOT NULL,
  Price REAL NOT NULL
 );

 INSERT INTO Products (ProductName, Price) VALUES
 ('Laptop', 1200.00),
 ('Keyboard', 75.00),
 ('Mouse', 25.00),
 ('Monitor', 300.00),
 ('Desktop', 900.00),
 ('Tablet', 350.00);

 SELECT ProductName, Price FROM Products WHERE Price = (SELECT MIN(Price) FROM Products);

 SELECT ProductName, Price FROM Products WHERE Price = (SELECT MAX(Price) FROM Products);
