-- 1. View the order_details table
SELECT * FROM order_details;

-- 2. Date range of the table
SELECT * FROM order_details
ORDER BY order_date;

SELECT MIN(order_date), MAX(order_date) FROM order_details;

-- 3. Count order made within this date range
SELECT COUNT(DISTINCT order_id) FROM order_details;

-- 4. Count items ordered within this date range
SELECT COUNT(*) FROM order_details;

-- 5. Orders that had the most number of items
SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
ORDER BY num_items DESC;

-- 6. Orders that had more than 12 items
SELECT COUNT(*) FROM

(SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
HAVING num_items > 12) AS num_orders;
