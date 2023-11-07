//
//  ViewController.swift
//  DelegationPattern_UIKit
//
//  Created by Mfercons on 7/11/23.
//

import UIKit

class ViewController: UIViewController {
    let apiClient = APIClient()
    
    private let labelito: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "hello!"
        label.textAlignment = .center
        
        return label
    }()
    
    private lazy var botonsito: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Get a random Pokémon! ⚡️"
        configuration.titleAlignment = .center
        configuration.baseBackgroundColor = .white
        configuration.baseForegroundColor = .black
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: {
            [weak self] _ in self?.didTapOnAcceptButton()
        }))
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private lazy var botonsito2: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Present View Controller 2"
        configuration.titleAlignment = .center
        configuration.baseBackgroundColor = .white
        configuration.baseForegroundColor = .black
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: {
            [weak self] _ in self?.didTapOnPresentViewController2Button()
        }))
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(labelito)
        view.addSubview(botonsito)
        view.addSubview(botonsito2)
        
        view.backgroundColor = .systemRed
        
        apiClient.delegate = self
        
        NSLayoutConstraint.activate([
            labelito.bottomAnchor.constraint(equalTo: botonsito.topAnchor, constant: -50),
            labelito.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            labelito.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            botonsito.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            botonsito.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            botonsito2.bottomAnchor.constraint(equalTo: botonsito.topAnchor, constant: 80),
            botonsito2.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            botonsito2.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
        ])
        
    }

    func didTapOnAcceptButton() {
        apiClient.getPokemons()
    }

    func didTapOnPresentViewController2Button() {
        self.present(ViewController2(), animated: true)
    }
}

extension ViewController: APIClientDelegate {
    func update(pokemons: PokemonResponseDataModel) {
        DispatchQueue.main.async {
            self.labelito.text = pokemons.pokemons.randomElement()?.name
        }
    }
    
    
}
