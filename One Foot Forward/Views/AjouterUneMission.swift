//
//  AjouterUneMission.swift
//  One Foot Forward
//
//  Created by Lucie Grunenberger  on 06/06/2025.
//

import SwiftUI

struct AjouterUneMission: View {
    var categories = ["Mobilité", "Nettoyage", "Nourriture", "Autre"]
    @State private var selectedcategorie: String = "Mobilité"
    @State private var isOn = false
    
    
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
                    
                    TextField("rentrer le nom...", text: .constant(""))
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
                    
                    TextField("rentrer la description...", text: .constant(""))
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
                    
                    TextField("Préciser la récompense...", text: .constant(""))
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
                
                Button(action: {}) {
                    Text("Valider")
                        .padding(.horizontal, 15)
                        .padding(.vertical, 10)
                        .foregroundColor(.black)
                        .background(Color.accent)
                        .cornerRadius(10)
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
}



#Preview {
    AjouterUneMission()
}


// Faire des States pour les Textfield pour pas qu'ils se suppriment
