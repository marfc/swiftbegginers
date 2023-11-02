/*
    Lección 5: Arrays
*/

import Foundation

let name = "Mar"
let surname = "Fernández"
let company = "NTT Data"
let age = "23"

let myArray = Array<String>()     //Forma clásica, array inicializado de tipo String
var myModernArray = [String]()    //Forma moderna de tener un array inicializado de tipo String
let myModernArray2: [String] = [] //Alternativa al modo moderno

let myStringArray = ["Hola", "Esto es otra forma"] //Creación e inicialización de array de String

// -> El array debe ser definido como var, porque si es constante no le podemos añadir los datos

// Añadir datos de uno en uno
myModernArray.append(name) 
myModernArray.append(surname) 
myModernArray.append(company) 
myModernArray.append(age) 

print(myModernArray)  //Imprime "["Mar", "Fernández", "NTT Data", "23"]"

// Añadir un conjunto de datos
myModernArray.append(contentsOf: ["Aprendiendo", "El lenguaje Swift"])
// myModernArray += ["hola", "lo que sea"]  otra forma de añadir un conjunto

print(myModernArray)  //Imprime "["Mar", "Fernández", "NTT Data", "23", "Aprendiendo", "El lenguaje Swift"]"

// Acceso a datos

myModernArray[2] //Acceso a "NTT Data"

//Modificación de datos

myModernArray[5] = "Swift mola"

print(myModernArray) //Imprime "["Mar", "Fernández", "NTT Data", "23", "Aprendiendo", "Swift mola"]"

//Eliminar datos
myModernArray.remove(at: 3)

print(myModernArray) //Imprime "["Mar", "Fernández", "NTT Data", "Aprendiendo", "Swift mola"]"

//Recorrer datos

for value in myModernArray {
    print(value)  //Imprime cada elemento del array de uno en uno
}

//Otras operaciones con arrays

myModernArray.count     //Para saber cuantos elementos tiene nuestro array 
myModernArray.first     //Accedemos al primer elemento del array
myModernArray.last      //Accedemos al último elemento del array
myModernArray.sort      //Ordenamos los elementos de nuestro array
myModernArray.removeAll //Eliminamos todos los elementos del Array

// ---- Set ----

// Es muy similar al Array, pero este no guarda el orden como Array lo hace
// Además no admite duplicados como lo hace Array, por lo que si insertamos "10" y luego
// lo volvemos a insertar, no vamos a ver cambio porque solo se puede insertar una vez

var setStrings = Set(["1", "2", "3"]) //Array diría 1, 2, 3, mientras que Set cualquier combinación
var setStrings2 = Set(arrayLiteral: "1", "2", "3")

print("setStrings contains \(setStrings.count) items.") //Imprime setStrings contiene 3 items

if setStrings.isEmpty {
    print("setStrings is empty.")
} else {
    print("setStrings is not empty.")  //Imprime que no está vacío
}

setStrings.insert("4")   // Se añade el 4 en una posición cualquiera
setStrings.contains("1") //Vemos si contiene el String "1", en este caso true
setStrings.remove("1")   //Podemos eliminar un valor en concreto

for value in setStrings {
    print(value)         //se van imprimiendo uno a uno los elementos desordenadamente
}

