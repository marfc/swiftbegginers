//
//  ViewController.swift
//  Autolayout_UIKit
//
//  Created by Mfercons on 2/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    //Método para cargar las vistas
    override func loadView(){
        self.view = OnBoardingView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Para acceder a la vista completa, basta con poner view
        view.backgroundColor = .white
    }
}

