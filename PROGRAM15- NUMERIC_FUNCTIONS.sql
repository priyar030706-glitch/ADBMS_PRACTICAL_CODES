-- CREATE TABLE

CREATE TABLE number_data (
    id NUMBER,
    num NUMBER
);

-- INSERT VALUES

INSERT INTO number_data VALUES (1, 25.75);
INSERT INTO number_data VALUES (2, -15.50);
INSERT INTO number_data VALUES (3, 42.35);
INSERT INTO number_data VALUES (4, 10.80);

COMMIT;

-- DISPLAY TABLE

SELECT * FROM number_data;


-- 1. ROUND
SELECT num, ROUND(num) AS rounded_value
FROM number_data;


-- 2. CEIL
SELECT num, CEIL(num) AS ceil_value
FROM number_data;


-- 3. FLOOR
SELECT num, FLOOR(num) AS floor_value
FROM number_data;


-- 4. ABS
SELECT num, ABS(num) AS absolute_value
FROM number_data;


-- 5. MOD
SELECT num, MOD(num, 5) AS remainder
FROM number_data;


-- 6. POWER
SELECT num, POWER(num, 2) AS square_value
FROM number_data;


-- 7. SQRT
SELECT num, SQRT(ABS(num)) AS square_root
FROM number_data;


-- 8. TRUNC
SELECT num, TRUNC(num) AS truncated_value
FROM number_data;
