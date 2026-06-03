select u.full_name,count(f.feedback_id)
from feedback f 
right join users u
on u.user_id=f.user_id
group by u.user_id 
order by 2 desc limit 5;
