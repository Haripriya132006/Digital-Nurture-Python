select e.title,r.resource_id 
from events e 
left join resources r on 
e.event_id=r.event_id
where r.resource_id is null

