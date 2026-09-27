
CREATE TABLE student1 (
    sid NUMBER,
    sname VARCHAR2(30)
);

INSERT INTO student1 VALUES (101, 'Ravi');
INSERT INTO student1 VALUES (102, 'Priya');

DELETE FROM student1
WHERE sid = 102;

ROLLBACK;

SELECT * FROM student1;
