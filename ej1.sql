-- Listar todos los artistas y sus diseños publicados:
-- Mostrar el nombre del artista y el nombre de sus diseños

SELECT A.nombre AS nombre_artista, E.nombre AS nombre_diseño
FROM artista A, estampa E
WHERE E.id_artista = A.id_artista;