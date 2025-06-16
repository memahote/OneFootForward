//
//  MainViewPro.swift
//  One Foot Forward
//
//  Created by Mounir Emahoten on 16/06/2025.
//

import SwiftUI

struct MainViewPro: View {
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
    MainViewPro()
}
