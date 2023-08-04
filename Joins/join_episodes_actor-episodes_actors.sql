
/*Por otro, necesitamos listar los títulos de los episodios junto con el nombre 
y apellido de los actores que trabajan en cada uno de ellos.*/

select e.title as titulo_episodio, a.first_name as nombre_actor, a.last_name as apellido_actor
from episodes e, actor_episode ae, actors a
where e.id = ae.episode_id
and a.id = ae.actor_id

select e.title as titulo_episodio, a.first_name as nombre_actor, a.last_name as apellido_actor
from episodes e
join actor_episode ae on e.id = ae.episode_id
join  actors a on a.id = ae.actor_id