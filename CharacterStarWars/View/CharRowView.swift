//
//  CharRowView.swift
//  CharacterStarWars
//
//  Created by Wahid on 03/07/22.
//

import SwiftUI

struct CharRowView: View {
    let swapi: Swapi

    var body: some View {
        HStack {
            Image(systemName: "person.fill")
                .font(.largeTitle)
                .foregroundColor(.accentColor)

            VStack(alignment: .leading) {
                Text(swapi.name)
                    .fontWeight(.bold)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text(swapi.id)
                    .font(.caption)
                    .foregroundColor(.accentColor)
            }
        }
    }
}

#if DEBUG
//struct CharRowPreviews: PreviewProvider {
//    static var previews: some View {
//        CharRowView(swapi: Swapi(name: "Name That is Long",
//                                     birthYear: "birth year",
//                                     eyeColor: "eye color",
//                                     hairColor: "hair color",
//                                     height: "height",
//                                     mass: "mass",
//                                     skinColor: "skincolor",
//                                     homeWorld: "homeworld",
//                                     films: ["films"],
//                                     species: ["species"],
//                                     starShips: ["starship"],
//                                     vehicles: ["truck","car", "boat"],
//                                     url: "https://google.com",
//                                     created: "created",
//                                     edited: "edited"))
//            .previewLayout(.sizeThatFits)
//    }
//}
#endif
