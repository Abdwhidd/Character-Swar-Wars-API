//
//  Swapi.swift
//  CharacterStarWars
//
//  Created by Wahid on 02/07/22.
//

import Foundation

struct Swapi: Identifiable, Codable {
    var id: String { url }
    var name: String
    var birthYear: String?
    var eyeColor: String?
    var hairColor: String?
    var height: String?
    var mass: String?
    var skinColor: String?
    var homeWorld: String?
    var films: [String]
    var species: [String?]
    var starShips: [String?]
    var vehicles: [String?]
    var url: String
    var created: String
    var edited: String?


    enum CodingKeys: String, CodingKey {
        case name
        case birthYear = "birth_year"
        case eyeColor = "eye_color"
        case hairColor = "hair_color"
        case height
        case mass
        case skinColor = "skin_color"
        case homeWorld = "homeworld"
        case films
        case species
        case starShips = "starships"
        case vehicles
        case url
        case created
        case edited
    }
}

