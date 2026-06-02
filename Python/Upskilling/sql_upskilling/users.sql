create table users(
    user_id int primary key auto_increment,
    full_name varchar(100) not null,
    email varchar(100) not null unique,
    city varchar(100) not null,
    registration_date DATE not null
);

insert into users(full_name,email,city,registration_date) values
('Alice Johnson', 'alice@example.com', 'New York', '2024-12-01'),
('Bob Smith', 'bob@example.com', 'Los Angeles', '2024-12-05'),
('Charlie Lee', 'charlie@example.com', 'Chicago', '2024-12-10'),
('Diana King', 'diana@example.com', 'New York', '2025-01-15'),
('Ethan Hunt', 'ethan@example.com', 'Los Angeles', '2025-02-01');

-- select * from users;