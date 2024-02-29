-- Active: 1708953613720@@127.0.0.1@5432@ph
create table "user" (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(25) not null
)

CREATE TABLE "post" (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INT REFERENCES "user"(id)
    --  ON DELETE SET DEFAULT DEFAULT 2
);
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

select * from "user";
select * from post 
-- add  constraint
-- alter table post  alter column user_id set not null

-- insert into post (title,user_id) values ('test',2)

-- delete
-- delete from "user" where id=4;


-- see another table data using REFERENCES
select p.id  from post as p  join "user" as u on p.user_id = u.id


















drop table "user";
drop table post;

