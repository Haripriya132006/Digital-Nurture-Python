select e.title ,count(f.feedback_id) 'feedback_count',avg(f.rating) 'average_rating'
from events e join feedback f
on e.event_id=f.event_id
group by e.event_id
having feedback_count >=10
order by average_rating desc;

