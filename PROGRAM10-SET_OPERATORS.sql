
-- CREATE TABLES
CREATE TABLE student1 (
    id NUMBER,
    name VARCHAR2(30)
);

CREATE TABLE student2 (
    id NUMBER,
    name VARCHAR2(30)
);

-- INSERT VALUES
INSERT INTO student1 VALUES (1, 'Arun');
INSERT INTO student1 VALUES (2, 'Priya');
INSERT INTO student1 VALUES (3, 'Ravi');

INSERT INTO student2 VALUES (2, 'Priya');
INSERT INTO student2 VALUES (3, 'Ravi');
INSERT INTO student2 VALUES (4, 'Kumar');

COMMIT;

-- DISPLAY BOTH TABLES
SELECT * FROM student1;
SELECT * FROM student2;

-- 1. UNION
SELECT * FROM student1
UNION
SELECT * FROM student2;

-- 2. UNION ALL
SELECT * FROM student1
UNION ALL
SELECT * FROM student2;

-- 3. INTERSECT
SELECT * FROM student1
INTERSECT
SELECT * FROM student2;

-- 4. MINUS
SELECT * FROM student1
MINUS
SELECT * FROM student2;
