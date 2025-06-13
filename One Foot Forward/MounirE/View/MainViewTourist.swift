//
//  MainViewTourist.swift
//  One Foot Forward
//
//  Created by Mounir Emahoten on 13/06/2025.
//

import SwiftUI

struct MainViewTourist: View {
    @State private var selectedIndex: Int = 1
    
    var body: some View {
        TabView (selection: $selectedIndex){
            
            Group {
                reservationView()
                    .tabItem {
                        Label("Profil", image: "Booking")
                            
                    }
                    .tag(0)
                    
                MapView()
                    .tabItem {
                        Label("Défi", image: "Location")
                    }
                    .tag(1)
                Profile_User()
                    .tabItem {
                        Label("Profil", image: "Profil")
                    }
                    .tag(2)
            }
            .toolbarBackground(.ultraThinMaterial, for: .tabBar)
            .toolbarBackground(.accent.opacity(0.2), for: .tabBar)
            .toolbarBackgroundVisibility(.visible, for: .tabBar)
        }
        
    }
}

#Preview {
    MainViewTourist()
}
