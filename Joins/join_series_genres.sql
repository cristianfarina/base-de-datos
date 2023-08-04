/*Utilizando la base de datos de movies, queremos conocer, por un lado, los títulos
 y el nombre del género de todas las series de la base de datos.*/

SELECT s.title, g.name 
FROM series s, genres g
where s.id = g.id;

SELECT s.title, g.name 
FROM series s
join genres g
on s.id = g.id;