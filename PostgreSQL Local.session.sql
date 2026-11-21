CREATE DATABASE ems_db;

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    department VARCHAR(100),
    salary NUMERIC(10, 2),
    joining_date DATE DEFAULT CURRENT_DATE
);

INSERT INTO employees
(name, email, department, salary)
VALUES
('abrar', 'barm@gmail.com', 'Engr', 4500);

SELECT * FROM employees;

SELECT *
FROM employees
WHERE id = '1';

UPDATE employees
SET salary = 5500
WHERE id = 1;

DELETE FROM employees
WHERE id = 3;

CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id)
    REFERENCES departments(id)
);

