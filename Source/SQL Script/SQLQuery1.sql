CREATE TABLE employee
(
    employee_id INT,
    FirstName NVARCHAR(128),
    salary INT,
    location NVARCHAR(128)
)

INSERT INTO EMPLOYEE VALUES(1,'manish',10000,'india')
INSERT INTO EMPLOYEE VALUES(2,'NEHA',5000,'india')
INSERT INTO EMPLOYEE VALUES(4,'SURYA',5000,'UK')

SELECT * FROM employee