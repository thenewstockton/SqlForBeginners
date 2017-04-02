--SELECT Column1, Column2, ..., ColumnN FROM SchemaName.TableName WHERE {Filtering Criteria}
--GROUP BY [Column Name]
--ORDER BY ColumnName

SELECT * FROM Sales.SalesOrderHeader
SELECT SalesPersonID, SUM(TotalDue) AS [Total Sales] FROM Sales.SalesOrderHeader GROUP BY SalesPersonID

SELECT * FROM Production.ProductInventory
SELECT ProductID, SUM(Quantity) AS Quantity FROM Production.ProductInventory GROUP BY ProductID
SELECT ProductID, SUM(Quantity) AS Quantity, COUNT(*) AS [Total Locations]  FROM Production.ProductInventory GROUP BY ProductID



SELECT TerritoryID,  SUM(TotalDue) AS [Total Sales] FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '1/1/2006' AND '12/31/2006' GROUP BY TerritoryID
ORDER BY 1

SELECT TerritoryID, SalesPersonID, SUM(TotalDue) FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '1/1/2006' AND '12/31/2006' GROUP BY TerritoryID, SalesPersonID ORDER BY 1,2
 

 
SELECT ST.Name AS [Territory Name] , P.FirstName + ' ' + P.LastName AS SalesPersonName, SUM(TotalDue) FROM Sales.SalesOrderHeader SOH
INNER JOIN Sales.SalesPerson SP ON SP.BusinessEntityID = SOH.SalesPersonID
INNER JOIN Person.Person P ON P.BusinessEntityID = SP.BusinessEntityID
INNER JOIN Sales.SalesTerritory ST ON ST.TerritoryID = SOH.TerritoryID
WHERE OrderDate BETWEEN '1/1/2006' AND '12/31/2006' GROUP BY ST.Name, P.FirstName + ' ' + P.LastName ORDER BY 1,2