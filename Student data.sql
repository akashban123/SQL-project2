CREATE DATABASE college1;
USE college1;

CREATE TABLE student1 (
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO student1 
(id, name)
VALUES 
(101, "adam"),
(102, "bob"),
(103, "casey");

SELECT * FROM student1;

CREATE TABLE course1 (
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO course1 
(id, name)
VALUES 
(102, "english"),
(105, "math"),
(103, "science"),
(107, "computer science");

SELECT * FROM course1;


Q.1 Write the query how to use inner join on given table?

SELECT *
FROM student1
INNER JOIN course1
ON student1.id = course1.id;

Q.2 Write the query how to use left join on given table?

SELECT *
FROM student1
LEFT JOIN course1
ON student1.id = course1.id;

Q.3 Write the query how to use right join on given table?

SELECT *
FROM student1
RIGHT JOIN course1
ON student1.id = course1.id;

Q.4 Write the query how to use full join on given table?

SELECT *
FROM student1
LEFT JOIN course1
ON student1.id = course1.id
UNION
SELECT *
FROM student1
RIGHT JOIN course1
ON student1.id = course1.id;

Q.5 Write the query how to use left exclusive join on given table?

SELECT *
FROM student1 as a 
LEFT JOIN course1 as b
ON a.id = b.id
WHERE b.id IS NULL;

Q.6 Write the query how to use right exclusive join on given table?

SELECT *
FROM student1 as a 
RIGHT JOIN course1 as b
ON a.id = b.id
WHERE a.id IS NULL;

Q.7 Write the query how to use full exclusive join on given table?

SELECT *
FROM student1 as a 
LEFT JOIN course1 as b
ON a.id = b.id
WHERE b.id IS NULL
UNION
SELECT *
FROM student1 as a 
RIGHT JOIN course1 as b
ON a.id = b.id
WHERE a.id IS NULL;


CREATE TABLE employee1(
id INT PRIMARY KEY,
name VARCHAR(50),
manager_id INT
);

INSERT INTO employee1
(id, name, manager_id )
VALUES
(101, "adam", 103 ),
(102, "bob", 104),
(103, "casey", NULL),
(104, "donald", 103);

SELECT * FROM employee1;

Q.1 Write the query how to use self join on given table?

SELECT a.name as manager_name, b.name
FROM employee1 as a 
JOIN employee1 as b
ON a.id = b.manager_id;

