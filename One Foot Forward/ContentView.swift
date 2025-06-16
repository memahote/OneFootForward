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
                Dashboard()
            }
            Tab("Missions", image: "Booking"){
                Missions(newMission: typeMissions(
                    missionImage: "",
                    missionName: "",
                    missionDescription: "",
                    missionCategory: "Mobilité",
                    missionReward: "",
                    missionBooking: false
                )
            )
            }
            Tab("Messages", image: "Chat"){
                chat()
            }
        }
    }
}

#Preview {
    ContentView()
}
