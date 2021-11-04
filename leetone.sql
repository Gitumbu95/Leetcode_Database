#CREATE DATABASE leetw1; creating db
USE leetw1; #connecting the tables to the db

 CREATE TABLE IF NOT EXISTS Person(
 personId int NOT NULL,
 lastName varchar(255),
 firstName varchar(255),
 PRIMARY KEY (personId)
 );
 
 #inserting the table records
 INSERT INTO Person(personId, lastName, firstName)
 values (1, 'Wang', 'Allen'),
 (2, '', 'Bob');
 
 #updating the mmissing value i.e Alice
 UPDATE `person` SET `lastName` = 'Alice' WHERE (`personId` = '2');
 
 #creating the second table Address
 CREATE TABLE IF NOT EXISTS Address(
 addressId int NOT NULL,
 personId int NOT NULL,
 city varchar(255),
 state varchar(255),
 PRIMARY KEY (addressId),
 CONSTRAINT FK_personId FOREIGN KEY(personId) REFERENCES Person(personId)
 ON UPDATE CASCADE
ON DELETE CASCADE
 );
 
#DROP TABLE Address;
 
 INSERT INTO Address(addressId, personId, city, state)
 VALUES (1, 2, 'New York city', 'New York'),
(2, 3, 'Leetcode', 'California');
 
 SELECT Person.firstName,Person.lastName, Address.city, Address.state
 FROM Person
 LEFT JOIN Address
 ON Person.personId = Address.personId;
 
 #error upon insertion
 
 
 
 
 
 
 
 