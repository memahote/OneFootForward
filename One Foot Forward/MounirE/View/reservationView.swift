//
//  reservationView.swift
//  One Foot Forward
//
//  Created by Mounir Emahoten on 09/06/2025.
//

import SwiftUI

enum pickerOptionsRes: String, CaseIterable {
    case avenir = "A venir"
    case passe = "Pasées"
    case annuler = "Annulées"
    
   
}

struct CustomPickerControlRes: View {
    
    @Binding var selecteOption: pickerOptionsRes
    
    
    var body: some View {
        HStack (spacing: 0){
            ForEach(pickerOptionsRes.allCases, id: \.self) { option in
                let isSelected = selecteOption == option
                
                Button {
                    selecteOption = option
                } label: {
                    HStack {
                        
                        Text(option.rawValue)
                        
                        
                    }
                    .frame(maxWidth: 175)
                    .padding(.vertical, 10)
                    .font(.system(size: 20))
                    .foregroundStyle(isSelected ? Color.white : Color.primary)
                    .background(isSelected ? Color.accent : Color.clear)
                    .clipShape(RoundedRectangle(cornerRadius: 7))
                }
                
                
                
                
                
            }
        }
        .background(.gray.opacity(0.6))
        .clipShape(RoundedRectangle(cornerRadius: 8))
        
    }
}

struct reservationView: View {
    
    @State private var selecteOption: pickerOptionsRes = .avenir
  

    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            
            HStack {
                Text("Mes Réservations")
                    .font(.largeTitle)
                    .bold()
                
                Spacer()
            }
            .padding(.horizontal)
            
            CustomPickerControlRes(selecteOption: $selecteOption)
                .padding(.horizontal)
            
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
   
                                        Image(index.photo)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height: 100)
                                            .clipShape(Circle())
                                   
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
                                        
                                        Button(action: {}) {
                                            Text("Annuler")
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
                    
                }
                
            }
            
        }
    }
}

#Preview {
    reservationView()
}
