/*Categorías y productos*/

/*Queremos tener un listado de todas las categorías.*/
SELECT *
FROM categorias
/*Cómo las categorías no tienen imágenes, solamente interesa obtener un listado de CategoriaNombre y Descripcion.*/
SELECT CategoriaNombre, Descripcion
FROM categorias 
/*Obtener un listado de los productos.*/
SELECT *
FROM productos
/*¿Existen productos discontinuados? (Discontinuado = 1).*/
SELECT Discontinuado
FROM productos
WHERE Discontinuado = 1; 

/*Para el viernes hay que reunirse con el Proveedor 8. ¿Qué productos son los que nos provee?*/
SELECT  proveedorid, ProductoNombre
FROM productos
WHERE ProveedorID = 8;

/*Queremos conocer todos los productos cuyo precio unitario se encuentre entre 10 y 22.*/
SELECT PrecioUnitario
FROM productos
WHERE preciounitario BETWEEN '10' AND '22';
/*Se define que un producto hay que solicitarlo al proveedor si sus unidades en stock son menores al Nivel de Reorden. ¿Hay productos por solicitar?*/
SELECT ProductoNombre, UnidadesStock, NivelReorden
FROM productos
WHERE UnidadesStock > NivelReorden;
/*8. Se quiere conocer todos los productos del listado anterior, pero que unidades pedidas sea igual a cero.*/
SELECT ProductoNombre, UnidadesPedidas
FROM productos
WHERE UnidadesStock > NivelReorden AND UnidadesPedidas = 0; 
/*Clientes*/
/*Obtener un listado de todos los clientes con Contacto, Compania, Título, País. Ordenar el listado por País.*/
SELECT ClienteID, Contacto, Compania, Titulo, Pais
FROM clientes
ORDER BY Pais;
/*Queremos conocer a todos los clientes que tengan un título “Owner”.*/
SELECT ClienteID, Titulo
FROM clientes
WHERE Titulo LIKE 'Owner%'; 

/*El operador telefónico que atendió a un cliente no recuerda su nombre. Solo sabe que comienza con “C”. ¿Lo ayudamos a obtener un listado con todos los contactos que inician con la letra “C”?*/
SELECT Contacto
FROM clientes
WHERE Contacto LIKE 'C%';
/*Facturas*/
/*Obtener un listado de todas las facturas, ordenado por fecha de factura ascendente.*/
SELECT FechaFactura
FROM facturas
ORDER BY FechaFactura ASC;
/*Ahora se requiere un listado de las facturas con el país de envío “USA” y que su correo (EnvioVia) sea distinto de 3.*/
SELECT EnvioVia,PaisEnvio
FROM facturas
WHERE PaisEnvio = 'USA' AND EnvioVia <> '3';
/*¿El cliente 'GOURL' realizó algún pedido?*/
SELECT *
FROM facturas
WHERE ClienteID LIKE 'GOURL';

/*Se quiere visualizar todas las facturas de los empleados 2, 3, 5, 8 y 9.*/
SELECT *
FROM facturas
WHERE EmpleadoID IN ("2", "3", "5", "8", "9");
ORDER BY EmpleadoID;
/*En esta segunda parte vamos a intensificar la práctica de consultas SELECT, añadiendo ALIAS, LIMIT y OFFSET.*/
/*Productos*/
/*Obtener el listado de todos los productos ordenados descendentemente por precio unitario.*/
SELECT *
FROM productos
ORDER BY PrecioUnitario DESC;
/*Obtener el listado de top 5 de productos cuyo precio unitario es el más caro.*/
SELECT PrecioUnitario, ProductoNombre
FROM productos
ORDER BY PrecioUnitario DESC
LIMIT 5;


/*Obtener un top 10 de los productos con más unidades en stock.*/
SELECT UnidadesStock, ProductoNombre
FROM productos
ORDER BY UnidadesStock DESC
LIMIT 10;
/*FacturaDetalle*/
/*Obtener un listado de FacturaID, ProductoID, Cantidad.*/
SELECT *
FROM facturadetalle
ORDER BY FacturaID;
/*Ordenar el listado anterior por cantidad descendentemente.*/
SELECT *
FROM facturadetalle
ORDER BY CANTIDAD DESC;
/*Filtrar el listado solo para aquellos productos donde la cantidad se encuentre entre 50 y 100.*/
SELECT CantidadPorUnidad
FROM productos
WHERE CantidadPorUnidad BETWEEN 50 AND 100;

/*En otro listado nuevo, obtener un listado con los siguientes nombres de columnas: NroFactura (FacturaID), Producto (ProductoID), Total (PrecioUnitario*Cantidad).*/
SELECT *
FROM facturadetalle
ORDER BY FacturaID;
