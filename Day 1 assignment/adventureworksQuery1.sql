Select ProductID,Name,Color,ListPrice
From Production.Product

Select ProductID,Name,Color,ListPrice
From Production.Product
where Not ListPrice=0;

Select ProductID,Name,Color,ListPrice
From Production.Product
Where Color IS NULL;

Select ProductID,Name,Color,ListPrice
From Production.Product
Where Color IS NOT NULL;

Select ProductID,Name,Color,ListPrice
From Production.Product
Where Color IS NOT NULL AND ListPrice>0;

Select CONCAT(Name,Color)[Name And Color]
From Production.Product
where Color is not NULL

Select CONCAT('Name: ',Name,'  --  COLOR: ',Color)[Name And Color]
From Production.Product
where Name  Like '%Crankarm' OR  Name Like 'chainring%' 
order by ProductID asc

Select ProductID, Name
from Production.Product
where ProductID between '400' and '500'

Select ProductID,Name,Color
from Production.Product
where Color IN ('black','blue')

Select*
From Production.Product
where Name Like 's%'

Select TOP 6 *
From Production.Product
where Name Like 's%'
order by Name

select TOP 5 Name, ListPrice
from Production.Product
where Name like '[AS]%'
order by Name

SELECT Name, ListPrice
FROM Production.Product
WHERE Name LIKE 'SPO[^K]%'
ORDER BY Name


SELECT Distinct Color 
FROM Production.Product
ORDER BY Color desc
