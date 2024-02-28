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

insert into "user" (user_name) values 
    ('akash'),
   ('batash'),
    ('sagor'),
    ('nodi')

INSERT INTO "post" (title, user_id) VALUES
('Enjoying a sunny day with Akash!', 2),
('Batash just shared an amazing recipe!', 1),
('Exploring adventures with Sagor.', 4),
('Nodi''s wisdom always leaves me inspired.', 4);

select * from post
-- add  constraint
-- alter table post  alter column user_id set not null

insert into post (title,user_id) values ('test',2)

