/*
    Lección 6: Diccionarios
*/

/*
    Usamos diccionarios y no arrays cuando no nos importe el orden y cuando queramos
    asignar una clave a cada elemento
    Además en los arrays, puede haber duplicados, mientras que en los diccionarios no
*/
import Foundation

// - Sintaxis

let myOldDictionary = Dictionary<String, Int>() //Creamos un diccionario vacío de la forma clásica
var myNewDictionary = [String:Int]() //Forma actual de crear un diccionario

// - Añadir valores
myNewDictionary = ["Mar":002, "Ana":001, "James Bond":007] //Si añadiera "Mar":003 daría error porque
                                                           // "Mar" ya está en el diccionario

// - Añadir un nuevo dato sin borrar los datos que ya hay
myNewDictionary["Fernández":003]
myNewDictionary["Consentino":004]

print(myNewDictionary) //Se imprime ["Mar": 2, "Ana": 1, "James Bond": 7, "Fernández": 3, 
                       // "Consentino": 4]

//Al imprimir un diccionario, no sigue un orden

// - Acceso a un dato
print(myNewDictionary["James Bond"])  //Imprime Optional(7), es decir, la clave asociada al String
print(myNewDictionary["Pedro"])       //Imprime nil

// - Actualizar un dato
myNewDictionary["Fernández"] = 011
myNewDictionary.updateValue(012, forKey: "Fernández")  //Otra forma más clásica
 
//Si hiciera lo mismo pero en vez de Fernández pongo Pedro (que no existe), en update se crearía
//dentro del diccionario

// - Eliminar un dato
myNewDictionary["Fernández"] = nil
print(myNewDictionary["Fernández"]) //Imprime nil

myNewDictionary.removeValue(forKey: "Fernández") //Otra forma más clásica

// - Obtener value antigua y actualizarla

if let oldValue = myNewDictionary.updateValue("Anita", forKey: 001) {
    print("The old value of 1 was \(oldValue)") //Imprime que el antiguo valor era Ana
}                                               //y a la vez lo cambia por Anita


