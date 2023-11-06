//
//  ViewControllerC.swift
//  NavigationModal_UIKit
//
//  Created by Mfercons on 6/11/23.
//

import Foundation
import UIKit

class ViewControllerC: UIViewController {
    private lazy var dismissButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Dismiss View Controller C"
        configuration.baseForegroundColor = .white
        configuration.baseBackgroundColor = .systemYellow
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.dismissViewControllerC()
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGreen
        
        view.addSubview(dismissButton)
        
        NSLayoutConstraint.activate([
            dismissButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dismissButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    func dismissViewControllerC() {
        dismiss(animated: true)
    }
}
