//
//  ContentView.swift
//  CharacterStarWars
//
//  Created by Wahid on 02/07/22.
//

import SwiftUI

struct CharView: View {
    let swapi: Swapi



    var body: some View {

            VStack{
                Text("\(swapi.name)")
                    .font(.largeTitle)

                Image(systemName: "photo.fill")
                    .resizable()
                    .frame(width: 240, height: 200)
                    .foregroundColor(.accentColor)

                VStack {
                    Text("Eye Color: \(swapi.eyeColor ?? "n/a")")
                    Text("Hair Color: \(swapi.hairColor ?? "n/a")")
                    Text("Skin Color: \(swapi.skinColor ?? "n/a")")
                    Text("Height: \(swapi.height ?? "n/a")")
                    Text("Mass: \(swapi.mass ?? "n/a")")
                }
                .font(.caption)
                .foregroundColor(.gray)
                Spacer()

                Text(swapi.url)
                    .font(.callout)
                    .foregroundColor(.accentColor)
                Text(swapi.created)
                Text(swapi.edited ?? "")
            }
        }
}


#if DEBUG
struct CharPreviews: PreviewProvider {
    static var previews: some View {
        CharView(swapi: Swapi(name: "Name",
                                     birthYear: "birth year",
                                     eyeColor: "color",
                                     hairColor: "color",
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
            .previewLayout(.device)
    }
}


//import SwiftUI
//
//struct ContentView: View {
//    var stars = [Swapi]()
//    @StateObject private var vm = SwapiViewModel()
//
//    var body: some View {
//        NavigationView {
//            List(stars, id: \.self) { star in
//                VStack(alignment: .leading) {
//                    Text(star.name)
//                }
//            }
//            .navigationTitle("Star Wars")
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
#endif
