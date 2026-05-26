SELECT *
FROM Cap_Stone

--Q16. Top-selling food item.
SELECT Dish_Ordered, SUM(Quantity) As Top_Selling
FROM Cap_Stone
Group By Dish_Ordered
ORDER BY Top_Selling DESC

--Q17. Least-selling food item.
SELECT Dish_Ordered, SUM(Quantity) As Least_Selling
FROM Cap_Stone
Group By Dish_Ordered
ORDER BY Least_Selling ASC

--Q18. Most profitable products.
SELECT Dish_Ordered, SUM(Price_of_Dish_Ordered) As Profitable_Product
FROM Cap_Stone
Group By Dish_Ordered
ORDER BY Profitable_Product DESC

--Q19. Product category with highest sales.
SELECT Dish_Ordered, SUM(Price_of_Dish_Ordered) As H_Product_Cat
FROM Cap_Stone
Group By Dish_Ordered
ORDER BY H_Product_Cat DESC

--Q20. Product category with least sales.
SELECT Dish_Ordered, SUM(Price_of_Dish_Ordered) As L_Product_Cat
FROM Cap_Stone
Group By Dish_Ordered
ORDER BY L_Product_Cat ASC

--Q21. Average quality sold per product.
SELECT Dish_Ordered, AVG(Quantity) As AVG_QUA
FROM Cap_Stone
Group By Dish_Ordered
ORDER BY AVG_QUA DESC

--Q22. Revenue by day
SELECT Date_of_Visit, SUM(Price_of_Dish_Ordered) AS Daily_Revenue
FROM [Cap_Stone ]
GROUP BY Date_of_Visit
ORDER BY Daily_Revenue ASC

--Q23. Revenue by month.
SELECT FORMAT (Date_of_Visit, '2023-MM') AS Monthly_Sales, SUM(Price_of_Dish_Ordered) AS Monthly_Revenue
FROM [Cap_Stone ]
GROUP BY FORMAT (Date_of_Visit, '2023-MM')
ORDER BY Monthly_Revenue ASC

--Q24. Peak sales period
SELECT DATENAME(weekday, Date_of_Visit) As Daily_Sales,-- Return 0 to 31
SUM(Price_of_Dish_Ordered) AS Peak_Sales
FROM [Cap_Stone ]
GROUP BY DATENAME(weekday, Date_of_Visit)
ORDER BY Peak_Sales DESC

--Q26. Which month had the highest revenue.
SELECT TOP 1 FORMAT (Date_of_Visit, '2023-MM') AS Monthly_Sales, SUM(Price_of_Dish_Ordered) AS Month_Highest_Revenue
FROM [Cap_Stone ]
GROUP BY FORMAT (Date_of_Visit, '2023-MM')
ORDER BY Month_Highest_Revenue DESC

--Q27. Which day recorded the highest sales.
SELECT TOP 1 Date_of_Visit, SUM(Price_of_Dish_Ordered) AS Daily_Highest_Sales
FROM [Cap_Stone ]
GROUP BY Date_of_Visit
ORDER BY Daily_Highest_Sales DESC

