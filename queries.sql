-- O processo abaixo foi realizado para o tratamento dos dados, que não estavam sendo representados corretamente em sua forma decimal:

ALTER TABLE pizza_sales
ADD valor_numerico DECIMAL (10,2);

UPDATE pizza_sales
SET valor_numerico = CAST(REPLACE(total_price, ',','.') AS DECIMAL (10,2));

ALTER TABLE pizza_sales 
ADD valor_numerico2 DECIMAL (10,2)
  
UPDATE TABLE pizza_sales 
SET valor_numerico2 = CAST(REPLACE(unit_price, ',','.') AS DECIMAL (10,2));

-- As consultas abaixo tem como foco entender, organizar e realizar uma exploração prévia dos KPIs definidos como objetivo de análise:

SELECT
 SUM(valor_numerico) AS Total_Revanue FROM pizza_sales

  
SELECT 
 SUM(valor_numerico) / COUNT(DISTINCT order_id) AS Avg_Order 
FROM pizza_sales

  
SELECT 
 SUM(quantity) AS Total_Sold
FROM pizza_sales

SELECT 
 COUNT(DISTINCT order_id) AS Total_Orders 
FROM pizza_sales

SELECT 
 CAST(CAST(SUM(quantity) AS DECIMAL (10,2)) / CAST(COUNT(DISTINCT order_id) AS DECIMAL (10,2)) AS DECIMAL)) AS Avg_Pizza_Order
FROM pizza_sales

SELECT 
 DATENAME(WEEKDAY, order_date) AS order_day
 COUNT(DISTINCT( order_id) AS Total_Orders
FROM pizza_sales
GROUP BY 
 DATENAME(WEEKDAY, order_date),
 DATEPART(WEEKDAY, order_date)
ORDER BY
  DATEPART(WEEKDAY, order_date)
