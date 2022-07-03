//
//  List.swift
//  CharacterStarWars
//
//  Created by Wahid on 03/07/22.
//

import Foundation

struct SwapiListModel: Decodable {
    var count: Int?
    var next: String?
    var previous: String?

    var results = [Swapi]()
}
