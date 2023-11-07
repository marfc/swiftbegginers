//
//  SheetViewController.swift
//  UISheetPresentationController_UIKit
//
//  Created by Mfercons on 7/11/23.
//

import UIKit

class SheetViewController: ViewController {
    private let labelito: UILabel = {
        let label = UILabel()
        label.text = "Esto es una sheet view"
        label.textAlignment = .center
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override func viewDidLoad() {
        view.addSubview(labelito)
        view.backgroundColor = .purple
        
        NSLayoutConstraint.activate([
            labelito.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelito.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        
        guard let presentationController = presentationController as? UISheetPresentationController else {
            return
            
        }
        presentationController.detents = [.medium(), .large()] //Empieza en medium, podemos subir a large
        presentationController.selectedDetentIdentifier = .medium //Hasta donde llega la view
        presentationController.prefersGrabberVisible = true // se ve una barrita gris en el top
        presentationController.preferredCornerRadius = 20   // Efecto redondeado
    }
    
}
