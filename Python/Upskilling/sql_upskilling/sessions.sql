create table sessions (
    session_id int primary key auto_increment,
    event_id int,
    title varchar(200) not null,
    speaker_name varchar(100) not null,
    start_time DATETIME not null,
    end_time datetime not null,
    foreign key(event_id) references events(event_id)
);
INSERT INTO Sessions (event_id, title, speaker_name, start_time, end_time) VALUES
(1, 'Opening Keynote', 'Dr. Tech', '2025-06-10 10:00:00', '2025-06-10 11:00:00'),
(1, 'Future of Web Dev', 'Alice Johnson', '2025-06-10 11:15:00', '2025-06-10 12:30:00'),
(2, 'AI in Healthcare', 'Charlie Lee', '2025-05-15 09:30:00', '2025-05-15 11:00:00'),
(3, 'Intro to HTML5', 'Bob Smith', '2025-07-01 10:00:00', '2025-07-01 12:00:00');

-- SELECT * FROM Sessions;