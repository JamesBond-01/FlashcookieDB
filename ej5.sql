-- Encontrar los diseños que coincidan con una palabra clave específica:
-- Permitir que los clientes busquen diseños utilizando una palabra clave y mostrar el nombre del diseño y el nombre del artista que lo publicó.

-- Ejemplos de Tags cargados: Estados Unidos, basquet, James Bond, Argentina, mate, animales, relojes, armas, naturaleza, autos

SELECT E.nombre AS estampa_nombre, A.nombre AS artista_nombre
FROM estampa E, artista A, tag T, estampa_tags ET
WHERE 	A.id_artista = E.id_artista
	AND ET.id_estampa = E.id_estampa
    AND ET.id_tag = T.id_tag
    AND T.nombre LIKE '%james bond%';