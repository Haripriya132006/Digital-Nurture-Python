select user_id,event_id ,count(*) 'count'
from registrations
group by user_id,event_id
having 'count'>1;
