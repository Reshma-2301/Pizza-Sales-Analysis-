-- most popular pizza 
select pt.name, count(od.quantity) as quantity
from order_details od 
inner join pizzas p
on od.pizza_id=p.pizza_id
inner join pizza_types pt
on pt.pizza_type_id=p.pizza_type_id
group by name 
order by quantity desc limit 5 ;