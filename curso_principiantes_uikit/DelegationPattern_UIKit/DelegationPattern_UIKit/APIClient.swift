//
//  APIClient.swift
//  DelegationPattern_UIKit
//
//  Created by Mfercons on 7/11/23.
//

import Foundation

struct PokemonDataModel: Decodable {
    let name: String
    let url: String
}

struct PokemonResponseDataModel: Decodable {
    let pokemons: [PokemonDataModel]
    
    enum CodingKeys: String, CodingKey {
        case results
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.pokemons = try container.decode([PokemonDataModel].self, forKey: .results)
    }
}

protocol APIClientDelegate: AnyObject{
    func update(pokemons: PokemonResponseDataModel)
}

class APIClient {
    //Esta var es débil porque si no la liamos con la memoria
    weak var delegate: APIClientDelegate?
    
    func getPokemons() {
        let url = URL(string: "https://pokeapi.co/api/v2/pokemon/?offset=0&limit=151")
        if let url {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                let dataModel = try! JSONDecoder().decode(PokemonResponseDataModel.self, from: data!)
                
                print("DataModel: \(dataModel)")
                self.delegate?.update(pokemons: dataModel)
            }
            
            task.resume()
        } else {
            print("Invalid URL")
        }
    }
}
