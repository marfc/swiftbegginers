//
//  TableViewDataSource.swift
//  TableView_UIKit
//
//  Created by Mfercons on 6/11/23.
//

import Foundation
import UIKit

// Estos datos están hardcodeados, es decir, escritos a mano,
// pero podríamos usar una base de datos
let house = [
    Device(title: "iPhone", imageName: "iphone"),
    Device(title: "MacBook", imageName: "macpro.gen3"),
    Device(title: "Mac mini", imageName: "macmini"),
    Device(title: "Apple TV", imageName: "appletv"),
    Device(title: "Apple Watch", imageName: "applewatch")
]

let work = [
    Device(title: "MacBook", imageName: "macpro.gen3"),
    Device(title: "Mac mini", imageName: "macmini"),
    Device(title: "Pantallas", imageName: "display.2"),
    Device(title: "iPad", imageName: "ipad"),
    Device(title: "Airpods", imageName: "airpods"),
    Device(title: "Laptop", imageName: "laptopcomputer")
]

let allMyDevices = [house, work]

final class TableViewDataSource: NSObject, UITableViewDataSource {
    
    // se pone el doble [[]] porque hemos hecho un array formado por dos arrays, que es lo que se recibe ahora
    private let dataSource: [[Device]]
    
    init(dataSource: [[Device]]){
        self.dataSource = dataSource
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        dataSource.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataSource[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // para poder usar la clase custom creada, hay que castear forzadamente esta declaración porque es
        // tipo UITableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        
        let model = dataSource[indexPath.section][indexPath.row] // Accedemos al primer elemento del array house
        
        // borramos esto porque hemos creado la cocoa cell custom, donde ya se hace la configuración
        
//        var listContentConfiguration = UIListContentConfiguration.cell()      //Cogemos una celda
//        listContentConfiguration.text = model.title                           //Cogemos el título
//        listContentConfiguration.image = UIImage(systemName: model.imageName) //Cogemos la imagen
//
//        cell.contentConfiguration = listContentConfiguration    // Asignamos a la celda que acabamos de configurar
//                                                                // la configuración creada
        cell.configure(model: model)
        
        return cell
    }
    
    // Esta función es del protocolo DataSource, y sirve para poner un título en el header
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Device House"
        } else {
            return "Device Work"
        }
    }
}
