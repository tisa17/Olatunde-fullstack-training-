--1
select count(*)[Product count]
from Production.Product

--2
select count(ProductSubcategoryID) 
From Production.Product

--3
Select ProductSubcategoryID,COUNT(*)[CoountedProducts]
From Production.Product
group by ProductSubcategoryID

--4
Select count(*)[Null product count]
From Production.Product
where ProductSubcategoryID IS NULL

--5
Select ProductID, SUM(Quantity)[QUANTITY SUM]
From Production.ProductInventory
GROUP BY ProductID
--6
SELECT ProductID,SUM(Quantity)[SUM]
FROM Production.ProductInventory
WHERE LocationID=40
GROUP BY ProductID
HAVING SUM(Quantity)<100

--7
SELECT Shelf,ProductID,SUM(Quantity)[QUANTITY SUM]
FROM Production.ProductInventory
WHERE LocationID=40
GROUP BY Shelf,ProductID
HAVING SUM(Quantity)<100

--8
SELECT AVG(Quantity)[AVERAGE QTY]
FROM Production.ProductInventory
WHERE LocationID=10
--GROUP BY ProductID

--9
SELECT ProductID, Shelf, AVG(quantity)[TheAvg] 
FROM Production.ProductInventory
GROUP BY Shelf,ProductID

--10

select ProductID,shelf,avg(quantity)[TheAvg] 
from production.ProductInventory
where NOT shelf  = 'N/A'
group by Shelf,ProductID

--11
SELECT color, class, COUNT(*) [TheCount], AVG(listprice)[AvgPrice]
FROM Production.Product
WHERE color IS NOT NULL AND class IS NOT NULL
group BY color, class

--12

SELECT c.name [Country], s.name [Province]
FROM person.CountryRegion c
INNER JOIN person.StateProvince s
ON c.CountryRegionCode=s.CountryRegionCode

--13
SELECT c.name[Country], s.name [Province]
FROM person.CountryRegion c
INNER JOIN person.StateProvince s
ON c.CountryRegionCode=s.CountryRegionCode
WHERE c.Name in('Germany','Canada')