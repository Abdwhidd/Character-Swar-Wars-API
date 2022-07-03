//
//  CharListView.swift
//  CharacterStarWars
//
//  Created by Wahid on 03/07/22.
//

import SwiftUI

struct CharListView: View {
    
    @ObservedObject var viewModel : SwapiViewModel

    let swapi: Swapi


    var body: some View {
        NavigationView {
            VStack {
                if viewModel.char.isEmpty {
                    Text("Loading...")
                } else {
                    List {
                        ForEach(viewModel.char) { swapi in
                            NavigationLink(destination: CharView(swapi: swapi)) {
                                CharRowView(swapi: swapi)
                            }
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Character Star Wars"))
            .navigationBarItems(trailing: trailingItems)
        }
        .onAppear(perform: viewModel.getPeopleList)
    }
    
    var trailingItems: some View {
        HStack {
            Button(action: {
                viewModel.getPeopleList()
            }, label: {
                Image(systemName: "square.and.arrow.down.fill")
                    .foregroundColor(.accentColor)
                    .font(.title2)
                    .padding()
            })
        }
    }
}

#if DEBUG
struct CharListPreviews: PreviewProvider {
    static var previews: some View {
        CharListView(viewModel: SwapiViewModel(
            service: SwapiService()),
                     swapi: Swapi(name: "Name",
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
                                      vehicles: ["truck","car", "boat"],
                                      url: "https://google.com",
                                      created: "created",
                                      edited: "edited"
                                     ))
    }
}
#endif
