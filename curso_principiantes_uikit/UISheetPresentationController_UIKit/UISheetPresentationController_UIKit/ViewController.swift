//
//  ViewController.swift
//  UISheetPresentationController_UIKit
//
//  Created by Mfercons on 7/11/23.
//

import UIKit

class ViewController: UIViewController {
    private lazy var botoncillo: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.baseBackgroundColor = .white
        configuration.baseForegroundColor = .blue
        configuration.title = "Abrir vista sheet"
        configuration.titleAlignment = .center
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.presentSheetViewController()
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(botoncillo)
        view.backgroundColor = .secondarySystemBackground
        // Do any additional setup after loading the view.
        
        NSLayoutConstraint.activate([
            botoncillo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            botoncillo.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }

    func presentSheetViewController() {
        let viewControllerToPresent = SheetViewController()
        
        
        
        self.present(viewControllerToPresent, animated: true)
    }

}

