CREATE DATABASE wimt_server;

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    img VARCHAR(255) NOT NULL,
    google_id INT NOT NULL UNIQUE
);

CREATE TABLE maps (
    id SERIAL PRIMARY KEY,
    body VARCHAR(255) NOT NULL,
    user_id INT references users(id) NOT NULL
);