-- Active: 1708953613720@@127.0.0.1@5432@ph
create table "user" (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(25) not null
)

create table "post" (
    id SERIAL PRIMARY KEY,
    title text not null,
    user_id int REFERENCES "user"(id)
)