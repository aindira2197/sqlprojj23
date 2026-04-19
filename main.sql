CREATE TABLE departments13 (
    id INT,
    name VARCHAR(50)
);

CREATE TABLE employees13 (
    id INT,
    name VARCHAR(50),
    department_id INT,
    salary INT
);

INSERT INTO departments13 VALUES
(1,'IT'), (2,'HR');

INSERT INTO employees13 VALUES
(1,'Ali',1,3000),
(2,'Vali',1,2500),
(3,'Sami',2,1500);

SELECT d.name, AVG(e.salary) AS avg_salary
FROM departments13 d
INNER JOIN employees13 e ON d.id = e.department_id
GROUP BY d.name
HAVING AVG(e.salary) > 2000;
