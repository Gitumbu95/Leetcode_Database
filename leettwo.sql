#CREATE DATABASE Employee_info;

USE Employee_info;
 
 CREATE TABLE IF NOT EXISTS Employee(
 id int  NOT NULL  PRIMARY KEY,
 name varchar(255),
 salary int,
 managerId int REFERENCES Employee(id)
 );
 
 INSERT INTO Employee(id, name, salary, managerId)
 VALUES(1, 'Joe', 70000, 3),
 (2, 'Henry',80000, 4),
 (3, 'Sam',60000, NULL),
 (4, 'Max',90000, NULL);

#Alias with WHERE clause
SELECT e1.name AS 'Employeee' #outputs the name only
FROM
Employee AS e1 , Employee AS e2
WHERE 
e1.managerId = e2.Id 
AND 
e1.salary > e2.salary ;
#Alias with join
SELECT *
FROM Employee AS e1 JOIN Employee AS e2 #JOIN/INNER JOIN/ LEFT JOIN
ON e1.managerId = e2.id
AND e1.salary > e2.salary;




