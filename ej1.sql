-- Listar todos los artistas y sus diseños publicados:
-- Mostrar el nombre del artista y el nombre de sus diseños

SELECT A.nombre AS nombre_artista, E.nombre AS nombre_diseño
FROM artista A
INNER JOIN estampa E ON E.id_artista = A.id_artista
ORDER BY A.nombre;