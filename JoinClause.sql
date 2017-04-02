--SELECT * FROM HumanResources.Employee

--Inner Join
SELECT * FROM Production.Product
SELECT * FROM Production.ProductSubcategory

SELECT P.Name, P.ProductNumber, PS.Name AS [ProductSubcategory name] FROM Production.Product P
INNER JOIN Production.ProductSubcategory PS ON P.ProductSubcategoryID = PS.ProductSubcategoryID

SELECT P.Name, P.ProductNumber, P.ProductSubcategoryID, PS.Name AS [ProductSubcategory name] FROM Production.Product P
INNER JOIN Production.ProductSubcategory PS ON P.ProductSubcategoryID = PS.ProductSubcategoryID

SELECT * FROM Production.ProductSubcategory 
SELECT * FROM Production.ProductCategory

SELECT PS.Name AS ProductSubcategoryName,
		PC.Name AS ProductCategoryName 
FROM Production.ProductSubcategory PS INNER JOIN Production.ProductCategory PC ON PS.ProductCategoryID = PC.ProductCategoryID

SELECT P.FirstName, P.LastName, E.EmailAddress FROM Person.Person P INNER JOIN Person.EmailAddress E ON P.BusinessEntityID = E.BusinessEntityID

SELECT * FROM Person.PersonPhone
SELECT P.FirstName, P.LastName, E.EmailAddress , PP.PhoneNumber
FROM Person.Person P INNER JOIN Person.EmailAddress E ON P.BusinessEntityID = E.BusinessEntityID
INNER JOIN Person.PersonPhone PP ON PP.BusinessEntityID = P.BusinessEntityID


--Left Right Outter Join
SELECT P.Name, P.ProductNumber, PS.Name AS PSName 
FROM Production.Product P Left OUTER JOIN Production.ProductSubcategory PS
ON PS.ProductSubcategoryID = P.ProductSubcategoryID

SELECT P.Name, P.ProductNumber, PS.Name AS PSName 
FROM Production.ProductSubcategory PS RIGHT OUTER JOIN Production.Product P 
ON P.ProductSubcategoryID = PS.ProductSubcategoryID



SELECT P.FirstName, P.LastName, SOH.SalesOrderNumber, SOH.TotalDue, T.Name AS TerritoryName
 FROM Sales.SalesOrderHeader SOH 
LEFT OUTER JOIN Sales.SalesPerson SP ON SP.BusinessEntityID = SOH.SalesPersonID
LEFT OUTER JOIN HumanResources.Employee E ON E.BusinessEntityID = SP.BusinessEntityID
LEFT OUTER JOIN Person.Person P ON P.BusinessEntityID = E.BusinessEntityID
LEFT OUTER JOIN Sales.SalesTerritory T ON T.TerritoryID = SOH.TerritoryID
WHERE T.Name = 'Northwest'
ORDER BY SOH.TotalDue DESC

--SELECT * FROM Sales.SalesOrderHeader
--SELECT * FROM Sales.SalesPerson
SELECT * FROM Sales.SalesOrderHeader SOH 
LEFT OUTER JOIN Sales.SalesPerson SP ON SP.BusinessEntityID = SOH.SalesPersonID WHERE SOH.SalesPersonID = 274