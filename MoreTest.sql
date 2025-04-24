CREATE TABLE IF NOT EXISTS Salesman (
    Salesman_id TEXT PRIMARY KEY,
    name TEXT,
    city TEXT,
    Commission REAL
);

INSERT INTO Salesman (Salesman_id, name, city, Commission) VALUES
('5001', 'James Hoog', 'New York', 0.15),
('5002', 'Nail Knite', 'Paris', 0.13),
('5005', 'Pit Alex', 'London', 0.11),
('5006', 'Lyon Paul', 'Paris', 0.14),
('5007', 'Paul Adam', 'Rome', 0.13),
('5003', 'Lauson Hen', 'San Jose', 0.12);

SELECT * FROM Salesman;

CREATE TABLE IF NOT EXISTS Orders (
    ord_no TEXT PRIMARY KEY,
    purch_amt REAL,
    ord_date TEXT,
    customer_id TEXT,
    salesman_id TEXT
);

INSERT INTO Orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES
('70001', 150.5, '2012-10-05', '3005', '5002'),
('70009', 270.65, '2012-09-10', '3001', '5005'),
('70002', 65.26, '2012-10-05', '3002', '5001'),
('70004', 110.5, '2012-08-17', '3009', '5003'),
('70007', 948.5, '2012-09-10', '3005', '5002'),
('70005', 2400.6, '2012-07-27', '3007', '5001'),
('70008', 5760, '2012-09-10', '3002', '5007'),
('70010', 1983.43, '2012-10-10', '3004', '5006'),
('70003', 2480.4, '2012-10-10', '3009', '5003'),
('70012', 250.45, '2012-06-27', '3008', '5002'),
('70011', 75.29, '2012-08-17', '3003', '5007'),
('70013', 3045.6, '2012-04-25', '3002', '5001');

CREATE TABLE IF NOT EXISTS SUPPLIERS (
    SUPP_ID INTEGER PRIMARY KEY,
    SUPP_NAME TEXT,
    CITY TEXT,
    STATUS INTEGER
);

INSERT INTO SUPPLIERS (SUPP_ID, SUPP_NAME, CITY, STATUS) VALUES
(1, 'Smit', 'London', 20),
(2, 'Jones', 'Paris', 10),
(3, 'Blake', 'Paris', 30),
(4, 'Clark', 'London', 20),
(5, 'Adams', 'Athens', 30);

SELECT * FROM SUPPLIERS;