select * from walmart;

-- Number of rows in the dataset.
select count(*) from walmart;



------------------------------------------
-- Walmart Business Problems
------------------------------------------


-- 1.  What are the different payment methods, and how many transactions and 
-- items were sold with each method?
select payment_method, count(invoice_id) as no_transactions, sum(quantity) from walmart
group by payment_method;

-- 2. Which category received the highest average rating in each branch?
select branch, category, avg_rating from
(select branch, category, round(cast(avg(rating) as numeric),2) as avg_rating,
dense_rank() over(partition by branch order by avg(rating) desc) as d_rnk
from walmart
group by branch,category
) as t1
where t1.d_rnk  = 1;

-- 3.  What is the busiest day of the week for each branch based on transaction volume?
select * from 
(select branch, to_char(date,'Day') as day_name, count(*) as no_transactions,
rank() over(partition by branch order by count(*) desc) as rnk
from walmart
group by branch,day_name) t1
where t1.rnk = 1;


-- 4. How many items were sold through each payment method?
select payment_method, sum(quantity) from walmart
group by payment_method;


-- 5. What are the average, minimum, and maximum ratings for each category in each city?
select city, category, round(cast(avg(rating) as numeric),2) as avg_rating, round(cast(min(rating) as numeric),2) as min_rating, round(cast(max(rating) as numeric),2) as max_rating from walmart
group by city, category;


-- 6. What is the total profit for each category, ranked from highest to lowest?
select category, sum(total_price * profit_margin) as total_profit from walmart
group by category
order by total_profit desc;


-- 7. What is the most frequently used payment method in each branch?
select branch, payment_method, total_transactions from 
(select branch, payment_method, count(*) as total_transactions,
rank() over(partition by branch order by count(*) desc) as rnk
from walmart
group by branch, payment_method) t1
where t1.rnk = 1;


-- 8. How many transactions occur in each shift (Morning, Afternoon, Evening) across branches?
select branch,
case
when extract(hour from time::time) < 12 then 'Morning'
when extract(hour from time::time) between 12 and 15 then 'Afternoon'
else 'Evening'
end as shift,
count(*) as total_transactions
from walmart
group by branch,shift
order by branch;


-- 9.  Which branches experienced the largest decrease in revenue compared to the previous year?













































































































































