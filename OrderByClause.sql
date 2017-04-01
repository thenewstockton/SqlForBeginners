--SELECT Column1 AS [Some Alias], Column2, ... , ColumnN
--FROM SchemaName.TableName
--WHERE ColumnName {comoparison operator} [Filtering Criteria]
--ORDER BY ColumnName, ColumnOrdinal, ColumnAlias [ASC/DESC] 

SELECT FirstName, LastName FROM Sales.vIndividualCustomer ORDER BY FirstName DESC
SELECT FirstName, LastName FROM Sales.vIndividualCustomer ORDER BY 2


SELECT FirstName, LastName AS [Customer Last Name] FROM Sales.vIndividualCustomer ORDER BY [Customer Last Name]

--How we write sql:   SELECT FROM WHERE GROUP BY HAVING ORDER BY
--How sql executes:   FROM WHERE GROUP BY HAVING SELECT ORDER BY
--This is why we can use alias for order by

SELECT FirstName, LastName FROM Sales.vIndividualCustomer ORDER BY LastName, FirstName DESC
SELECT FirstName, LastName FROM Sales.vIndividualCustomer ORDER BY 2, FirstName DESC

SELECT FirstName AS [Customer First Name], LastName FROM Sales.vIndividualCustomer 
ORDER BY 2, [Customer First Name] DESC

SELECT LastName, FirstName, SalesQuota AS [Sales Quota] FROM Sales.vSalesPerson 
WHERE SalesQuota >= 250000
ORDER BY [Sales Quota] DESC, 1 ASC