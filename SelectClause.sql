SELECT 'Brewster','Thomas','Knowlton'
SELECT 1+1, (5*5)-(3*5)

--SELECT [Column1],[Column2],...,[Column N] FROM [DatabaseName].[SchemaName].[TableName]
SELECT FirstName, LastName FROM AdventureWorks2012.Person.Person
SELECT TOP 5 FirstName, MiddleName, LastName FROM AdventureWorks2012.Person.Person
SELECT TOP 10 PERCENT FirstName, MiddleName, LastName FROM AdventureWorks2012.Person.Person
SELECT TOP 100 * FROM AdventureWorks2012.Person.Person
SELECT TOP 100 FirstName AS [Customer First Name], LastName AS [Customer Last Name] FROM AdventureWorks2012.Person.Person

SELECT * FROM HumanResources.vEmployee
SELECT * FROM HumanResources.Employee
SELECT FirstName, LastName, EmailAddress, PhoneNumber FROM Sales.vIndividualCustomer