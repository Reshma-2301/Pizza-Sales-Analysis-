-- 4. Identify the most common pizza size ordered.
SELECT 
    SUM(quantity) AS total_orders, size
FROM
    pizzas p
        INNER JOIN
    order_details o ON p.pizza_id = o.pizza_id
GROUP BY p.size
ORDER BY total_orders desc;