select  e.organizer_id ,count(e.title) 'no of events' , e.status from events e
group by  e.organizer_id , e.status;
