create table resources (
    resource_id int primary key auto_increment,
    event_id int,
    resource_type enum('pdf','image','link') default 'link',
    resource_url varchar(255) not null,
    uploaded_at DATETIME not null,
    foreign key (event_id) references events(event_id)
);

INSERT INTO Resources (event_id, resource_type, resource_url, uploaded_at) VALUES
(1, 'pdf', 'https://portal.com/resources/tech_meetup_agenda.pdf', '2025-05-01 10:00:00'),
(2, 'image', 'https://portal.com/resources/ai_poster.jpg', '2025-04-20 09:00:00'),
(3, 'link', 'https://portal.com/resources/html5_docs', '2025-06-25 15:00:00');

SELECT * FROM Resources;