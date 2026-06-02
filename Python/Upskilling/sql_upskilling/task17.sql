select speaker_name ,count(session_id) 'number of sessions' 
from sessions 
group by speaker_name
having 'number of sessions' >1;