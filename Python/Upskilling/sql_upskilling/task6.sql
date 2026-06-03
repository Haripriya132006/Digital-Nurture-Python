select event_id,sum(resource_type='pdf'),sum(resource_type='image'),sum(resource_type='link')
from resources group by event_id;