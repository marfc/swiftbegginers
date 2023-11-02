Introducción del curso de SwiftBeta de UIKit.

Algunos apuntes:

Para la layout (que cuando se gire horizontalmente no se mueva todo mal): 
1 - ctrl mientras se clica en el label/button lo que sea, se arrastra (sale una línea) y se suelta. 
2 - Pulsa shift y selecciona vertical y horizontal. 
3 - Si el label/button/etc no está en el centro se va a quejar, tienes que pulsar sobre el icono de refresh 
abajo (a la derecha del zoom de la preview)

Si por ejemplo es un botón y un label, y el botón hemos puesto para que quede siempre en el centro, podemos 
hacer con el label el paso 1 y arrastrar hasta el botón para, por ejemplo, seleccionar vertical spacing, 
que sería que siempre tenga ese margen vertical se haga el giro que se haga.

Además, habría que poner un constraint horizontal en ese caso porque no solo se puede controlar un eje.
También hay que arrastrar dentro del propio label (de izq a dcha) y seleccionar width, para la misma anchura, 
y de arriba a abajo seleccionar height, para la misma altura, para que no cambie el tamaño.

Una vez creado en el storyboard los botones, hay que abrir el ViewController y en otra pestaña el Main, para 
arrastrar desde el label hasta el código e ir creando las referencias dentro del mismo.
Con esas referencias se puede ir cambiando ajustes de cada una dentro de viewDidLoad()
