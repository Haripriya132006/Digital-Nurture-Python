select u.full_name , 
count(distinct r.registeration_id) ,
count(distinct f.feedback_id)
from users u
left join registrations r 
on u.user_id=r.user_id
left join feedback f
on u.user_id=f.user_id
group by u.user_id;
