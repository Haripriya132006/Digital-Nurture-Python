select e.title from events e 
left join sessions s 
on s.event_id = e.event_id
where s.session_id is null