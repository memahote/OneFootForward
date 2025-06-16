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
                            Label("Réservation", image: "Booking")
                            
                        }
                        .tag(0)
                    
                    MapView()
                        .tabItem {
                            Label("Défis", image: "Location")
                        }
                        .tag(1)
                    Profile_User()
                        .tabItem {
                            Label("Profil", image: "Profil")
                        }
                        .tag(2)
                    
                }
                
                
            }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    MainViewTourist()
}
