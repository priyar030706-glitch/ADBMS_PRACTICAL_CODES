-- CREATE TABLE

CREATE TABLE department (
    dept_id NUMBER,
    dept_name VARCHAR2(30)
);

CREATE TABLE student (
    student_id NUMBER,
    student_name VARCHAR2(30),
    email VARCHAR2(50),
    age NUMBER,
    dept_id NUMBER
);

-- INSERT VALUES

INSERT INTO department VALUES (101, 'Computer Science');
INSERT INTO department VALUES (102, 'Commerce');

INSERT INTO student VALUES (1, 'Priya', 'priya@gmail.com', 20, 101);
INSERT INTO student VALUES (2, 'Arun', 'arun@gmail.com', 21, 102);

COMMIT;

-- PRIMARY KEY

ALTER TABLE student
ADD CONSTRAINT pk_student
PRIMARY KEY (student_id);

-- UNIQUE

ALTER TABLE student
ADD CONSTRAINT uq_student_email
UNIQUE (email);

-- FOREIGN KEY

ALTER TABLE student
ADD CONSTRAINT fk_student_dept
FOREIGN KEY (dept_id)
REFERENCES department(dept_id);

-- CHECK

ALTER TABLE student
ADD CONSTRAINT chk_student_age
CHECK (age >= 18);

-- SELECT

SELECT * FROM student;
