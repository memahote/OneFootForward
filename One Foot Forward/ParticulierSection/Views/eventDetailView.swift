//
//  eventDetailView.swift
//  One Foot Forward
//
//  Created by Mounir Emahoten on 09/06/2025.
//

import SwiftUI

struct eventDetailView: View {
    var imageName : String
    var lieuName : String
    var description : String
    var reward : String
    var duration: String
    var impact: [String]
    
    var body: some View {
                   
        NavigationStack{
            VStack(alignment: .leading ,spacing: 20){
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                
                Text(description)
                    .font(.body)
                    .padding(.horizontal)
                
                Text("Infos Pratiques")
                    .font(.headline)
                    .padding(.horizontal)
                
                HStack {
                    Spacer()
                    //Faire une vue et lui donner en parametre les infos
                    VStack (alignment: .leading){
                        
                        
                        HStack{
                            
                            
                            Image(systemName: "mappin")
                                .foregroundStyle(.red)
                                .font(.title)
                            
                            
                            Text(lieuName)
                            
                            
                        }
                        
                        HStack{
                            
                            
                            Image(systemName: "clock.fill")
                                .foregroundStyle(.gray)
                                .font(.title)
                            
                            
                            Text(duration)
                            
                            
                        }
                        
                        
                        HStack{
                            
                            
                            Image(systemName: "trophy.fill")
                                .foregroundStyle(.yellow)
                                .font(.title)
                            
                            
                            Text(reward)
                            
                            
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
                
                HStack(spacing: 16){
                    
                    Spacer()
                    VStack{
                        Image(systemName: "carbon.dioxide.cloud.fill")
                            .font(.largeTitle)
                        
                        Text(impact[0])
                    }
                    
                    VStack{
                        Image(systemName: "carbon.dioxide.cloud.fill")
                            .font(.largeTitle)
                        
                        Text(impact[1])
                    }
                    
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    
                    VStack {
                        
                        NavigationLink {
                            Reservations_User()
                        } label: {
                            Text("Je relève le défi")
                                .padding()
                                .frame(width: 200)
                                .background(Color.accentColor)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        

                        
                        Text("Réalisé ")
                        + Text("346 ").foregroundStyle(.accent) + Text(" fois ce mois")
                    }
                    
                    Spacer()
                }
                .padding()
                
                
            }
            .ignoresSafeArea()
            .navigationBarBackButtonHidden(true)
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                        backButton()
                        
                    
                }
                
            }
            
        }
        
        
    }
}

#Preview {
    eventDetailView(imageName: "Restaurant1", lieuName: "La brasserie de la gare", description: "venez en bus ou en vélo", reward: "Café gratuit", duration: "30 min", impact: ["Réduction CO2", "Réduction CO2"])
}
