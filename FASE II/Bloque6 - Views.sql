-- Podemos crear una vista para facilitar el PROCEDURE del bloque 7.
CREATE VIEW [v_EmpleadosPorDepartamento] AS
SELECT
    p.BusinessEntityID AS EmployeeID,
    p.FirstName + ' ' + p.LastName AS FullName,
    e.JobTitle,
    d.Name AS DepartmentName
FROM
    HumanResources.Department d
    JOIN HumanResources.EmployeeDepartmentHistory h ON d.DepartmentID = h.DepartmentID
    JOIN HumanResources.Employee e ON h.BusinessEntityID = e.BusinessEntityID
    JOIN Person.Person p ON e.BusinessEntityID = p.BusinessEntityID