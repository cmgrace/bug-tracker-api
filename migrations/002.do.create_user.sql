CREATE TABLE users (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    registered TIMESTAMPTZ DEFAULT now() NOT NULL,
    role TEXT
);


