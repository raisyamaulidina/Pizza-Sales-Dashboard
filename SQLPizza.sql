select * from pizza_sales

select SUM(total_price) as Total_Revenue from pizza_sales

select (SUM(total_price) / COUNT(distinct order_id)) as Avg_order_Value from pizza_sales

select SUM(quantity) as Total_pizza_sold from pizza_sales

select COUNT(distinct order_id) as Total_Orders from pizza_sales

select CAST(cast(sum(quantity) as decimal(10,2)) / 
cast(count(distinct order_id) as decimal(10,2)) as decimal(10,2))
as Avg_Pizza_per_order from pizza_sales

select DATENAME(DW, order_date) as order_day, COUNT(distinct order_id) 
as total_orders from pizza_sales group by DATENAME(dw, order_date)

select DATENAME(month, order_date) as Month_Name, COUNT(distinct order_id) 
as Total_Orders from pizza_sales group by DATENAME(month, order_date)

select pizza_category, CAST(sum(total_price) as decimal(10,2)) as total_revenue,
CAST(sum(total_price) * 100 / (select sum(total_price) from pizza_sales)
as decimal(10,2)) as PCT from pizza_sales group by pizza_category

select pizza_size, CAST(sum(total_price) as decimal(10,2)) as total_revenue,
CAST(sum(total_price) * 100 / (select sum(total_price) from pizza_sales)
as decimal(10,2)) as PCT from pizza_sales group by pizza_size order by pizza_size

select pizza_category, SUM(quantity) as Total_Quantity_Sold
from pizza_sales
where MONTH(order_date)=2
group by pizza_category order by Total_Quantity_Sold DESC

select top 5 pizza_name, SUM(total_price) as Total_Revenue from pizza_sales
group by pizza_name order by Total_Revenue DESC

select top 5 pizza_name, SUM(total_price) as Total_Revenue from pizza_sales
group by pizza_name order by Total_Revenue ASC

select top 5 pizza_name, SUM(quantity) as Total_Pizza_Sold from pizza_sales
group by pizza_name order by Total_Pizza_Sold DESC

select top 5 pizza_name, SUM(quantity) as Total_Pizza_Sold from pizza_sales
group by pizza_name order by Total_Pizza_Sold ASC

select top 5 pizza_name, COUNT(distinct order_id) as Total_Orders from pizza_sales
group by pizza_name order by Total_Orders DESC

select top 5 pizza_name, COUNT(distinct order_id) as Total_Orders from pizza_sales
group by pizza_name order by Total_Orders ASC