select s1.start_time,s1.end_time ,s2.start_time,s2.end_time from sessions s1 
join sessions s2 
on s1.event_id=s2.event_id  and 
s1.session_id <s2.session_id
where time(s1.start_time) between time(s2.start_time) and time(s2.end_time)