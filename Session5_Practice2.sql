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
