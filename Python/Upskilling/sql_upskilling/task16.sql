select u.full_name from users u
left join registrations r on 
u.user_id=r.user_id
where r.registeration_id is null
and
r.registration_date >= curdate() - interval 30 day ; 
