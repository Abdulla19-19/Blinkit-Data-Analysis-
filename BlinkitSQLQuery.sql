select * from Blinkit_data

select count(*) from Blinkit_data

update Blinkit_data
set Item_Fat_Content= 
case   when Item_Fat_Content in ('LF','low fat') then 'Low Fat'
       when Item_Fat_Content ='reg' then 'Regular'
	   else Item_Fat_Content
	   end
select distinct (Item_Fat_Content) from Blinkit_data
--total sales
select cast(sum(Sales)/1000000 as decimal(10,2)) as total_sales_millions
from Blinkit_data
--avg sales
select cast(avg(Sales) as decimal(10,0)) as avg_sales from  Blinkit_data
--no of items
select count(*) as no_of_items from Blinkit_data
--avg rating
select cast(avg(rating) as decimal (10,2)) as avg_rating from Blinkit_data

--total sales by fat content
select  Item_Fat_Content,
cast(sum(Sales)/1000 as decimal(10,2)) as total_sales_thousands,
cast(avg(Sales) as decimal (10,1)) as avg_sales,
count(*) as no_of_items,
cast(avg(rating) as decimal (10,2)) as avg_rating                  
from Blinkit_data
group by Item_fat_Content
order by total_sales_thousands desc

--total sales by item type
select  Item_Type,
cast(sum(Sales) as decimal(10,2)) as total_sales,
cast(avg(Sales) as decimal (10,1)) as avg_sales,
count(*) as no_of_items,
cast(avg(rating) as decimal (10,2)) as avg_rating                  
from Blinkit_data
group by Item_Type
order by total_sales desc
--fat content by outlet for total sales
select Outlet_Location_type,
 isnull([Low_Fat], 0) as Low_Fat,
 isnull(regular,0) as Regular
 from 
 (
 select Outlet_Location_type, Item_Fat_Content,
        Cast(sum(Sales) as decimal(10,2)) as Total_sales
	from Blinkit_data
	group by Outlet_Location_type, Item_Fat_Content
	) as Sourcetable 
pivot
(
 sum(Total_sales)
 for Item_Fat_Content in (Low_Fat,Regular))as pivottable
 order by Outlet_Location_type 

 --total sales by outlet establishment
 
 select Outlet_Establishment_Year,
 cast(sum(Sales) as decimal(10,2)) as total_sales,
 cast(avg(Sales) as decimal (10,1)) as avg_sales,
 count(*) as no_of_items,
 cast(avg(rating) as decimal (10,2)) as avg_rating 
	from Blinkit_data
	group by Outlet_Establishment_Year
	order by Outlet_Establishment_Year desc

--percntage of sales by outlet size
select outlet_size,
       cast(sum(sales) as decimal(10,2)) as total_sales,
	   cast((sum(sales) * 100.0 / sum(sum(sales))over()) as decimal(10,2)) as Sales_percentage
from Blinkit_data
group by Outlet_Size
order by total_sales desc

--sales by outlet location
select Outlet_Location_Type,
 cast(sum(Sales) as decimal(10,2)) as total_sales,
   cast((sum(sales) * 100.0 / sum(sum(sales))over()) as decimal(10,2)) as Sales_percentage,
 cast(avg(Sales) as decimal (10,1)) as avg_sales,
 count(*) as no_of_items,
 cast(avg(rating) as decimal (10,2)) as avg_rating 
	from Blinkit_data
	where Outlet_Establishment_Year=2020
	group by Outlet_Location_Type
	order by total_sales desc

	-- all by outlet type
	select Outlet_Type,
 cast(sum(Sales) as decimal(10,2)) as total_sales,
   cast((sum(sales) * 100.0 / sum(sum(sales))over()) as decimal(10,2)) as Sales_percentage,
 cast(avg(Sales) as decimal (10,1)) as avg_sales,
 count(*) as no_of_items,
 cast(avg(rating) as decimal (10,2)) as avg_rating 
	from Blinkit_data
	group by Outlet_Type
	order by total_sales desc
