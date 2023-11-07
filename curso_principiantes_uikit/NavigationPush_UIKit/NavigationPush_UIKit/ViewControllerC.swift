//
//  ViewControllerC.swift
//  NavigationPush_UIKit
//
//  Created by Mfercons on 7/11/23.
//

import UIKit

class ViewControllerC: UIViewController {
    private lazy var boton_modal: UIButton = {
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.startNavigation()
        }))
        
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Ver vista modal del View Controller E"
        configuration.baseBackgroundColor = .white
        configuration.baseForegroundColor = .black
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .orange
        title = "View Controller C"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .done, target: self, action: #selector(nextViewController))
        
        view.addSubview(boton_modal)
        
        NSLayoutConstraint.activate([
            boton_modal.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            boton_modal.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }

    @objc private func nextViewController(){
        self.navigationController?.pushViewController(ViewControllerD(), animated: true)
    }
    
    func startNavigation(){
        self.present(ViewControllerE(), animated: true)
    }
}
