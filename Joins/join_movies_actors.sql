/*Para nuestro próximo desafío, necesitamos obtener a todos los actores o actrices (mostrar nombre y apellido) 
que han trabajado en cualquier película de la saga de La Guerra de las galaxias.*/
select distinct a.first_name as nombre_actor, a.last_name as apellido_actor
from movies m, actor_movie am, actors a
where m.id = am.movie_id
and a.id = am.actor_id
and m.title like "%galaxias%"

select distinct a.first_name as nombre_actor, a.last_name as apellido_actor
from movies m 
join actor_movie am on m.id = am.movie_id
join actors a on a.id = am.actor_id
where m.title like "%galaxias%"