CREATE TABLE users (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    registered TIMESTAMP DEFAULT now()::date NOT NULL,
    role TEXT
);


