-- CREATE TABLES

CREATE TABLE student (
    student_id NUMBER,
    student_name VARCHAR2(30),
    dept_id NUMBER
);

CREATE TABLE department (
    dept_id NUMBER,
    dept_name VARCHAR2(30)
);

-- INSERT VALUES

INSERT INTO student VALUES (1, 'Priya', 101);
INSERT INTO student VALUES (2, 'Arun', 102);
INSERT INTO student VALUES (3, 'Ravi', 103);
INSERT INTO student VALUES (4, 'Kumar', 104);

INSERT INTO department VALUES (101, 'Computer Science');
INSERT INTO department VALUES (102, 'Commerce');
INSERT INTO department VALUES (103, 'Mathematics');
INSERT INTO department VALUES (105, 'Physics');

COMMIT;

-- DISPLAY TABLES

SELECT * FROM student;

SELECT * FROM department;


-- 1. INNER JOIN

SELECT student.student_id,
       student.student_name,
       department.dept_name
FROM student
INNER JOIN department
ON student.dept_id = department.dept_id;


-- 2. LEFT JOIN

SELECT student.student_id,
       student.student_name,
       department.dept_name
FROM student
LEFT JOIN department
ON student.dept_id = department.dept_id;


-- 3. RIGHT JOIN

SELECT student.student_id,
       student.student_name,
       department.dept_name
FROM student
RIGHT JOIN department
ON student.dept_id = department.dept_id;


-- 4. FULL OUTER JOIN

SELECT student.student_id,
       student.student_name,
       department.dept_name
FROM student
FULL OUTER JOIN department
ON student.dept_id = department.dept_id;
