/*SELECT m.id, title, genre_id, g.id id_genre, name 
FROM movies m
inner join genres g
on genre_id = g.id;*/

select m.id as movie_id, m.title, a.id as actor_id, a.first_name, a.last_name
from movies m, actors a, actor_movie am
where m.id = am.movie_id
and a.id = am.actor_id;

select distinct m.id as movie_id, m.title, a.id as actor_id, a.first_name, a.last_name
from movies m
join actor_movie am on m.id = am.movie_id
join actors a on a.id = am.actor_id
where title like "Harry%"