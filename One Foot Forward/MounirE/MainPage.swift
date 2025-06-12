//
//  MainPage.swift
//  One Foot Forward
//
//  Created by Mounir Emahoten on 06/06/2025.
//

import SwiftUI
import MapKit

struct MainPage: View {
    var choices = ["Tous", "Récompences", "Défi"]
    @State private var selectedChoice: String = "Tous"

    
    var body: some View {
        
        
        ScrollView {
            VStack {

                HStack {
                    Text("Hello Johnny").font(.title)
                        .bold()
                    
                    Image(systemName: "hand.palm.facing.fill").font(.title)
                        .bold()
                        .foregroundColor(.brown)
                    
                    Spacer()
                    
                }.frame(width: 350)
                
                Map(interactionModes: [.rotate, .zoom])
                    .mapControls {
                        MapUserLocationButton()
                        MapCompass()
                        MapScaleView()
                    }
                    .frame(width: 600, height: 550)
                
                HStack {
                    Text("Filtrer par :")
                    
                    Picker("Choices", selection: $selectedChoice) {
                                    ForEach(choices, id: \.self) { choice in
                                        Text(choice)
                                    }
                    }
                    
                    
                    Spacer()
                    
                }
                .padding(.top)
                .frame(width: 350)
                
                VStack(spacing: 20){
                    //Faire des view des filtres
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 50, height: 50)
                                .foregroundColor(.accent)
                            
                            Image(systemName: "fork.knife")
                                .foregroundColor(.white)
                                .font(.title)
                        }
                        
                        Text("Réduction pour un déjeuner")
                            .padding()
                    }
                    
                    
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 50, height: 50)
                                .foregroundColor(.accent)
                            
                            Image(systemName: "fork.knife")
                                .foregroundColor(.white)
                                .font(.title)
                        }
                        
                        Text("Réduction pour un déjeuner")
                            .padding()
                    }
                   
                }
                
            }
            
        }
        
    }
}

#Preview {
    MainPage()
}
