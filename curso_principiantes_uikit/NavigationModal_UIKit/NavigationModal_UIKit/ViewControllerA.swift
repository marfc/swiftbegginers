//
//  ViewController.swift
//  NavigationModal_UIKit
//
//  Created by Mfercons on 6/11/23.
//

import UIKit

class ViewControllerA: UIViewController {

    private lazy var botoncito: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Present View Controller A"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.startNavigation()
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemBackground
        view.addSubview(botoncito)
        
        NSLayoutConstraint.activate([
            botoncito.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            botoncito.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }

    func startNavigation(){
        self.present(ViewControllerB(), animated: true)
    }
}

