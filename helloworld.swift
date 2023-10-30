//helloworld.swift

// Estructura con el contenido, en este caso, el texto "Hello World!"
struct ContentView: View {
    var body: some View{
        Text("Hello world!")    
    }
}

// Estructura que muestra la preview del contenido, para ello llama
// a ContentView
struct ContentView_Previews: PreviewProvider {
    static var previews: some View{ 
        ContentView()
    }
}

/*
    Si le damos a Resume en la pantalla derecha, cargará la preview del código, y ahí los labels
    son pulsables, por lo tanto se puede modificar sin escribir código, de forma interactiva.

    En la barra superior, hay un icono "+" llamado librería que si lo pulsamos, accedemos a diferentes
    opciones: botones, labels, tableviews, etc, que se pueden arrastrar tanto a la preview, como al 
    código y se añade el código del mismo automáticamente. 
*/