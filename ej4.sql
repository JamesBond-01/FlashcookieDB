-- Listar los clientes que han seleccionado más diseños:
-- Mostrar el nombre del cliente y el número de diseños que ha seleccionado.

SELECT C.nombre AS nombre_cliente, COUNT(*) AS diseños_seleccionados
FROM cliente C
INNER JOIN cliente_estampa CE ON C.id_cliente = CE.id_cliente
GROUP BY C.nombre
ORDER BY COUNT(*) DESC;