---Ex1
SELECT DISTINCT CITY FROM STATION
WHERE ID%2=0
---Ex2
select count(CITY) - count(distinct CITY)
from STATION
---Ex4
SELECT round(cast(SUM(item_count*order_occurrences)/SUM(order_occurrences) as decimal),1) as mean
from items_per_order
---Ex5
SELECT candidate_id FROM candidates
where skill in('Python','Tableau','PostgreSQL') 
GROUP BY candidate_id
having COUNT(skill)=3
---Ex6
SELECT user_id, 
Date(MAX(post_date))- Date(MIN(post_date)) as days_between
FROM posts
where post_date>='2021-01-01' and post_date<='2022-01-01'
GROUP BY user_id
HAVING COUNT(user_id)>=2
---Ex7
SELECT card_name,
MAX(issued_amount) - MIN(issued_amount) as difference
FROM monthly_cards_issued
group by card_name
ORDER BY difference DESC
---Ex8
SELECT manufacturer,
COUNT(product_id) as drug_count,
abs(SUM(total_sales - cogs)) as total_loss
FROM pharmacy_sales
where total_sales < cogs
GROUP BY manufacturer
ORDER BY total_loss DESC
---Ex9
select * from Cinema
where description <> "boring" and id%2=1
order by  rating desc
---Ex10
select teacher_id, 
count(distinct subject_id) as cnt
from Teacher
group by teacher_id
---Ex11
select user_id,
count(follower_id) as followers_count
from Followers
group by user_id
order by user_id
---Ex12
select class from Courses
having count(student)>=5
