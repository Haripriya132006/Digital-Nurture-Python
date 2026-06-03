select 
    DATE_FORMAT(registration_date, '%Y-%m') AS month,
    count(*) AS registration_count
from registrations
where registration_date >= DATE_SUB(Date('2026-01-01'), INTERVAL 12 MONTH)
group by DATE_FORMAT(registration_date, '%Y-%m')
order by month asc;