//
//  ViewController.swift
//  UILabel_UIKit
//
//  Created by Mfercons on 3/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let labelito: UILabel = {
        let label = UILabel()
        label.text = "Aprendiendo Swift"
        label.font = UIFont(name: "Arial Black", size: 26)
        label.textAlignment = .center
        label.textColor = .purple
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let labelito2: UILabel = {
        let label = UILabel()
        label.text = "Estoy haciendo unos cursos preparatorios de XCode y UIKit"
        label.font = UIFont(name: "Arial Black", size: 12)
        label.textAlignment = .left
        label.textColor = .black
        label.numberOfLines = 0
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let labelito3: UILabel = {
        
        let text = "Estoy haciendo unos cursos preparatorios de XCode y UIKit"
        
        let attributedText: [NSAttributedString.Key: Any] = [
            .underlineStyle: NSUnderlineStyle.single.rawValue,
            .underlineColor: UIColor.red,
            .foregroundColor: UIColor.white,
            .backgroundColor: UIColor.cyan,
            .font: UIFont.systemFont(ofSize: 20)
        ]
            
        let attributedString = NSAttributedString(string: text, attributes: attributedText)
        
        let label = UILabel()
        label.attributedText = attributedString
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(labelito)
        view.addSubview(labelito2)
        view.addSubview(labelito3)
        
        NSLayoutConstraint.activate([
            
            labelito.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelito.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            
            labelito2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelito2.topAnchor.constraint(equalTo: labelito.bottomAnchor, constant: 12),
            labelito2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            labelito2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5),
            
            labelito3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelito3.topAnchor.constraint(equalTo: labelito2.bottomAnchor, constant: 12),
            labelito3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            labelito3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5)
        ])
        
    }


}

