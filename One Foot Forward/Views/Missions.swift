//
//  Mes réservations.swift
//  One Foot Forward
//
//  Created by Lucie Grunenberger  on 02/06/2025.
//

import SwiftUI

struct Missions: View {
    
    @State private var date = Date()
    
    private var missionsString = ["Ramassage de déchets - 1h", "Ramassage de déchets - 1h30", "Ramassage de déchets - 2h"]
    
    private var cartesImage: [Image] = [Image(.nettoyage1), Image(.nettoyage2), Image(.nettoyage3)]
    
    
    var body: some View {
        header()
    }
    
    
    
    
    func header() -> some View {
        VStack{
            ScrollView{
                HStack{
                    // Titre principal
                    Text("Mes missions")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding()
                
                // Bouton pour valider la mission
                Button(action: {}) {
                    Text("Valider une mission")
                        .padding(.horizontal, 15)
                        .padding(.vertical, 10)
                        .foregroundColor(.black)
                        .background(Color.accent)
                        .cornerRadius(10)
                }
                Spacer(minLength: 20)
                
                // ScrollView mission
                
                ScrollView(.horizontal){
                    HStack(spacing: 10){
                        missionsCards()
                    }
                    .padding()
                }
                
                // Bouton Ajouter une mission
                
                Button(action: {}) {
                    
                    HStack{
                        Text("Ajouter une mission")
                            .padding()
                        
                        Spacer()
                        
                    }.frame(width: 370, height: 45)
                        .padding(.vertical, 10)
                        .foregroundColor(.black)
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(color: .black.opacity(0.10), radius: 20, x: 0, y: 2)
                }
                Spacer(minLength: 20)
                
                calendrier()
                Spacer(minLength: 20)
                
                // Bouton modifier le calendrier
                Button(action: {}) {
                    
                    HStack{
                        Text("Modifier le calendrier")
                            .padding()
                        
                        Spacer()
                        
                    }.frame(width: 370, height: 45)
                        .padding(.vertical, 10)
                        .foregroundColor(.black)
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(color: .black.opacity(0.10), radius: 20, x: 0, y: 2)
                }
                Spacer(minLength: 20)
                
                
                
                // Fin de ma scrollview
            }
            // Fin de mon Vstack principal
        }
        // Fin de ma func header
    }
    
    // Cartes mission liste
    
    func missionsCards() -> some View {
        // Logique
        ForEach(0..<missionsString.count, id: \.self) { index in
            ZStack{
                
                
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color(.blackGreen), Color(.eggShell)]), startPoint: .bottom, endPoint: .top))
                    .frame(width: 150, height: 200)
                    .cornerRadius(20)
                
                
                self.cartesImage[index]
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 200)
                    .cornerRadius(20)
                    .blur(radius: 0.80)
                    .opacity(0.50)
                
                
                
                
                VStack{
                    Spacer(minLength: 150)
                    HStack{
                        Text(self.missionsString[index])
                            .font(.caption)
                            .fontWeight(.bold)
                            .padding(.horizontal, 10)
                            .padding(.bottom, 10)
                            .frame(width: 120, height: 50)
                            .foregroundColor(Color.white)
                            .font(.title2)
                            .multilineTextAlignment(.leading)
                        Spacer(minLength: 25)
                    }
                    
                }
            }
            //Fin ForEach
        }
        // Fin Mission card
        
    }
    func calendrier() -> some View {
        DatePicker(
            "Start Date",
            selection: $date,
            displayedComponents: [.date]
        )
        .datePickerStyle(.graphical)
        // Fin calendrier
    }
    
    
}









#Preview {
    Missions()
}




