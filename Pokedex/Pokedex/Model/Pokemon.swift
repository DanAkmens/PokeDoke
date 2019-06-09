//
//  Pokemon.swift
//  Pokedex
//
//  Created by Dainis Putans on 08/06/2019.
//  Copyright © 2019 Dainis Putans. All rights reserved.
//

import UIKit

class Pokemon {
    
    var name: String?
    var imageURL: String?
    var image: UIImage?
    var id: Int?
    var weight: Int?
    var height: Int?
    var defense: Int?
    var attack: Int?
    var description: String?
    var type: String?
    var baseExperience: Int?
    
    init(id: Int, dictionary: [String: AnyObject]) {
        
        if let name = dictionary["name"] as? String {
            self.name = name
        }
        
        if let imageURL = dictionary["imageURL"] as? String {
            self.imageURL = imageURL
        }
        
        if let weight = dictionary["weight"] as? Int {
            self.weight = weight
        }
        
        if let height = dictionary["height"] as? Int {
            self.height = height
        }
        
        if let defense = dictionary["defense"] as? Int {
            self.defense = defense
        }
        
        if let attack = dictionary["attack"] as? Int {
            self.attack = attack
        }
        
        if let description = dictionary["description"] as? String {
            self.description = description
        }
        
        if let type = dictionary["type"] as? String {
            self.type = type
        }
        
        if let baseExperience = dictionary["baseExperience"] as? Int {
            self.baseExperience = baseExperience
        }
    }
}
