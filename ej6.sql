-- Listado de clientes inactivos:
-- Listar clientes que no han iniciado sesión durante un período de tiempo específico, indicando su inactividad.

SET @periodo = '2024-01-01';

SELECT C.id_cliente, C.nombre, C.apellido, S.ultima_sesion
FROM cliente C, sesiones S
WHERE S.id_usuario = C.id_cliente
	AND S.ultima_sesion < @periodo
ORDER BY S.ultima_sesion DESC;


-- AND S.ultima_sesion < DATE_SUB(NOW(), INTERVAL 4 MONTH)