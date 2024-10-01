create database sales_db;
use sales_db;

select * from sales_data_sample;

select PRODUCTCODE,sum(sales) as TotalRevenue from sales_data_sample 
group by PRODUCTCODE;

select YEAR_ID,MONTH_ID,sum(sales) as MonthlyRevenue
from sales_data_sample
group by YEAR_ID,MONTH_ID
order by YEAR_ID,MONTH_ID;



select CustomerName,sum(sales) as TotalSpending
INTO OUTFILE 'C:\\Program Files\\MySQL\\MySQL Server 8.3\\docs\\Customer_TotalSpending.csv'
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
from sales_data_sample
group by CustomerName
order by TotalSpending desc
limit 15;