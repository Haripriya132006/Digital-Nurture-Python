select u.full_name,f.rating,f.comments,e.title from users u
join feedback f on u.user_id=f.user_id
join events e on e.event_id=f.event_id
where f.rating <3
