-- List the top 5 most ordered pizza types along with their quantities.
select pt.name,sum(quantity)
from pizza_types  pt 
inner join pizzas p 
on pt.pizza_type_id=p.pizza_type_id
inner join order_details o 
on o.pizza_id=p.pizza_id
group by pt.name
order by sum(quantity) desc limit 5 ;
