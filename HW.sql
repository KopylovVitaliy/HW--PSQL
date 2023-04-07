CREATE TABLE employee (
                          id BIGSERIAL NOT NULL PRIMARY KEY,
                          first_name VARCHAR(50) NOT NULL,
                          last_name VARCHAR(50) NOT NULL ,
                          gender VARCHAR(50) NOT NULL ,
                          age INT NOT NULL
);
INSERT INTO employee(first_name, last_name, gender, age)
VALUES ('Ivan', 'Petrov', 'Male', 20);
INSERT INTO employee(first_name, last_name, gender, age)
VALUES ('Kate', 'Ivanova', 'FeMale', 21);
INSERT INTO employee(first_name, last_name, gender, age)
VALUES ('Polina', 'Martin', 'FeMale', 22);
SELECT *
FROM employee;
UPDATE employee SET first_name = 'Alisa' WHERE id = 1;
UPDATE employee SET last_name = 'Stepanova' WHERE id = 1;
UPDATE employee SET gender = 'FeMale' WHERE id = 1;
UPDATE employee SET age = 23 WHERE id = 1;
SELECT  *
FROM employee;
INSERT INTO employee(first_name, last_name, gender, age)
VALUES ('Vasiliy', 'Ignatov', 'Male', 29);
INSERT INTO employee(first_name, last_name, gender, age)
VALUES ('Alisa', 'Strahova', 'FeMale', 33);
SELECT  *
FROM employee;
INSERT INTO employee(first_name, last_name, gender, age)
VALUES ('Kate', 'Demidova', 'FeMale', 41);
SELECT first_name AS Имя, last_Name AS Фамилия FROM Employee;
SELECT first_name, last_name, gender, age
FROM employee
WHERE age
    BETWEEN 0 AND 30 OR 50 AND 100;
SELECT first_name, last_name, gender, age
FROM employee
WHERE age
          BETWEEN 30 AND 50;
SELECT first_name, last_name, gender, age
FROM employee
ORDER BY last_name DESC;
SELECT first_name, last_name, gender, age
FROM employee
WHERE first_name
          LIKE ('_____%');
SELECT first_name AS Имя,
       SUM(age) AS Сумарный_Возраст
FROM employee
GROUP BY Имя;
SELECT first_name AS Имя, age AS Минимальный_возраст_сотрудника FROM Employee
WHERE age =(
    SELECT MIN(age)
    FROM employee);
SELECT first_name AS Имя, max(age) AS Максимальный_возраст, count(first_name) as Сотрудники_с_одинаковым_именем FROM employee
GROUP BY Имя
HAVING count(first_name) > 1
ORDER BY Максимальный_возраст;


