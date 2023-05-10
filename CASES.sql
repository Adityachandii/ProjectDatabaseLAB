-- 10 CASES

USE Project

--1
SELECT 
	SupplierName,
	PurchaseDate,
	[Total Ingredient Purchase] = SUM(PurchaseQuantity)
FROM Supplier sp 
JOIN PurchaseTransaction pt ON sp.SupplierID = pt.SupplierID
JOIN PurchaseDetail pd on pd.PurchaseID = pt.PurchaseID
WHERE DAY(PurchaseDate) < 20 AND SupplierEmail LIKE '%@yahoo%'
GROUP BY SupplierName, PurchaseDate


--2
SELECT 
	StaffName,
	SalesDate = CONVERT(VARCHAR,SalesDate,106),
	[Total Sales] = COUNT(sd.SalesID)
FROM Staff sf
JOIN SalesTransaction st ON sf.StaffID = st.StaffID
JOIN SalesDetail sd ON sd.SalesID = st.SalesID
WHERE StaffSalary < 5000000 AND DATENAME(WEEKDAY,SalesDate) IN ('Wednesday','Saturday')
GROUP BY StaffName,SalesDate


--3
SELECT 
	StaffName,
	[Average Purchase Quantity] = AVG(PurchaseQuantity),
	[Total Ingredient Supplied] = SUM(PurchaseQuantity)
FROM Staff sf
JOIN PurchaseTransaction pt ON sf.StaffID = pt.StaffID
JOIN PurchaseDetail pd ON pd.PurchaseID = pt.PurchaseID
WHERE StaffGender = 'Female'
GROUP BY StaffName
HAVING SUM(PurchaseQuantity) > 9 


--4
SELECT
	SupplierName,
	[Total Purchase] = COUNT(pd.PurchaseID),
	[Average Purchase Price] = 'Rp ' + CAST(AVG(IngredientPrice) AS VARCHAR)
FROM Supplier sp 
JOIN PurchaseTransaction pt ON sp.SupplierID = pt.SupplierID
JOIN PurchaseDetail pd ON pt.PurchaseID = pd.PurchaseID
JOIN Ingredient ig ON ig.IngredientID = pd.IngredientID
WHERE MONTH(PurchaseDate) = 8 AND SupplierName = '% % %'
GROUP BY SupplierName


--5
SELECT 
	SupplierName,
	SupplierPhone = '+62' + SUBSTRING(SupplierPhone,2,LEN(SupplierPhone)-1),
	PurchaseDate,
	StaffName,
	PurchaseQuantity = CAST(SUM(PurchaseQuantity) AS VARCHAR) + ' item'
FROM Supplier sp
JOIN PurchaseTransaction pt ON sp.SupplierID = pt.SupplierID
JOIN PurchaseDetail pd ON pd.PurchaseID = pt.PurchaseID
JOIN Staff sf ON sf.StaffID = pt.StaffID,
(
	SELECT 
		Average = AVG(PurchaseQuantity)
	FROM PurchaseDetail
) x
WHERE PurchaseQuantity > x.Average AND DATENAME(MONTH,PurchaseDate) IN ('September','December')
GROUP BY SupplierName,SupplierPhone,PurchaseDate, StaffName, PurchaseQuantity


--6
SELECT 
	CustomerID = REPLACE(st.CustomerID,'CS','Customer'),
	[Handle by] = REPLACE(st.StaffID,'ST00','Staff'),
	[Total Ice Cream Sales Price] = 'Rp ' + CAST(SUM(IcePrice * SalesQuantity) AS VARCHAR),
	IceCreamName = IceName,
	Quantity = SalesQuantity
FROM SalesTransaction st
JOIN Customer cs ON st.CustomerID = cs.CustomerID
JOIN Staff sf ON st.StaffID = sf.StaffID
JOIN SalesDetail sd ON sd.SalesID = st.SalesID
JOIN IceCream ic ON ic.IceID = sd.IceID,
(
	SELECT
		Lowest = MIN(IcePrice) 
	FROM IceCream
) x
WHERE IcePrice = x.Lowest AND SalesQuantity > 3
GROUP BY st.CustomerID, st.StaffID, IceName, SalesQuantity


--7
SELECT
	LastName = REVERSE(SUBSTRING(REVERSE(StaffName),1, CHARINDEX(' ', REVERSE(StaffName))-1)),
	[Total Sales Has been done] = COUNT(sd.SalesID),
	StaffSalary
FROM Staff sf
JOIN SalesTransaction st ON sf.StaffID = st.StaffID
JOIN SalesDetail sd ON sd.SalesID = st.SalesID,
(
	SELECT
		Average = AVG(StaffSalary)
	FROM Staff
) x
WHERE StaffGender = 'Male' AND StaffSalary < x.Average
GROUP BY StaffName,StaffSalary


--8 
SELECT
	StaffInitial = UPPER(SUBSTRING(StaffName,1,1) + SUBSTRING(StaffName,LEN(StaffName),1)),
	cs.CustomerID,
	[Total Sales] = COUNT(sd.SalesID),
	SalesDate
FROM Staff sf
JOIN SalesTransaction st ON sf.StaffID = st.StaffID
JOIN Customer cs ON st.CustomerID = cs.CustomerID
JOIN SalesDetail sd ON sd.SalesID = st.SalesID,
(
	SELECT 
		Smallest = MIN(SalesQuantity)
	FROM SalesDetail
) x
WHERE SalesQuantity = x.Smallest 
GROUP BY cs.CustomerID,StaffName,SalesDate
HAVING CAST(SUBSTRING(cs.CustomerID,3,3) AS INT) % 2 = 0


--9
CREATE VIEW ViewPurchaseTransaction AS
SELECT 
	StaffEmail,
	PurchaseDate,
	TotalPurchaseIngredient = SUM(PurchaseQuantity),
	TotalPurchaseTransaction = COUNT(pt.PurchaseID)
FROM Staff sf 
JOIN PurchaseTransaction pt ON sf.StaffID = pt.StaffID
JOIN PurchaseDetail pd ON pd.PurchaseID = pt.PurchaseID
WHERE YEAR(StaffDOB) > 2001 
GROUP BY StaffEmail,PurchaseDate
HAVING SUM(PurchaseQuantity) > 10

SELECT * FROM ViewPurchaseTransaction


--10 
CREATE VIEW ViewSalesTransaction AS 
SELECT 
	StaffName,
	SalesDate,
	[Total Sales Transaction] = COUNT(sd.SalesID),
	[Total Sales Quantity] = SUM(SalesQuantity)
FROM Staff sf
JOIN SalesTransaction st ON st.StaffID = sf.StaffID
JOIN SalesDetail sd ON sd.SalesID = st.SalesID
JOIN IceCream ic ON ic.IceID = sd.IceID
WHERE IcePrice > 45000 
GROUP BY StaffName, SalesDate
HAVING COUNT(sd.SalesID) < 5

SELECT * FROM ViewSalesTransaction


