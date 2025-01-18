USE [3rd SQL CLASS Home work]
GO

SELECT [pizza_id]
      ,[order_id]
      ,[pizza_name_id]
      ,[quantity]
      ,[order_date]
      ,[order_time]
      ,[unit_price]
      ,[total_price]
      ,[pizza_size]
      ,[pizza_category]
      ,[pizza_ingredients]
      ,[pizza_name]
  FROM [dbo].[pizza_sales$]

GO


--1	Total Revenue

		 Select SUM ([total_price]) As TotalRevenue
         From [dbo].[pizza_sales$]


--2	Total Pizzas Sold

		 Select count ([quantity])
         From [dbo].[pizza_sales$]


--3	Total number of Orders

		 Select count ([order_id])
         From [dbo].[pizza_sales$]


--4	How many order Veggie pizza category was sold

         Select Sum ([quantity]) As Veggie_pizza_category
         From [dbo].[pizza_sales$]
		 Where [pizza_category]= 'Veggie';

--5	How many  The Hawaiian Pizza and  The Greek Pizza  was sold
Select *
         From [dbo].[pizza_sales$]
		 Where [pizza_name_id] ='mexicana_l' OR [pizza_name_id]= 'the_greek_s'



--6	List of pizza ordered in January 2015


Select FORMAT([order_date],'MMM, yyyy') AS MonthYear
From [dbo].[pizza_sales$]
where [order_date] = 'January 2015'


--7   List of pizza ordered between 1st of November till 31st December 2015

Select FORMAT([order_date],'MMM, yyyy') AS MonthYear
From [dbo].[pizza_sales$]
where [order_date] between 'November 2015' and 'December 2015'

OR

Select *
         From [dbo].[pizza_sales$]
		 Where [order_date] BETWEEN '2015-11-01 ' AND  '2015-12-31';

--8 What is the quantity of The Spinach Supreme Pizza sold in March 2015

Select *
         From [dbo].[pizza_sales$]
		 Where [pizza_category]= 'Supreme' and [order_date] ='March 2015'

       OR  

		 Select sum([quantity]) as Spinach_Supreme_Quantity
		 From [dbo].[pizza_sales$]
		 Where [pizza_name_id] = 'The Spinach Supreme Pizza'
		 AND [order_date] between '2015-03-01' AND  '2013-03-31';

--9	List of Medium pizza sold

Select *
         From [dbo].[pizza_sales$]
		 Where [pizza_size] = 'm'


--10	List of pizza that sold for more than 12.5

Select *
         From [dbo].[pizza_sales$]
		 Where [unit_price] >= 12.5


