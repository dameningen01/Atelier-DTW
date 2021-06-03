SELECT 
    C.CustomerDwKey as CustomerID, 
    SD.ProductID,
    D.Datekey, 
    SD.OrderQty as OrderQuantity,
    SD.OrderQty*SD.UnitPrice AS SalesAmount ,
    SD.UnitPrice,
    convert(Float,SD.UnitPriceDiscount*convert(Float,SD.OrderQty)) AS DiscountAmount

FROM 
    AdventureWorks2019.Sales.SalesOrderDetail AS SD,
    AdventureWorks2019.Sales.SalesOrderHeader AS SH,
    LIGHTADVENTUREWORKSDW.dbo.Customers AS C,
    LIGHTADVENTUREWORKSDW.dbo.Products AS P,
    LIGHTADVENTUREWORKSDW.dbo.Dates AS D

WHERE 
    SD.SalesOrderID = SH.SalesOrderID
    AND C.CustomerKey = SH.CustomerID
    AND P.ProductKey = SD.ProductID
    AND D.Fulldate = SH.OrderDate;