-- Encontrar los diseños más populares:
-- Obtener el nombre del diseño y el número de veces que ha sido seleccionado por los clientes. Limitar a los primeros 5.

SELECT E.nombre AS nombre_diseño, COUNT(*) AS veces_seleccionado
FROM estampa E
INNER JOIN cliente_estampa CE ON CE.id_estampa = E.id_estampa
GROUP BY E.nombre
ORDER BY COUNT(*) DESC
LIMIT 5;