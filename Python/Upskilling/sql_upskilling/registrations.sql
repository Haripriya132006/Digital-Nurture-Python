create table registrations(
    registeration_id int primary key auto_increment,
    user_id int ,
    event_id int,
    registration_date date not null,
    foreign key (user_id) references users(user_id),
    foreign key(event_id) references events(event_id)
);

INSERT INTO Registrations (user_id, event_id, registration_date) VALUES
(1, 1, '2025-05-01'),
(2, 1, '2025-05-02'),
(3, 2, '2025-04-30'),
(4, 2, '2025-04-28'),
(5, 3, '2025-06-15');

-- SELECT * FROM Registrations;