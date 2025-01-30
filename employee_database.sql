-- Create the database
CREATE DATABASE EmployeeDB;
USE EmployeeDB;

-- Create Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Age INT,
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    JoiningDate DATE
);

-- Insert sample data
INSERT INTO Employees (Name, Age, Department, Salary, JoiningDate) VALUES
('John Doe', 30, 'HR', 50000, '2022-01-15'),
('Jane Smith', 28, 'IT', 70000, '2021-12-10'),
('Mark Johnson', 35, 'Finance', 65000, '2020-11-20');

-- Fetch all employees
SELECT * FROM Employees;

-- Find employees in IT department
SELECT * FROM Employees WHERE Department = 'IT';

-- Increase salary of all employees by 10%
UPDATE Employees SET Salary = Salary * 1.10;

-- Delete employees who have left
DELETE FROM Employees WHERE Age > 60;
