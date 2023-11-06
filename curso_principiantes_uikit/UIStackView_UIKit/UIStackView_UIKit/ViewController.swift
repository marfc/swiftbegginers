//
//  ViewController.swift
//  UIStackView_UIKit
//
//  Created by Mfercons on 6/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let titulillo: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "In-App Purchases"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 30)
        
        return label
    }()

    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical //Por defecto es horizontal, pero lo podemos cambiar a vertical
        stackView.spacing = 20     //Esto añade espacio entre los botones del stackview
        stackView.alignment = .center  //Podemos elegir la posición que queremos que tomen nuestros botones
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(titulillo)
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            titulillo.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            titulillo.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            titulillo.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: titulillo.bottomAnchor, constant: 30),
            stackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
        ])
        
        //Creamos un botón por cada elemento del array
        ["1.99€", "2.99€", "3.99€", "5.99€"].forEach { price in
            let button = UIButton(type: .system)
            var configuration = UIButton.Configuration.borderedTinted()
            configuration.title = price
            configuration.subtitle = "Suscripción"
            configuration.image = UIImage(systemName: "eurosign.circle.fill")
            configuration.imagePadding = 12
            configuration.baseBackgroundColor = .systemBlue
            button.configuration = configuration //Asignamos la ocnfiguración a nuestro botón
        
            stackView.addArrangedSubview(button)
        }
        
            
    }


}

