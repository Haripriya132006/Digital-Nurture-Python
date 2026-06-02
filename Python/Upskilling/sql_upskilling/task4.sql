select e.title,count(s.session_id) count 
from events e 
join sessions s on
e.event_id=s.event_id
where
TIME(s.start_time)>='10:00:00' and
TIME(s.end_time)<='12:00:00'
group by s.event_id