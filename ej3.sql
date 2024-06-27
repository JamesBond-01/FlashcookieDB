-- Encontrar los 3 artistas con diseños más recientes:
-- Mostrar el nombre del artista y la fecha del diseño más reciente que ha publicado.

SELECT A.nombre AS nombre_artista, MAX(E.fecha_creacion) AS ultimo_diseño
FROM artista A
INNER JOIN estampa E ON E.id_artista = A.id_artista
GROUP BY nombre_artista
ORDER BY ultimo_diseño DESC
LIMIT 3;