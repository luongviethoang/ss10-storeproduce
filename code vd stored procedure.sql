USE AdventureWorks2014
GO

CREATE PROCEDURE sp_DisplayEmployeesHireYear
    @Hireyear int
 AS
SELECT * FROM HumanResources. Employee
 WHERE DATEPART(YY, HireDate) = @HireYear
 GO

 EXECUTE sp_DisplayEmployeesHireYear 1999
 GO

 CREATE PROCEDURE sp_EmployeesHireYearCount
     @Hireyear int,
     @Count int OUTPUT
 AS
SELECT @Count = COUNT (*) FROM HumanResources. Employee
WHERE DATEPART(YY, HireDate) = @HireYear
                                                      I
 GO

DECLARE @Number int
 EXECUTE Sp_EmployeesHireYearCount 1999, @Number OUTPUT
 PRINT @Number
 GO

CREATE PROCEDURE sp_EmployeesHireYearCount2
   @Hireyear int
AS
DECLARE @Count int
SELECT @Count = COUNT(*) FROM HumanResources.Employee
WHERE DATEPART(YY, HireDate) = etirevear
RETURN @Count

DECLARE @Number int
EXECUTE @Number = sp_EmployeesHireYearCount2 1999
PRINT @Number
GO