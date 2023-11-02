/*
    Lección 4: Sentencia switch
*/

import Foundation

// ---- Switch con String ----

let country = "España"

switch country {
    case "España":
        print("El idioma es español")
    case "Perú":
        print("El idioma es español")
    case "Colombia":
        print("El idioma es español")
    case "Ecuador":
        print("El idioma es español")
    case "EEUU":
        print("El idioma es inglés")
    default:
        print("No conocemos el idioma")
}

// Se pueden combinar cases si el resultado es el mismo

switch country {
    case "España", "Perú", "Colombia", "Ecuador":
        print("El idioma es español")
    case "EEUU":
        print("El idioma es inglés")
    default:
        print("No conocemos el idioma")
}

// ---- Switch con Int ----

let age = 10

switch age {
    case 0, 1, 2:
        print("Eres un bebé")
    case 3...10:   //Intervalo entre 3 y 10
        print("Eres un niño")
    case 11..<18:  //Intervalo entre 11 y menor a 18 (de 11 a 17)
        print("Eres un adolescente")
    case 18..<70:  //Intervalo entre 18 y 69 (inclusive)
        print("Eres un adulto")
    case 70..<100: //Intervalo entre 70 y 99 (inclusive)
        print("Eres anciano")
    default:
        print("pero tú que eres!")
    
}
