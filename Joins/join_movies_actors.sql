/*Para nuestro próximo desafío, necesitamos obtener a todos los actores o actrices (mostrar nombre y apellido) 
que han trabajado en cualquier película de la saga de La Guerra de las galaxias.*/
select * 
from movies m, actors a, actor_movie am

select m.title as titulo_pelicula, a.first_name as nombre_actor, a.last_name as apellido_actor
from movies m, actors a, actor_movie am
where m.id = am.movie_id
and a.id = am.movie_id
and m.title like "%galaxias%"

select m.title as titulo_pelicula, a.first_name as nombre_actor, a.last_name as apellido_actor
from movies m
join actors a
on m.id = a.favorite_movie_id
and m.title like "%galaxias%"