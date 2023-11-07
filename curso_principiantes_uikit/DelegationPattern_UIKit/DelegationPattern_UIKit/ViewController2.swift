//
//  ViewController2.swift
//  DelegationPattern_UIKit
//
//  Created by Mfercons on 7/11/23.
//

import UIKit

class ViewController2: UIViewController {
    //método para liberar memoria
    deinit {
        print("Deinit View Controller 2")
    }
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(labelito)
        view.addSubview(botonsito)
        
        view.backgroundColor = .systemPurple
        
        apiClient.delegate = self
        
        NSLayoutConstraint.activate([
            labelito.bottomAnchor.constraint(equalTo: botonsito.topAnchor, constant: -50),
            labelito.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            labelito.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            botonsito.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            botonsito.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
        ])
        
    }

    func didTapOnAcceptButton() {
        apiClient.getPokemons()
    }

}

extension ViewController2: APIClientDelegate {
    func update(pokemons: PokemonResponseDataModel) {
        DispatchQueue.main.async {
            self.labelito.text = pokemons.pokemons.randomElement()?.name
        }
    }
    
    
}

