use june_25;
select * from superstore where country in("spain","france") and sales >500 order by sales asc;

#fromat 2 incase if u dont want to is in we can use this wat 
select * from superstore where (country = "spain" or country ="france") and sales > 500 order by sales asc;



#country starts with letter S 
select distinct country from superstore where country like("s%");

#country starts with letter a 
select distinct country from superstore where country like("a%");

 #country contains letter s
 select distinct country from superstore where country like("%s%");
 
# country starts with A and ends with A 

select distinct country from superstore where country like("a%a");

#country not ending with letter A 
select distinct country from superstore where country not like ("%a");

#if you want specific length of the text 
select distinct country from superstore where country like ("_____");

select distinct country from superstore where country like ("___a%");

#counrty of 7 letters or more 
select distinct country from superstore where country like ("_______%");

#country <7 

select distinct country from superstore  where country not like ("_______%"); 

#Group by funcions (sum, count, min, max,avarage)
select count(*) as count_data from superstore;

select count(distinct country) as country_country from superstore;

select sum(sales) as Total_sales from superstore;

select min(sales) as min_sales from superstore;
select max(sales) as max_sales from superstore;
select avg(sales) as avg_sales from superstore;

#if  you wnat to get all at single data 

select count(distinct country ) country_count, sum(sales) total_sales, min(sales)
 min_sales, max(sales) max_sales, avg(sales) avg_sales from superstore;

select country , sum(sales) Totalsales from superstore group by country order by totalsales desc;

select country , sum(sales) totalsales from superstore where country = "india" group by country;



