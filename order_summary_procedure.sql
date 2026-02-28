SELECT
  *
FROM
  `bigquery-public-data.thelook_ecommerce.orders` LIMIT 10;

  ## Total number of orders in a company 

  SELECT COUNT(*) AS total_orders
FROM `bigquery-public-data.thelook_ecommerce.orders`;

## Total Revenue

SELECT SUM(sale_price) AS total_revenue
FROM `bigquery-public-data.thelook_ecommerce.order_items`;

## Revenue by status

SELECT status,
       SUM(sale_price) AS revenue
FROM `bigquery-public-data.thelook_ecommerce.order_items`
GROUP BY status
ORDER BY revenue DESC;

## copying public data intomy practice data set

CREATE OR REPLACE TABLE `premium-lead-480412-g3.practice_dataset.orders_copy` AS
SELECT *
FROM `bigquery-public-data.thelook_ecommerce.orders`
LIMIT 1000;


## creating stored procedure for total orders and total cancelled orders

CREATE OR REPLACE PROCEDURE `premium-lead-480412-g3.practice_dataset.order_summary`()
BEGIN
  SELECT 
    COUNT(*) AS total_orders,
    COUNTIF(status = 'Cancelled') AS cancelled_orders
  FROM `premium-lead-480412-g3.practice_dataset.orders_copy`;
END;

CALL `premium-lead-480412-g3.practice_dataset.order_summary`();
