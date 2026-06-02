select e.title ,count(session_id) 'number of sessions' from events e 
join sessions s on
e.event_id =s.event_id
where e.status='upcoming'
group by e.event_id;