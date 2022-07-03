//
//  SwapiService.swift
//  CharacterStarWars
//
//  Created by Wahid on 03/07/22.
//

import Foundation
import Combine

class SwapiService {
    private let session: URLSession
    private let decoder: JSONDecoder

    init(session: URLSession = .shared, decoder: JSONDecoder = .init()) {
        self.session = session
        self.decoder = decoder
    }

    let baseUrl = "https://swapi.dev/api/"

    var url: URL? {
        let path = baseUrl + "people"
        return URL(string: path)
    }

    let viewModel = SwapiViewModel.self

    var nextUrl: URL? {
        let path =  baseUrl + "people/?page=2"
        return URL(string: path)
    }

    var prevUrl: URL? {
        let path = baseUrl + "people/?page=1"
        return URL(string: path)
    }


    func fetchPeople() -> AnyPublisher<PeopleResponse, Error> {
        guard let url = url else {
            return Fail(error: URLError(.badURL))
                .eraseToAnyPublisher()
        }

        return URLSession.shared.dataTaskPublisher(for: url)
            .tryMap { element -> Data in
                guard
                    let response = element.response as? HTTPURLResponse,
                    response.statusCode == 200
                else {
                    throw URLError(.badServerResponse)
                }
                return element.data
            }
            .decode(type: PeopleResponse.self, decoder: decoder)
            .eraseToAnyPublisher()
    }


    func fetchNextPeople() -> AnyPublisher<PeopleResponse, Error> {
        guard let url = nextUrl else {
            return Fail(error: URLError(.badURL))
                .eraseToAnyPublisher()
        }

        return URLSession.shared.dataTaskPublisher(for: url)
            .tryMap { element  -> Data in
                guard
                    let response = element.response as? HTTPURLResponse,
                    response.statusCode == 200
                else {
                    throw URLError(.badServerResponse)
                }
                return element.data
            }
            .decode(type: PeopleResponse.self, decoder: decoder)
            .eraseToAnyPublisher()
    }

    func fetchPrevPeople() -> AnyPublisher<PeopleResponse, Error> {
        guard let url = prevUrl else {
            return Fail(error: URLError(.badURL))
                .eraseToAnyPublisher()
        }

        return URLSession.shared.dataTaskPublisher(for: url)
            .tryMap { element  -> Data in
                guard
                    let response = element.response as? HTTPURLResponse,
                    response.statusCode == 200
                else {
                    throw URLError(.badServerResponse)
                }
                return element.data
            }
            .decode(type: PeopleResponse.self, decoder: decoder)
            .eraseToAnyPublisher()
    }

}

struct PeopleResponse: Codable {
    var count: Int
    var next: String?
    var previous: String?
    var results: [Swapi]
}
