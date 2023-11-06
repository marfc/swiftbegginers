//
//  ViewController.swift
//  TableView_UIKit
//
//  Created by Mfercons on 3/11/23.
//

import UIKit

struct Device {
    let title: String
    let imageName: String
}


// Aquí ya no hay que ponerle ningún protocolo porque ya lo pone en cada fichero a parte que hemos hecho
// A cambio, creamos dos instancias de esas clases creadas a parte
class ViewController: UIViewController {
        
//    private let devicesTableView: UITableView = {
//        let tableView = UITableView()
//        tableView.translatesAutoresizingMaskIntoConstraints = false
//        
//        return tableView
//    }()

    private var dataSource: TableViewDataSource?
    private var delegate: TableViewDelegate?
    
    override func loadView(){
        let tableView = UITableView()
        
        self.dataSource = TableViewDataSource(dataSource: allMyDevices)
        self.delegate = TableViewDelegate()
        tableView.dataSource = dataSource
        tableView.delegate = delegate
        tableView.register(CustomCell.self, forCellReuseIdentifier: "CustomCell")
        
        view = tableView
    }
}

