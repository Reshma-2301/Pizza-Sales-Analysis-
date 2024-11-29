-- Group the orders by date and calculate the avg number of pizzas ordered per day.
select avg(total_quantity)as avg_pizza_ordered_per_day from (
select o.order_date,count(od.order_id) as total_quantity
from orders o
inner join 
order_details od 
on o.order_id=od.order_id
group by o.order_date) as daily_goals  ;
