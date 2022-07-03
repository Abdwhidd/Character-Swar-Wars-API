//
//  CharacterStarWarsApp.swift
//  CharacterStarWars
//
//  Created by Wahid on 02/07/22.
//

import SwiftUI

@main
struct CharacterStarWarsApp: App {
    var body: some Scene {
        WindowGroup {
            CharListView(viewModel: SwapiViewModel(service: SwapiService()), swapi: Swapi(name: "Name",
                                                                                          birthYear: "birth year",
                                                                                          eyeColor: "eye color",
                                                                                          hairColor: "hair color",
                                                                                          height: "height",
                                                                                          mass: "mass",
                                                                                          skinColor: "skincolor",
                                                                                          homeWorld: "homeworld",
                                                                                          films: ["films"],
                                                                                          species: ["species"],
                                                                                          starShips: ["starship"],
                                                                                          vehicles: ["vehicles"],
                                                                                          url: "https://google.com",
                                                                                          created: "created",
                                                                                          edited: "edited"))
        }
    }
}
