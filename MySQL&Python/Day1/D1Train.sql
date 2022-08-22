USE TD1;

DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees(
	EmployeeId INT NOT NULL,
	Firstname VARCHAR(255) NOT NULL,
	Lastname VARCHAR(255) NOT NULL,
	Department VARCHAR(255),
	Salary FLOAT,
	ReportsTo INT,
    PRIMARY KEY(EmployeeId),
    FOREIGN KEY(ReportsTo) REFERENCES Employees(EmployeeId)
    );

INSERT INTO Employees VALUES
(1, 'Jason', 'Moore', 'CEO', 3000000.00, Null), 
(2, 'John', 'Smith', 'Sales', 300000.00, 1),
(3, 'Marie', 'Claire', 'HR', 300000.00, 1),
(4, 'Shane', 'Noir', 'IT', 300000.00, 1),
(5, 'Kristina', 'Warick', 'Marketing', 300000.00, 1),
(6, 'Blake', 'Vinua', 'Engineering', 300000.00, 1),
(7, 'Dwayne', 'Johnson', 'Sales', 22000.00, 2),
(8, 'Ashley', 'Orr', 'Sales', 20000.00, 2),
(9, 'Mike', 'Zayne', 'IT', 26000.00 , 4),
(10, 'Diana', 'Ortega', 'Marketing', 25000.00, 5),
(11, 'Pablo', 'Enson', 'Marketing', 23000.00, 5),
(12, 'Hanna', 'Blaze', 'Engineering', 32000.00, 6),
(13, 'Alex', 'Northland', 'Engineering', 30000.00, 6),
(14, 'Zach', 'Blue', 'Engineering', 30000.00, 6),
(15, 'Sven', 'Eagles', 'Engineering', 12000.00, 12);

SELECT * FROM Employees;

#--------------------------Table Set 2-------------------------------------------------

DROP TABLE IF EXISTS Johnson;
CREATE TABLE Johnson(
Id INT PRIMARY KEY,
FirstName VARCHAR(255),
LastName VARCHAR(255),
grade INT
);
INSERT INTO Johnson VALUES 
(1, 'James', 'Medona', 1), 
(2, 'Alex', 'Northland', 1), 
(3, 'Zach', 'Blueer', 1), 
(4, 'Jason', 'Star', 1), 
(5, 'Sven', 'Eagles', 1);

DROP TABLE IF EXISTS Mary;
CREATE TABLE Mary(
Id INT PRIMARY KEY,
FirstName VARCHAR(255),
LastName VARCHAR(255),
grade INT
);
INSERT INTO Mary VALUES 
(6, 'Rita', 'Crow', 2),
(7, 'Nayelee', 'Berkley', 2),
(8, 'Lorenzo', 'Lopez', 2), 
(9, 'Claudia', 'Plain', 2), 
(10, 'Junior', 'Hawit', 2);

DROP TABLE IF EXISTS Angela;
CREATE TABLE Angela(
Id INT PRIMARY KEY,
FirstName VARCHAR(255),
LastName VARCHAR(255),
grade INT
);
INSERT INTO Angela VALUES 
(11, 'Roman', 'Zeltic', 3),
(12, 'Handy', 'Kim', 3),
(13, 'Jordan', 'Track', 3),
(14, 'Alex', 'Dias', 3),
(15, 'Claire', 'Bayer', 3);

