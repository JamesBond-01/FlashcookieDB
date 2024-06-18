# FlashcookieDB

La empresa FlashCookie.com se dedica a la impresión de indumentaria con estampas
personalizadas.
El sistema permite a los creadores de estampas publicar su tienda online con diferentes
motivos. Luego un cliente busca una etiqueta en particular, por ejemplo “Júpiter” y la web
lista todas las estampas que coinciden con esta etiqueta.
Una vez elegida la estampa, el cliente elige qué tipo de producto quiere estampar. Las
categorías son varias, desde Remeras, Almohadones hasta Zapatillas

## Consigna
### Objetivos

1. Analizar el sitio FlashCookie.com. Revisar la sección FAQ (Preguntas frecuentes
https://flashcookie.com/faq) que describe en detalle toda la dinámica del sistema. A
fines prácticos se proveen 3 PDFs con los textos en el anexo.zip.

2. Identificar los datos relevantes de los irrelevantes. El sistema es muy complejo pero
no todo lo comentado en el FAQ tiene que considerarse para este trabajo. En
particular: Ignorar todo el proceso logístico de la impresión física, pagos y envíos.

3. Diseñar un Diagrama de Entidad relación que capture la mayor cantidad de
entidades, relaciones y atributos que permitan modelar el sistema online. Como
mínimo debe permitir a los artistas subir sus diseños, y a los clientes registrarse y
armar carritos con las prendas que desean estampar.

4. El diagrama de base de datos y crear una base de datos con todas sus tablas
normalizadas (al menos hasta la 3FN).

5. Cargar en dicha base, como mínimo, 5 artistas (con 2 a 6 estampas cada uno), 10
clientes, y todas las prendas que figuran en el FAQ con al menos 3 medidas cada
uno.

6. Escribir las consultas SQL que permitan responder a las consignas al final de este
trabajo práctico.

### Consignas a resolver mediante SQL

1. Listar todos los artistas y sus diseños publicados.
   - Mostrar el nombre del artista y el nombre de sus diseños.

2. Encontrar los diseños más populares.
   - Obtener el nombre del diseño y el número de veces que ha sido

seleccionado por los clientes. Limitar a los primeros 5.

3. Encontrar los 3 artistas con diseños más recientes.
   - Mostrar el nombre del artista y la fecha del diseño más reciente que ha
publicado.

4. Listar los clientes que han seleccionado más diseños.
   - Mostrar el nombre del cliente y el número de diseños que ha seleccionado.

5. Encontrar los diseños que coincidan con una palabra clave específica.
   - Permitir que los clientes busquen diseños utilizando una palabra clave y
mostrar el nombre del diseño y el nombre del artista que lo publicó.

6. Listado de clientes inactivos.
   - Listar clientes que no han iniciado sesión durante un período de tiempo
específico, indicando su inactividad.

