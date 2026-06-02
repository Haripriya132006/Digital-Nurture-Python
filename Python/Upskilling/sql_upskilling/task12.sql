select e.title , count(s.session_id) 'no. of session'
from events e 
join sessions s
on e.event_id=s.event_id
group by e.title
order by 2 desc