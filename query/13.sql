-- average price of pizzas for each pizza type 
SELECT 
    pizza_types.name, ROUND(AVG(pizzas.price), 2) AS avg_price
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
GROUP BY pizza_types.name;