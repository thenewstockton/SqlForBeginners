--SELECT [Column 1], [Column 2], ... ,[Column N]
--FROM [Schema Name].[Table Name]
--WHERE [Column Name] {Comparison Operator} [some value]

SELECt * FROM Production.Product WHERE ListPrice < 10
SELECt * FROM Production.Product WHERE ListPrice <> 10


SELECT * FROM HumanResources.vEmployee WHERE FirstName <> 'CHRIS'
SELECT * FROM HumanResources.Employee WHERE BirthDate >= '1/1/1980' AND Gender = 'F'
SELECT * FROM HumanResources.Employee WHERE MaritalStatus = 'S' OR Gender = 'F'
SELECT * FROM HumanResources.Employee WHERE (MaritalStatus = 'S' AND Gender = 'F') OR OrganizationLevel = 4
SELECT * FROM Production.Product WHERE (ListPrice > 100 AND Color = 'Red') OR StandardCost > 30

SELECT * FROM HumanResources.vEmployeeDepartment 
	WHERE Department = 'Research and Development' OR (StartDate < '1/1/2005' AND Department = 'Executive')

SELECT * FROM HumanResources.vEmployee 
WHERE FirstName = 'Chris' OR FIrstName = 'Steve' OR FirstName = 'Michael' OR FirstName = 'Thomas'

SELECT * FROM HumanResources.vEmployee WHERE FirstName IN ('Chirs', 'Steve', 'Michael', 'Thomas')


SELECT * FROM Sales.vStoreWithDemographics WHERE AnnualSales >= 1000000 AND AnnualSales <= 2000000
SELECT * FROM Sales.vStoreWithDemographics WHERE AnnualSales BETWEEN 1000000 AND 2000000

SELECT * FROM HumanResources.vEmployee WHERE FirstName LIKE 'Mi%'
SELECT * FROM HumanResources.vEmployee WHERE FirstName LIKE 'Mi_'
SELECT * FROM HumanResources.vEmployee WHERE FirstName LIKE 'Mi%s'
SELECT * FROM HumanResources.vEmployee WHERE FirstName LIKE '%h%'

SELECT * FROM HumanResources.vEmployee WHERE FirstName LIKE 'D[a,o]n'
SELECT * FROM HumanResources.vEmployee WHERE FirstName LIKE 'D[a-z]n'
SELECT * FROM HumanResources.vEmployee WHERE FirstName LIKE 'D[^a]n'

SELECT * FROM Person.Person WHERE MiddleName IS NULL
SELECT * FROM HumanResources.vEmployee WHERE MiddleName IS NOT NULL AND PhoneNumberType = 'Cell'