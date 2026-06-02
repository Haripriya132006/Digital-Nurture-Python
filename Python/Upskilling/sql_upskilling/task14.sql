select e.title , count(r.registeration_id) 'people registered' 
from events e
join registrations r
on e.event_id=r.event_id
group by e.event_id
order by 'people registered' desc;