//
//  SwapiViewModel.swift
//  CharacterStarWars
//
//  Created by Wahid on 02/07/22.
//


import Combine
import Foundation
import SwiftUI

class SwapiViewModel: ObservableObject {
    let service: SwapiService

    @Published var char = [Swapi]()
    @Published var nextUrl = String()
    @Published var prevUrl = String()

    init(service: SwapiService) {
        self.service = service
    }

    var cancellable: AnyCancellable?

    func getPeopleList() {
        cancellable = service.fetchPeople()
            .receive(on: RunLoop.main)
            .sink { result in
                switch result {
                case let .failure(error):
                    print(error)
                default:
                    print("Char Done")
                    // stop spinner pop alerts etc
                    return
                }
            } receiveValue: { [weak self] response in
                self?.char = response.results
            }
    }
}

