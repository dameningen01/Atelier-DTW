SELECT 
    P.ProductID as ProductKey, 
    P.Name as ProductName, 
    P.Color, 
    P.Size, 
    PS.Name as SubcategoryName, 
    PC.Name as CategoryName
FROM 
    Production.Product P, 
    Production.ProductSubcategory PS, 
    Production.ProductCategory PC
WHERE
    P.ProductSubcategoryID = PS.ProductSubcategoryID
    AND PS.ProductCategoryID = PC.ProductCategoryID;

SELECT 
    Production.Product.ProductID, 
    Production.Product.Name, 
    Production.Product.Color, 
    Production.Product.[Size], 
    Production.ProductSubcategory.Name AS SubcategoryName, 
    Production.ProductCategory.Name AS CategoryName
FROM     
    Production.Product 
    
    INNER JOIN Production.ProductSubcategory 
    ON Production.Product.ProductSubcategoryID = Production.ProductSubcategory.ProductSubcategoryID 
    
    INNER JOIN Production.ProductCategory 
    ON Production.ProductSubcategory.ProductCategoryID = Production.ProductCategory.ProductCategoryID