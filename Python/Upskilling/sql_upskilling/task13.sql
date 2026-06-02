select e.city , avg(f.rating)
from events e 
join feedback f
on e.event_id=f.event_id
group by e.city