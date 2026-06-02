select u.full_name 
from users u join registrations r 
on u.user_id=r.user_id
where r.registration_date >= curdate()-interval 90 day;