SELECT * FROM[dbo].[SalesData]

SELECT PRODUCT,
SUM(Quantity) AS TOTAL_SALES
FROM SalesData
GROUP BY PRODUCT

SELECT Region,
COUNT(Product) as Sales_transactions_number from SalesData
group by Region


select top 1 Product, sum (Revenue) from SalesData
Group by Product

select Product,
SUM(quantity * unitprice) as Total_Revenue
from SalesData
group by Product

select OrderDate, [Revenue ] as Total_Sales from SalesData
where Year(OrderDate) in (2024)

select top 5 [Customer Id], [Revenue ] from SalesData
order by [Revenue ] DESC

select Region, SUM (Quantity * Unitprice) as Total_sales,
SUM(Quantity * Unitprice) * 100.0 / sum(sum(Quantity * Unitprice)) over () as "Percentage of Total_sales"
from SalesData
group by Region;

select PRODUCT from Salesdata
group by product
having sum (case when orderdate >=
DATEADD(Quarter, -1, GETDATE())
and OrderDate < GETDATE()
then 1 else 0 end) = 0

SELECT TOP 1 Product, SUM (Quantity*UnitPrice)
as total_sales from SalesData
group by Product
order by total_sales DESC