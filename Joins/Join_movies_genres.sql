/*Crear un listado a partir de la tabla de películas, mostrar un reporte de la cantidad de películas por nombre de género.*/
select g.name as nombre_genero, count(*) as cantidad_movies
from movies m, genres g
where m.genre_id = g.id group by g.name order by g.name

select g.name as nombre_genero, count(*) as cantidad_movies
from movies m
join genres g
on m.genre_id = g.id group by g.name order by g.name