select e.title 
from registrations r 
left join feedback f 
on r.event_id=f.event_id
join events e on 
e.event_id=r.event_id
where f.feedback_id is null
group by e.title

