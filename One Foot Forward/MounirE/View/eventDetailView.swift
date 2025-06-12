//
//  eventDetailView.swift
//  One Foot Forward
//
//  Created by Mounir Emahoten on 09/06/2025.
//

import SwiftUI

struct eventDetailView: View {
    var body: some View {
                   
            VStack(alignment: .leading ,spacing: 20){
                    Image(.restaurant1)
                        .resizable()
                        .scaledToFit()
                    
                    Text("Venir en vélo ou transport en commun et contribuer à préserver l'environnement.")
                        .font(.body)
                        .padding(.horizontal)
                
                Text("Infos Pratiques")
                    .font(.headline)
                    .padding(.horizontal)
                
                HStack {
                    Spacer()
                    VStack (alignment: .leading){
                        
                        // Tansformer en foreach de vue exterieur + généraliser le code
                        
                        HStack{
                            
                            
                            Image(systemName: "mappin")
                                .foregroundStyle(.red)
                                .font(.title)
                            
                            
                            Text("La Brasserie de la Gare")
                            
                            
                        }
                        
                        HStack{
                            
                            
                            Image(systemName: "clock.fill")
                                .foregroundStyle(.gray)
                                .font(.title)
                            
                            
                            Text("30 Min")
                            
                            
                        }
                        
                        
                        HStack{
                            
                            
                            Image(systemName: "trophy.fill")
                                .foregroundStyle(.yellow)
                                .font(.title)
                            
                            
                            Text("Café Gratuit")
                            
                            
                        }
                        
                        
                        HStack{
                            
                            
                            Image(systemName: "person.3.fill")
                                .foregroundStyle(.blue)
                                .font(.title)
                            
                            
                            Text("En Solo ou en groupe")
                            
                        }
                        
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.white)
                            .shadow(radius: 4)
                    )
                    Spacer()
                }
                
                Text("Impact")
                    .font(.headline)
                    .padding(.horizontal)
                
                HStack{
                    Spacer()
                    VStack{
                        Image(systemName: "carbon.dioxide.cloud.fill")
                            .font(.largeTitle)
                        
                        Text("Réduction de CO2")
                    }
                    
                    VStack{
                        Image(systemName: "carbon.dioxide.cloud.fill")
                            .font(.largeTitle)
                        
                        Text("Réduction de CO2")
                    }
                    
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    
                    VStack {
                        
                        Button {
                            
                        } label: {
                            Text("Je relève le défi")
                                .foregroundStyle(.white)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 150, height: 35)
                                )
                        }.padding()
                        
                        Text("Réaliser ")
                        + Text("346").foregroundStyle(.accent) + Text(" fois ce mois")
                    }
                    
                    Spacer()
                }
                .padding()

                
            }
            .ignoresSafeArea()
            
        
    }
}

#Preview {
    eventDetailView()
}
