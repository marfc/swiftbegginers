//
//  ViewControllerB.swift
//  NavigationModal_UIKit
//
//  Created by Mfercons on 6/11/23.
//

import Foundation
import UIKit

class ViewControllerB: UIViewController {
    private lazy var dismissButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Dismiss View Controller B"
        configuration.baseForegroundColor = .white
        configuration.baseBackgroundColor = .blue
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.dismissViewControllerB()
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var botoncito: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Present View Controller C"
        configuration.baseForegroundColor = .black
        configuration.baseBackgroundColor = .white
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.startNavigation()
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        
        view.addSubview(dismissButton)
        view.addSubview(botoncito)
        
        NSLayoutConstraint.activate([
            dismissButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dismissButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            botoncito.topAnchor.constraint(equalTo: dismissButton.bottomAnchor, constant: 40),
            botoncito.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            botoncito.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
        ])
    }
    
    func dismissViewControllerB() {
        dismiss(animated: true)
    }
    
    func startNavigation(){
        self.present(ViewControllerC(), animated: true)
    }
}
