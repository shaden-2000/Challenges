-- Find how many departments , and what are they ? use employee table 
SELECT COUNT( DISTINCT Department ) AS how_many_departments
FROM `challenge-3-408606.dataset.employees`;

SELECT DISTINCT Department 
FROM `challenge-3-408606.dataset.employees`;


-- Find the top 10 salaries for the employees 
SELECT DISTINCT Salary
FROM `challenge-3-408606.dataset.employees`
ORDER BY Salary DESC
LIMIT 10;


-- What are the 3 best-selling products?
SELECT DISTINCT Product_id 
FROM `challenge-3-408606.dataset.transactions` 
ORDER BY Product_id;


-- To see all the products
SELECT p.Product_name_ AS Product_name,COUNT(t.Product_id) AS how_many
FROM `challenge-3-408606.dataset.transactions` t 
JOIN `challenge-3-408606.dataset.products` p ON t.Product_id = p.Product_id
GROUP BY p.Product_name_ 
ORDER BY how_many DESC;


-- The 3 best-selling products
SELECT p.Product_name_ AS Product_name,COUNT(t.Product_id) AS how_many
FROM `challenge-3-408606.dataset.transactions` t 
JOIN `challenge-3-408606.dataset.products` p ON t.Product_id = p.Product_id
GROUP BY p.Product_name_ 
ORDER BY how_many DESC
LIMIT 3;


-- Product sales in the second quarter of 2023? April – June 
SELECT p.Product_name_ AS Product_name,COUNT(t.Product_id) AS sales_number , SUM(p.Product_price) AS product_sales 
FROM `challenge-3-408606.dataset.transactions` t 
JOIN `challenge-3-408606.dataset.products` p ON t.Product_id = p.Product_id
WHERE t.Transaction_time BETWEEN '2023-04-01' AND '2023-06-30'
GROUP BY p.Product_name_ 
ORDER BY product_sales DESC;


-- Who are the top 10 clients contributing to sales in 2023?
-- sub query used
SELECT t.Client_id , (
  SELECT c.Client_name
  FROM `challenge-3-408606.dataset.clients`  c
  WHERE c.Client_id = t.Client_id
) AS client_name ,SUM(p.Product_price) AS contribute 

FROM `challenge-3-408606.dataset.transactions` t 
JOIN `challenge-3-408606.dataset.products` p ON t.Product_id = p.Product_id
WHERE t.Transaction_time BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY t.Client_id
ORDER BY contribute DESC;


-- To find the max and min contribute so i can catogrize the clients based on there contribution , i did a temp table so i can do math with it 
WITH contribution AS (

SELECT t.Client_id , (
  SELECT c.Client_name
  FROM `challenge-3-408606.dataset.clients`  c
  WHERE c.Client_id = t.Client_id
) AS client_name ,SUM(p.Product_price) AS contribute 

FROM `challenge-3-408606.dataset.transactions` t 
JOIN `challenge-3-408606.dataset.products` p ON t.Product_id = p.Product_id
WHERE t.Transaction_time BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY t.Client_id
ORDER BY contribute DESC

)

SELECT MAX(contribute) AS maxi , MIN(contribute) AS mini , AVG(contribute) AS avarage
FROM contribution;


-- Catogrize the clients based on there contribution which has been calculated above (21200 - 6433 -400) 
SELECT t.Client_id , (
  SELECT c.Client_name
  FROM `challenge-3-408606.dataset.clients`  c
  WHERE c.Client_id = t.Client_id
) AS client_name ,SUM(p.Product_price) AS contribute ,

CASE
    WHEN SUM(p.Product_price) > 6433 THEN 'High contributor'
    WHEN SUM(p.Product_price) < 21200 AND SUM(p.Product_price) > 6433 THEN 'Average contributor'
    WHEN SUM(p.Product_price) < 6433 THEN 'Low contributor'
    ELSE 'Low contributor'
    END AS Customer_contribution
FROM `challenge-3-408606.dataset.transactions` t 
JOIN `challenge-3-408606.dataset.products` p ON t.Product_id = p.Product_id
WHERE t.Transaction_time BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY t.Client_id
ORDER BY contribute DESC;


-- Clients who ordered more than 6 orders
SELECT (
  SELECT c.Client_name
  FROM `challenge-3-408606.dataset.clients`  c
  WHERE c.Client_id = t.Client_id
) AS client_name ,t.Client_id,COUNT(t.Client_id) AS how_many_orders 
FROM `challenge-3-408606.dataset.transactions` t 
GROUP BY t.Client_id
HAVING how_many_orders >= 6
ORDER BY how_many_orders ;

--  Who is the most inactive Clients
SELECT (
  SELECT c.Client_name
  FROM `challenge-3-408606.dataset.clients`  c
  WHERE c.Client_id = t.Client_id
) AS client_name ,t.Client_id,COUNT(t.Client_id) AS how_many_orders 
FROM `challenge-3-408606.dataset.transactions` t 
GROUP BY t.Client_id
HAVING how_many_orders < 6
ORDER BY how_many_orders;


-- The best and least selling products 
-- We can do it in descending order to explore all the products, or we can use the Min() , MAX() functions.

-- 1) in descending order
SELECT p.Product_name_ ,COUNT(t.Product_id) AS how_many_orders 
FROM `challenge-3-408606.dataset.transactions` t 
JOIN `challenge-3-408606.dataset.products` p ON t.Product_id = p.Product_id
GROUP BY t.Product_id, p.Product_name_
ORDER BY how_many_orders DESC ;


-- 2) MAX()
WITH maximum AS (
  SELECT p.Product_name_,COUNT(t.Product_id) AS how_many_orders
FROM `challenge-3-408606.dataset.transactions` t 
JOIN `challenge-3-408606.dataset.products` p ON t.Product_id = p.Product_id
GROUP BY t.Product_id, p.Product_name_
ORDER BY how_many_orders DESC 
)

SELECT Product_name_ AS maximum_selling_product
FROM maximum 
WHERE how_many_orders = ( SELECT MAX(how_many_orders) FROM maximum);


-- 2) MAI()
WITH minimum AS (
  SELECT p.Product_name_,COUNT(t.Product_id) AS how_many_orders
FROM `challenge-3-408606.dataset.transactions` t 
JOIN `challenge-3-408606.dataset.products` p ON t.Product_id = p.Product_id
GROUP BY t.Product_id, p.Product_name_
ORDER BY how_many_orders DESC 
)

SELECT Product_name_ AS minimum_selling_product
FROM minimum 
WHERE how_many_orders = ( SELECT MIN(how_many_orders) FROM minimum);


-- Sales of each product for each month

SELECT EXTRACT(year from t.Transaction_time) AS year , EXTRACT(month from t.Transaction_time) AS month ,p.Product_name_ AS Product_name, SUM(p.Product_price) AS product_sales 
FROM `challenge-3-408606.dataset.transactions` t 
JOIN `challenge-3-408606.dataset.products` p ON t.Product_id = p.Product_id
GROUP BY month , p.Product_name_, year
ORDER BY year DESC, month DESC;

