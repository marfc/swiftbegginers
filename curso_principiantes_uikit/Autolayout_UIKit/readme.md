## Apuntes Autolayout

Primero creamos para la image un ImageView, que es un closure en el que añadimos las características que va 
a tener el imageView, creamos la instancia, el aspect ratio y tenemos que asignarle una imagen.<br>

La imagen que se asigna, si viene de una descargada y guardada localmente, lo que tenemos que hacer es meternos 
en Assets, y arrastrar hasta ahí la imagen descargada. <br>

Es recomendable ponerle Single Scale para que solo tenga un recuadro, esto se hace pulsando la imagen y viendo 
en el menú de la derecha la opción “Scale”.<br>

Una vez tenemos la imagen dentro del proyecto, en la asignación escogemos la opción named y como String solo hay
que poner el nombre que tiene la imagen.<br>

En ViewDidLoad es donde vamos a poner las características de la vista. Para acceder a la misma se utiliza la 
palabra reservada view. Es importante que si añadimos solamente la imagen como subvista, no se va a mostrar en 
la ejecución porque no hemos puesto constraints.<br>

Hay que pulsar en el menú de abajo sobre el icono de capas para ver la jerarquía de vistas de la aplicación 
(IMPORTANTE: no se va a ver el icono de capas de este menú si no tienes el emulador abierto y la aplicación en 
ejecución).

