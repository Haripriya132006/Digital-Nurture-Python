select u.city , count(r.user_id) count from users u 
join registrations r 
on u.user_id=r.user_id
group by u.city
order by count desc limit 5

