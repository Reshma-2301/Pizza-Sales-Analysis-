-- 3.Calculate the total revenue generated from pizza sales.
SELECT 
    SUM(p.price * o.quantity) AS total_revenue
FROM
    pizzas p
        INNER JOIN
    order_details o ON p.pizza_id = o.pizza_id;
