-- CREATE TABLE

CREATE TABLE employee (
    emp_id NUMBER,
    emp_name VARCHAR2(30),
    salary NUMBER,
    dept_id NUMBER
);

-- INSERT VALUES

INSERT INTO employee VALUES (1, 'Priya', 30000, 101);
INSERT INTO employee VALUES (2, 'Arun', 40000, 102);
INSERT INTO employee VALUES (3, 'Ravi', 50000, 101);
INSERT INTO employee VALUES (4, 'Kumar', 35000, 103);
INSERT INTO employee VALUES (5, 'Anu', 45000, 102);

COMMIT;

-- DISPLAY ALL RECORDS

SELECT * FROM employee;


-- 1. NESTED SUBQUERY
-- Employees whose salary is greater than average salary

SELECT emp_id, emp_name, salary
FROM employee
WHERE salary > (
    SELECT AVG(salary)
    FROM employee
);


-- 2. NESTED SUBQUERY
-- Employees who belong to the same department as Priya

SELECT emp_id, emp_name, dept_id
FROM employee
WHERE dept_id = (
    SELECT dept_id
    FROM employee
    WHERE emp_name = 'Priya'
);


-- 3. NESTED SUBQUERY
-- Employee with the highest salary

SELECT emp_id, emp_name, salary
FROM employee
WHERE salary = (
    SELECT MAX(salary)
    FROM employee
);


-- 4. NESTED SUBQUERY
-- Employee with the lowest salary

SELECT emp_id, emp_name, salary
FROM employee
WHERE salary = (
    SELECT MIN(salary)
    FROM employee
);
