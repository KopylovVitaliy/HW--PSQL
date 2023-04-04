CREATE TABLE employee
(
    id         BIGSERIAL   NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    gender     VARCHAR(50) NOT NULL,
    age        INT         NOT NULL
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
DELETE FROM employee WHERE id = 3;
SELECT  *
FROM employee;



