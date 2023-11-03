//
//  ViewController.swift
//  UIButton_iniciacion
//
//  Created by Mfercons on 2/11/23.
//

import UIKit

class ViewController: UIViewController {

    private let botoncico: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.title = "Botoncico de la suerte"
        configuration.subtitle = "🍀🍀🍀"
        configuration.image = UIImage(systemName: "play.circle.fill")
        let button = UIButton(type: .system)
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private let botoncico2: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.title = "Lanzo cohetes"
        configuration.titleAlignment = .center  //Centramos el título
        configuration.subtitle = "🚀🚀🚀"
        configuration.image = UIImage(systemName: "play.circle.fill")
        configuration.imagePadding = 12          //Ponemos Padding pa que no esté tan pegada como botoncico
        configuration.imagePlacement = .trailing //Situamos la imagen a la derecha
        let button = UIButton(type: .system)
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let botoncico3: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.title = "Arranca el coche"
        configuration.titleAlignment = .center  //Centramos el título
        configuration.subtitle = "🚗🚗🚗"
        configuration.image = UIImage(systemName: "play.circle.fill")
        configuration.imagePadding = 12
        configuration.imagePlacement = .top      //Situamos la imagen arriba
        configuration.buttonSize = .large
        configuration.baseBackgroundColor = .systemPurple
        configuration.baseForegroundColor = .white
        
        let button = UIButton(type: .system)
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // hay que poner lazy var, si no da error la llamada a showMessage
    private lazy var botoncico4: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.title = "Pulsa el botón si te atreves"
        configuration.titleAlignment = .center  //Centramos el título
        configuration.subtitle = "👻👻👻"
        configuration.image = UIImage(systemName: "play.circle.fill")
        configuration.imagePadding = 12
        configuration.imagePlacement = .top      //Situamos la imagen arriba
        configuration.buttonSize = .large
    
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.showMessage()
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(botoncico)
        view.addSubview(botoncico2)
        view.addSubview(botoncico3)
        view.addSubview(botoncico4)
        
        NSLayoutConstraint.activate([
            botoncico.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            botoncico.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            botoncico2.topAnchor.constraint(equalTo: botoncico.bottomAnchor, constant: 12),
            botoncico2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            botoncico3.topAnchor.constraint(equalTo: botoncico2.bottomAnchor, constant: 12),
            botoncico3.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            botoncico4.topAnchor.constraint(equalTo: botoncico3.bottomAnchor, constant: 12),
            botoncico4.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
    func showMessage(){
        print("Pulsaste el botón 😱")
    }


}

