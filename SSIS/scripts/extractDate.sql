SELECT DISTINCT 
    OrderDate AS FullDate, 
    DATENAME([month], OrderDate) AS MonthName, 
    DATENAME(Quarter, CAST(OrderDate AS DATETIME)) AS CalendarQuarter, 
    YEAR(OrderDate) AS CalendarYear
FROM 
    Sales.SalesOrderHeader