//
//  SwapiView.swift
//  CharacterStarWars
//
//  Created by Wahid on 02/07/22.
//

import SwiftUI

struct SwapiView: View {
    
    let star: Swapi
    
    var body: some View {
        Text("**Name**: \(star.name)")
    }
}

//struct SwapiView_Previews: PreviewProvider {
//    static var previews: some View {
//        SwapiView()
//    }
//}
