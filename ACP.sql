CREATE TABLE Departments (DepartmentID INTEGER PRIMARY KEY, DepartmentName TEXT);
CREATE TABLE Employees (EmployeeID INTEGER PRIMARY KEY, FirstName TEXT, DepartmentID INTEGER, Salary REAL, FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID));
INSERT INTO Departments (DepartmentName) VALUES ('Sales'), ('Engineering'), ('Marketing');
INSERT INTO Employees (FirstName, DepartmentID, Salary) VALUES 
('John', 1, 60000), 
('Jane', 2, 90000),
('Alice', 1, 65000), 
('Bob', 2, 95000),
('Charlie', 3, 70000),
('Eva', 1, 58000),
('Frank', 3, 72000);
SELECT * FROM Employees;
UPDATE Employees SET Salary = Salary * 1.1 WHERE DepartmentID = 2;
DELETE FROM Employees WHERE DepartmentID = 1 AND Salary < 60000;
ALTER TABLE Employees ADD COLUMN PerformanceRating INTEGER;
SELECT Departments.DepartmentName, AVG(Employees.Salary) FROM Employees JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID GROUP BY Departments.DepartmentName;
