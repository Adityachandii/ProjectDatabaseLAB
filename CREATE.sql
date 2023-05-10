-- CREATE DATABASE

CREATE DATABASE Project
USE Project

--1
CREATE TABLE Customer
(
	CustomerID CHAR(5) PRIMARY KEY CHECK(CustomerID LIKE 'CS[0-9][0-9][0-9]'),
	CustomerName VARCHAR(100) NOT NULL,
	CustomerDOB DATE NOT NULL,
	CustomerGender VARCHAR(100) NOT NULL, 
	CustomerAddress VARCHAR(100) NOT NULL, 
	CustomerEmail VARCHAR(100) CHECK(CustomerEmail LIKE '%@%')NOT NULL,
	CustomerPhone VARCHAR(100) CHECK(11 < LEN(CustomerPhone) AND LEN(CustomerPhone) < 14)NOT NULL,
);

--2
CREATE TABLE Supplier
(
	SupplierID CHAR(5) PRIMARY KEY CHECK(SupplierID LIKE 'SP[0-9][0-9][0-9]'),
	SupplierName VARCHAR(100) NOT NULL,
	SupplierEmail VARCHAR(100) CHECK(SupplierEmail LIKE '%@%')NOT NULL,
	SupplierPhone VARCHAR(100) CHECK(11 < LEN(SupplierPhone) AND LEN(SupplierPhone) < 14)NOT NULL,
	SupplierAddress VARCHAR(100) NOT NULL
);

--3
CREATE TABLE Ingredient
(
	IngredientID CHAR(5) PRIMARY KEY CHECK(IngredientID LIKE 'IG[0-9][0-9][0-9]'),
	IngredientName VARCHAR(100) NOT NULL,
	IngredientStock INT NOT NULL,
	IngredientPrice FLOAT NOT NULL
);

--4 
CREATE TABLE IceCream
(
	IceID CHAR(5) PRIMARY KEY CHECK (IceID LIKE 'IC[0-9][0-9][0-9]'),
	IceName VARCHAR(100) NOT NULL,
	IcePrice FLOAT NOT NULL,
	IceStock INT NOT NULL CHECK(0 < Icestock AND IceStock < 100)
);

--5
CREATE TABLE Staff
(
	StaffID CHAR(5) PRIMARY KEY CHECK(StaffID LIKE 'ST[0-9][0-9][0-9]'),
	StaffName VARCHAR(100) NOT NULL,
	StaffDOB DATE CHECK(YEAR(StaffDOB) <= 2002) NOT NULL,
	StaffGender VARCHAR(15) CHECK(StaffGender LIKE 'Male' OR StaffGender LIKE 'Female') NOT NULL,
	StaffAddress VARCHAR(100) NOT NULL,
	StaffEmail VARCHAR(100) CHECK(StaffEmail LIKE '%@%') NOT NULL,
	StaffPhone VARCHAR(100) CHECK(11 < LEN(StaffPhone) AND LEN(StaffPhone) < 14) NOT NULL,
	StaffSalary BIGINT NOT NULL 
);

--6 
CREATE TABLE PurchaseTransaction
(
	PurchaseID CHAR(5) PRIMARY KEY CHECK(PurchaseID LIKE 'PO[0-9][0-9][0-9]'),
	StaffID CHAR(5) FOREIGN KEY REFERENCES Staff(StaffID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	SupplierID CHAR(5) FOREIGN KEY REFERENCES Supplier(SupplierID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	PurchaseDate DATE NOT NULL,
);

--7 
CREATE TABLE PurchaseDetail
(
	PurchaseID CHAR(5) FOREIGN KEY REFERENCES PurchaseTransaction(PurchaseID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	IngredientID CHAR(5) FOREIGN KEY REFERENCES Ingredient(IngredientID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	PurchaseQuantity INT NOT NULL,
	PRIMARY KEY(PurchaseID, IngredientID)
);

--8
CREATE TABLE SalesTransaction
(
	SalesID CHAR(5) PRIMARY KEY CHECK(SalesID LIKE 'SL[0-9][0-9][0-9]'),
	StaffID CHAR(5) FOREIGN KEY REFERENCES Staff(StaffID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	CustomerID CHAR(5) FOREIGN KEY REFERENCES Customer(CustomerID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	SalesDate DATE NOT NULL
);

--9 
CREATE TABLE SalesDetail
(
	SalesID CHAR(5) FOREIGN KEY REFERENCES SalesTransaction(SalesID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	IceID CHAR(5) FOREIGN KEY REFERENCES IceCream(IceID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	SalesQuantity INT NOT NULL,
	Primary Key (SalesID,IceID)
);
