select e.title, avg(timestampdiff(minute,s.start_time,s.end_time)) 'avg duration(min)'
from sessions s
join events e 
on e.event_id=s.event_id
group by e.event_id;