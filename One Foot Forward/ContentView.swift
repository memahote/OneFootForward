//
//  ContentView.swift
//  One Foot Forward
//
//  Created by Lucie Grunenberger  on 02/06/2025.
//

import SwiftUI

// Création de la TabBar

struct ContentView: View {
    var body: some View {
        TabView {
            
            Tab("Profil", image: "Profil"){
                Missions()
            }
            Tab("Missions", image: "Booking"){
            }
            Tab("Messages", image: "Chat"){
            }
        }
    }
}

#Preview {
    ContentView()
}
