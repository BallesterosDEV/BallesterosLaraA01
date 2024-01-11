# BallesterosLaraA01

Este proyecto pretende jugar con los posicionamientos y las relaciones que se forman entre los widgets, muestra cómo dividir la pantalla en cinco rectángulos, cada uno con un contenido diferente. Los elementos de cada rectángulo están centrados.

### Código

- El código para dividir la pantalla en cinco rectángulos se encuentra en la clase `MyApp`. En la función `build()`, se crea un widget `Scaffold` con un widget `SingleChildScrollView` como hijo. El widget `SingleChildScrollView` permite que la pantalla se pueda desplazar para ver los cinco rectángulos.

- Dentro del widget `SingleChildScrollView`, se crea un widget `Column` que contiene los cinco rectángulos. Cada rectángulo se crea mediante una función `_buildRectangle()`.

- La función `_buildRectangle()` acepta tres parámetros: el color del rectángulo, el texto que se mostrará en el centro del rectángulo y una lista de widgets que se mostrarán en el rectángulo.

- Los primeros cuatro rectángulos se crean utilizando las funciones `_buildRectangleWithSquares()`, `_buildRectangleWithLongRectangles()`, `_buildRectangleWithRowAndColumn()` y `_buildRectangleWithTwoElements()`. Estas funciones utilizan los mismos parámetros que la función `_buildRectangle()`.

- El quinto rectángulo se crea utilizando la función `_buildRectangleWithTwoElements()`. Esta función acepta dos parámetros: una lista de widgets que se mostrarán en el rectángulo y una lista de valores `flex` que se utilizarán para distribuir el espacio entre los widgets.

### Capturas de pantalla

![Ejercicio01Acceso](https://github.com/BallesterosDEV/BallesterosLaraA01/assets/118269269/ab915870-86d3-4294-8cf6-e1de01b863d3)


### Explicación del código

- La función `_buildRectangle()` utiliza el widget `Container` para crear un rectángulo. El parámetro `color` se utiliza para establecer el color del rectángulo. El parámetro `text` se utiliza para establecer el texto que se mostrará en el centro del rectángulo.

- Las funciones `_buildRectangleWithSquares()`, `_buildRectangleWithLongRectangles()`, `_buildRectangleWithRowAndColumn()` y `_buildRectangleWithTwoElements()` utilizan el widget `Row` o `Column` para crear una estructura de filas o columnas.

- La función `_buildRectangleWithSquares()` utiliza la función `_buildSquare()` para crear cuadrados. La función `_buildRectangleWithLongRectangles()` utiliza la función `_buildLongRectangle()` para crear rectángulos alargados.

- La función `_buildRectangleWithRowAndColumn()` utiliza una combinación de las funciones `_buildSquare()` y `_buildLongRectangle()` para crear una fila que contiene una fila de cuadrados y una columna de rectángulos alargados.

- La función `_buildRectangleWithTwoElements()` utiliza una combinación de las funciones `_buildRow()` y `_buildColumn()` para crear un rectángulo que contiene dos elementos.


