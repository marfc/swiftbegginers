Para comprobar la memoria usada, en la ejecución, en la parte de abajo donde está la consola, se puede ver un icono similar 
al de compartir pero modo espejo.

Ese icono nos muestra un gráfico, donde en este caso se ven los ViewController y la API, comprobándose el patrón Delegate.

En la parte de la izquierda se puede ver cuantas referencias hay, si hay más de una, algo estamos haciendo mal con la memoria.

En este programa, deinit hace un printado por la consola, si se ha printado se indica así que sí que se ha liberado la misma, 
y que todo va bien.
