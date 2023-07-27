INSERT INTO worker (NAME, BIRTHDAY, LEVEL, SALARY) VALUES
    ('John Doe', '1990-05-15', 'Trainee', 800),
    ('Jane Smith', '1985-08-25', 'Junior', 1500),
    ('Michael Johnson', '1980-03-10', 'Middle', 3000),
    ('Emily Williams', '1975-12-05', 'Senior', 7000),
    ('David Brown', '1995-02-20', 'Junior', 1200),
    ('Sarah Davis', '1992-11-30', 'Senior', 8000),
    ('James Wilson', '1988-06-12', 'Middle', 4500),
    ('Linda Anderson', '1983-09-18', 'Junior', 1800),
    ('Robert Martinez', '1987-04-22', 'Senior', 6000),
    ('Karen Thomas', '1998-01-08', 'Trainee', 700);

INSERT INTO client (NAME) VALUES
    ('ABC Corporation'),
    ('XYZ Corp.'),
    ('123 Industries'),
    ('Acme Ltd.'),
    ('Tech Solutions');

INSERT INTO project (CLIENT_ID, START_DATE, FINISH_DATE) VALUES
    (1, '2022-05-01', '2023-03-31'),
    (2, '2022-08-15', '2023-10-31'),
    (3, '2023-01-10', '2023-06-30'),
    (4, '2022-11-01', '2023-01-31'),
    (5, '2023-03-15', '2024-01-31'),
    (1, '2023-04-01', '2024-06-30'),
    (3, '2022-09-10', '2023-05-31'),
    (2, '2022-12-01', '2023-09-30'),
    (4, '2023-02-15', '2023-04-30'),
    (5, '2023-07-01', '2024-04-30');

INSERT INTO project_worker (PROJECT_ID, WORKER_ID) VALUES
    (1, 1), (1, 2), (1, 3),
    (2, 2), (2, 4),
    (3, 3), (3, 5),
    (4, 4), (4, 6), (4, 7),
    (5, 5), (5, 6), (5, 7), (5, 8),
    (6, 6), (6, 7),
    (7, 1), (7, 9),
    (8, 1), (8, 3), (8, 10),
    (9, 8), (9, 9), (9, 10),
    (10, 1), (10, 2);

