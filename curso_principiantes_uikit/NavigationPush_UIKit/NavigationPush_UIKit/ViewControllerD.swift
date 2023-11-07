//
//  ViewControllerD.swift
//  NavigationPush_UIKit
//
//  Created by Mfercons on 7/11/23.
//

import UIKit

class ViewControllerD: UIViewController {
    private lazy var boton_final: UIButton = {
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.startNavigation()
        }))
        
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Volver al principio"
        configuration.baseBackgroundColor = .white
        configuration.baseForegroundColor = .black
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .blue
        title = "View Controller D"
        view.addSubview(boton_final)
        
        NSLayoutConstraint.activate([
            boton_final.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            boton_final.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
     
    }

    //popToRootController nos lleva a la vista padre, en este caso el viewControllerA
    func startNavigation(){
        self.navigationController?.popToRootViewController(animated: true)
    }
}
