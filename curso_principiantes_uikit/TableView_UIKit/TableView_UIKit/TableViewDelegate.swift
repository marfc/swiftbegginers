//
//  TableViewDelegate.swift
//  TableView_UIKit
//
//  Created by Mfercons on 6/11/23.
//

import Foundation
import UIKit

final class TableViewDelegate: NSObject, UITableViewDelegate {
    
    // El protocolo delegate no tiene por qué ser implementado en el código, pero tiene funciones muy útiles
    // Por ejemplo, esta que detecta cuando una celda ha sido seleccionada
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = house[indexPath.row]  // Accedemos a la celda
        print("CELL: \(model.title)")     // Cuando se pulse, vemos por consola el título de la celda pulsada
    }

}
