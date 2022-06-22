--1. Write a query that retrieves the columns ProductID, Name, Color and ListPrice from the Production.Product table, with no filter. 
Select ProductID, Name, Color, ListPrice
From Production.Product

--2. Write a query that retrieves the columns ProductID, Name, Color and ListPrice from the Production.Product table,
--excluding the rows that ListPrice is 0.
Select ProductID, Name, Color, ListPrice
From Production.Product
Where ListPrice != 0

--3. Write a query that retrieves the columns ProductID, Name, Color and ListPrice from the Production.Product table,
--the rows that are not NULL for the Color column.
Select ProductID, Name, Color, ListPrice
From Production.Product
Where Color is not NULL

--4. Write a query that retrieves the columns ProductID, Name,Color and ListPrice from the Production.Product table,
--the rows that are not NULL for the column Color, and the column ListPrice has a value greater than zero.
Select ProductID, Name, Color, ListPrice
From Production.Product
Where Color is not NULL AND ListPrice > 0

--5. Write a query that concatenates the columns Name and Color from the Production.Product table by excluding the rows that are null for color.
Select Name + ' ' + color as NameColor, Color
From Production.Product
Where (Name + Color) is not NULL

/*6. Write a query that generates the following result set from
Production.Product:

NAME: LL Crankarm  --  COLOR: Black

NAME: ML Crankarm  --  COLOR: Black

NAME: HL Crankarm  --  COLOR: Black

NAME: Chainring Bolts  --  COLOR: Silver

NAME: Chainring Nut  --  COLOR: Silver

NAME: Chainring  --  COLOR: Black
*/
Select 'NAME: ' + Name + ' -- COLOR: ' + Color as NameColor
From Production.Product
Where Color = 'Black' or Color = 'Silver'

--7. Write a query to retrieve to the columns ProductID and Name from the Production.Product 
--table filtered by ProductID from 400 to 500 using between
Select ProductID, Name
From Production.Product
Where ProductID BETWEEN 400 AND 500

--8. Write a query to retrieve the columns ProductID, Name and color from the Production.Product table
--restricted to the colors black and blue
Select ProductID, Name, Color
From Production.Product
Where Color = 'Black' or Color = 'Blue'

--9. Write a query to get a result set on 
--products that begins with the letter S. 
Select *
From Production.Product
Where Name LIKE 'S%'

/*10. Write a query that retrieves the columns Name and ListPrice from the Production.Product table.
Your result set should look something like the following. Order the result set
by the Name column. The products name should start with either 'A' or 'S'

Name                                            ListPrice

Adjustable Race                                   0,00

All-Purpose Bike Stand                       159,00

AWC Logo Cap                                      8,99

Seat Lug                                          0,00

Seat Post                                         0,00
*/
Select Name, ListPrice
From Production.Product
Where Name LIKE 'A%' or Name LIKE 'S%'

--11. Write a query so you retrieve rows that have a Name that begins with the letters SPO,
--but is then not followed by the letter K. After this zero or more letters can exists. Order the result set by the Name column.
Select Name
From Production.Product
Where Name LIKE 'SPO[^K]%'

--12. Write a query that retrieves the unique combination of columns ProductSubcategoryID and Color from the Production.Product table. 
--We do not want any rows that are NULL.in any of the two columns in the result. (Hint: Use IsNull)
Select Distinct ProductSubcategoryID, Color
From Production.Product
Where not (ProductSubcategoryID is NULL or Color is NULL)