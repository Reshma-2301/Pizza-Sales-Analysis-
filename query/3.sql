-- 3.Identify the highest-priced pizza.
SELECT 
    pt.name, p.price
FROM
    pizzas p
        INNER JOIN
    pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
ORDER BY p.price DESC
LIMIT 1;