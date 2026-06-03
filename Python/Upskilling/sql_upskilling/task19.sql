select  e.title ,
        count(Distinct r.registeration_id) 'resistered people' ,
        avg(f.rating) 'average rating'
from events e join
registrations r 
on e.event_id=r.event_id 
join feedback f on
e.event_id=f.event_id
where e.status='completed'
group by e.event_id;
