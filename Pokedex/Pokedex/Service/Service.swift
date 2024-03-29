//
//  Service.swift
//  Pokedex
//
//  Created by Dainis Putans on 09/06/2019.
//  Copyright © 2019 Dainis Putans. All rights reserved.
//

import UIKit

class Service {
    
    static let shared = Service()
    
    let BASE_URL = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    
    func fetchPokemon() {
        // convert string into url
        
        guard let url = URL(string: BASE_URL) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            // handle error
            if let error = error {
                print("Failed to fetch data with error: ", error.localizedDescription)
                return
            }
            
            guard let data = data else { return }
            
            do {
                guard let resultArray = try JSONSerialization.jsonObject(with: data, options: []) as? [AnyObject] else { return }
                
                for (key, result) in resultArray.enumerated() {
                    if let dictionary = result as? [String:AnyObject] {
                        let pokemon = Pokemon(id: key, dictionary: dictionary)
                        print(pokemon.name)
                    }
                }
                // print(resultArray)
                
            } catch let error {
                print("Failed to create json with error: ", error.localizedDescription)
            }
        }.resume()
    }
}
