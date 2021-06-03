SELECT 
    Sales.Customer.CustomerID, 
    Person.Person.FirstName, 
    Person.Person.LastName, 
    Person.EmailAddress.EmailAddress, 
    Person.CountryRegion.Name AS CountryRegion, 
    Person.StateProvince.Name AS StateProvince, 
    Address_1.City
FROM     
    Person.Person 
    INNER JOIN Person.EmailAddress 
    ON Person.Person.BusinessEntityID = Person.EmailAddress.BusinessEntityID 
    
    INNER JOIN Sales.Customer 
    ON Person.Person.BusinessEntityID = Sales.Customer.PersonID 
    
    INNER JOIN Sales.SalesOrderHeader 
    ON Sales.Customer.CustomerID = Sales.SalesOrderHeader.CustomerID AND Sales.Customer.CustomerID = Sales.SalesOrderHeader.CustomerID 
    
    INNER JOIN Person.StateProvince 
    
    INNER JOIN Person.Address AS Address_1 
    ON Person.StateProvince.StateProvinceID = Address_1.StateProvinceID 
    
    INNER JOIN Person.CountryRegion 
    ON Person.StateProvince.CountryRegionCode = Person.CountryRegion.CountryRegionCode 
    ON Sales.SalesOrderHeader.BillToAddressID = Address_1.AddressID 
    AND Sales.SalesOrderHeader.ShipToAddressID = Address_1.AddressID 
    AND Sales.SalesOrderHeader.BillToAddressID = Address_1.AddressID 
    AND Sales.SalesOrderHeader.ShipToAddressID = Address_1.AddressID 
    AND Sales.SalesOrderHeader.BillToAddressID = Address_1.AddressID 
    AND Sales.SalesOrderHeader.ShipToAddressID = Address_1.AddressID