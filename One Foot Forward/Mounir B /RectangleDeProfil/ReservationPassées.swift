//
//  ReservationPassées.swift
//  One Foot Forward
//
//  Created by Mounir on 12/06/2025.
//

import SwiftUI

struct ReservationPassées : View {
  @State  var selecteOption: pickerOptions = .passées
  @State private var afficherNotation = false
  @State private var noteTemporaire: Int = 0
    
    var body: some View {
        
        VStack{
          
            ScrollView{
                ForEach(listeDesTouristes){index in
                    
                    VStack{
                        HStack{
                            Text(index.date   , format: .dateTime.day().month().year())
                            Spacer()
                        }
                        .padding()
                        
                        Divider()
                        
                        HStack{
                            
                            VStack{
                                ZStack{
                                    Circle()
                                        .stroke(index.rangColor, lineWidth: 10)
                                    
                                    Image(index.photo)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 80, height: 80)
                                        .clipShape(Circle())
                                }
                                HStack{
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.gold)
                                    Text("\(index.note, specifier: "%.2f")")
                                    
                                }
                                
                            }
                            Spacer(minLength: 40)
                            
                            VStack{
                                HStack{
                                    Text(index.mission)
                                        .font(.headline)
                                    Spacer()
                                    
                                }
                                
                                HStack{
                                    Image(.time)
                                    Text("\(index.duree)")
                                    Spacer()
                                }
                                
                                HStack{
                                    Image(.location)
                                    Text("\(index.lieu)")
                                    Spacer()
                                    
                                }
                                
                                HStack{
                                    Button(action: {}) {
                                        Text("Contacter")
                                            .padding(.horizontal, 15)
                                            .padding(.vertical, 10)
                                            .foregroundColor(.black)
                                            .background(Color.accent)
                                            .cornerRadius(10)
                                    }
                                    
                                    Button(action: {
                                        noteTemporaire = 0
                                        afficherNotation = true
                                    }) {
                                        Text("Noter")
                                            .padding(.horizontal, 15)
                                            .padding(.vertical, 10)
                                            .foregroundColor(.black)
                                            .background(.gray)
                                            .cornerRadius(10)
                                    }
                                    
                                }
                            }
                            
                        }
                        
                    }
                    .frame(width: 360, height: 180)
                    .padding()
                    .padding(.bottom, 20)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(color: .gray.opacity(0.3), radius: 5, x: 2, y: 2)
                    
                    Spacer(minLength: 20)
                    
                }
                .padding(30)
            }
            
            .sheet(isPresented: $afficherNotation) {
                VStack(spacing: 20) {
                    Text("Donner une note")
                        .font(.headline)

                    HStack {
                        ForEach(1...5, id: \.self) { etoile in
                            Image(systemName: etoile <= noteTemporaire ? "star.fill" : "star")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.yellow)
                                .onTapGesture {
                                    noteTemporaire = etoile
                                }
                        }
                    }

                    Button("Fermer") {
                        afficherNotation = false
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.accent)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                .padding()
            }
            
        }
    }
}


#Preview {
    ReservationPassées()
}
