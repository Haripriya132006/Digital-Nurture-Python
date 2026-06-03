select u.full_name,e.title ,e.start_date from events e join users u 
on u.city=e.city
join registrations r on 
u.user_id=r.user_id and e.event_id=r.event_id
where e.status='upcoming'
order by e.start_date ;