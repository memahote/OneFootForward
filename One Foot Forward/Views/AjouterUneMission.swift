//
//  AjouterUneMission.swift
//  One Foot Forward
//
//  Created by Lucie Grunenberger  on 06/06/2025.
//

import SwiftUI

struct AjouterUneMission: View {
    var categories = ["Mobilité", "Nettoyage", "Nourriture", "Autre"]
    
    @Environment(\.dismiss) var dismiss

    
    @State private var isOn = false
    @State private var showAlert = false
    
    @State var newMission: typeMissions
    @State var newMissionName: String = ""
    @State var newMissionDescription: String = ""
    @State private var selectedcategorie: String = "Mobilité"
    @State var newMissionReward: String = ""
    
    
    var body: some View {
        
        Spacer(minLength: 50)
        
        VStack{
            
            HStack{
                Image(.back)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .background(Color.white)
                
                
                
                Spacer()
                // Fin NavBar
            }
            .padding(.horizontal)
            
            //ScrollView{
            
            
            
            HStack{
                Text ("Nouvelle mission")
                    .font(.title)
                
                Spacer()
            }
            .padding(.horizontal)
            
            Spacer(minLength: 20)
            
            VStack(spacing: 40){
                
                
                VStack{
                    
                    HStack{
                        Text ("Nom de la mission")
                        
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    TextField("rentrer le nom...", text: $newMissionName)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal)
                }
                
                VStack{
                    
                    HStack{
                        Text ("Ajouter des photos")
                        
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    HStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 50, height: 50)
                                .cornerRadius(10)
                                .foregroundColor(Color.blackGreen)
                            
                            Image(.folder)
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.white)
                            
                            
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 50, height: 50)
                                .cornerRadius(10)
                                .foregroundColor(Color.blackGreen)
                            
                            Image(.photo)
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.white)
                            
                            
                        }
                        Spacer()
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                }
                
                VStack{
                    
                    HStack{
                        Text ("Description")
                        
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    TextField("rentrer la description...", text: $newMissionDescription)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal)
                    
                    HStack{
                        Spacer()
                        
                        Text("0/500")
                            .font(.caption)
                            .foregroundColor(.gray)
                            .padding(.trailing)
                        // Regarder plus tard le compteur
                    }
                }
                
                VStack{
                    
                    HStack{
                        Text ("Catégorie")
                        
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    HStack{
                        Picker("Mobilité", selection: $selectedcategorie){
                            ForEach(categories, id: \.self){ categorie in
                                Text(categorie)
                                // Voir pq je peux pas changer la couleur du text
                            }
                            
                            
                        }
                        .frame(maxWidth: 150, maxHeight: 45, alignment: .center)
                        .background(Color(UIColor.white).opacity(0.4))
                        .shadow(radius: 20)
                        .cornerRadius(30)
                        .padding(.horizontal)
                        
                        Spacer()
                        
                    }
                    
                    
                }
                
                
                VStack{
                    
                    HStack{
                        Text ("Récompense")
                        
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    TextField("Préciser la récompense...", text: $newMissionReward)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal)
                    
                }
                
                
                HStack{
                    Toggle(isOn: $isOn) {
                        Text("La récompense nécessite une réservation")
                    }
                    .toggleStyle(iOSCheckboxToggleStyle())
                    .padding(.horizontal)
                    
                    Spacer()
                }
                
                Button(action: {
                    newMission = typeMissions(missionName: newMissionName, missionDescription: newMissionDescription, missionCategory: selectedcategorie, missionReward: newMissionReward, missionBooking: isOn)
                    
                    missionList.append(newMission)
                    
                    showAlert = true
                    
                }
                       
                       
                       
                ) {
                    Text("Valider")
                        .padding(.horizontal, 15)
                        .padding(.vertical, 10)
                        .foregroundColor(.black)
                        .background(Color.accent)
                        .cornerRadius(10)
                }
                
                .alert("Mission validée", isPresented: $showAlert) {
                    Button("OK", role: .cancel) {
                        dismiss()
                    }
                } message: {
                    Text("Votre mission a bien été validée")
                }
            }
            
            Spacer(minLength: 50)
            
            
            // Fin VSTACK Spacer
        }
        
        // Fin ScrollView
        
    }
    // Fin Vstack principale
}
// Fin body



// Fin struc
//}
struct iOSCheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        // 1
        Button(action: {
            
            // 2
            configuration.isOn.toggle()
            
        }, label: {
            HStack {
                // 3
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                
                configuration.label
            }
        })
    }
}




#Preview {
    
    AjouterUneMission(newMission: typeMissions.init(missionName: "", missionDescription: "", missionCategory: "", missionReward: "", missionBooking: false))
    
}


// Faire des States pour les Textfield pour pas qu'ils se suppriment
