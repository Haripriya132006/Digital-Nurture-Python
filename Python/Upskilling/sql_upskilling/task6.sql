select resource_type , count(event_id) from resources
group by resource_type;