SELECT *
FROM [Cap_Stone ]

--PART 4
--Q1. What products should management promote more? (Answer: Missing Order)
SELECT Dish_Ordered, SUM(Price_of_Dish_Ordered)AS PRICE_TAG, SUM(Quantity) AS Quan
FROM [Cap_Stone ]
GROUP BY Dish_Ordered
ORDER BY PRICE_TAG DESC

--Q2. Which product should be discontinued? (Answer: Wrap and Pizza)
SELECT TOP 2 Dish_Ordered, SUM(Price_of_Dish_Ordered)AS PRICE_TAG, SUM(Quantity) AS Quan
FROM [Cap_Stone ]
GROUP BY Dish_Ordered
ORDER BY PRICE_TAG, Quan ASC

--Q3. Which customer segment generates the most revenue? Answer(McDonalds)
SELECT Restaurant, SUM(Price_of_Dish_Ordered)AS Revenue
FROM [Cap_Stone ]
GROUP BY Restaurant
ORDER BY Revenue DESC

--Q4. What sales trends can be observed? 
SELECT YEAR(Date_of_Visit) AS YEAR, MONTH(Date_of_Visit) AS Month, SUM(Price_of_Dish_Ordered) AS SALES
FROM [Cap_Stone ]
GROUP BY YEAR(Date_of_Visit), MONTH(Date_of_Visit)
ORDER BY YEAR,MONTH DESC

--Q5.Which location needs improvement? Answer (Burger King)
SELECT Restaurant, SUM(Price_of_Dish_Ordered)AS Sales
FROM [Cap_Stone ]
GROUP BY Restaurant
ORDER BY Sales ASC

--Q6. What operational issues were discovered?
SELECT Dish_Ordered, AVG(Price_of_Dish_Ordered)AS Sales, AVG(Quantity) AS QUan
FROM [Cap_Stone ]
GROUP BY Dish_Ordered
ORDER BY Sales,QUan DESC

--Q7. What recommendations cann improve profitability
--Answer(improve weak performing resturant, promote high profit products,and focus on profitable resturant too.