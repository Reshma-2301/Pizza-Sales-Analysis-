-- list all available pizzas along with their size and prices;

SELECT 
    pt.name, p.size, p.price
FROM
    pizzas p
        INNER JOIN
    pizza_types pt ON p.pizza_type_id = pt.pizza_type_id;
