//
//  reservationCard.swift
//  One Foot Forward
//
//  Created by Mounir Emahoten on 15/06/2025.
//

import SwiftUI

struct reservationCard: View {
    var item: ModuleItem
    var color: Color
    var pickerOptions : pickerOptions
    var onCancel: (() -> Void)? = nil
    
    var body: some View {
        
        
            VStack{
                HStack{
                    Text("14 Juillet 2026")
                    Spacer()
                }
                .padding()
                
                Divider()
                
                HStack{
                    
                    VStack{
                        
                        Image(item.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                        
                    }
                    Spacer(minLength: 40)
                    
                    VStack{
                        HStack{
                            Text(item.description)
                                .font(.headline)
                            
                            Spacer()
                            
                        }
                        
                        HStack{
                            Image(.time)
                            Text(item.duration)
                            Spacer()
                        }
                        
                        HStack{
                            Image(systemName: "mappin")
                            Text(item.lieuName)
                            if pickerOptions == .aVenir {
                                Button {
                                    
                                } label: {
                                    Image(.location)
                                        .padding(.horizontal, 10)
                                        .padding(.vertical, 5)
                                        .foregroundStyle(.white)
                                        .background(Color.accent)
                                        .cornerRadius(10)
                                }
                            }
                            Spacer()
                            
                        }
                        
                        if pickerOptions == .aVenir {
                            
                            HStack{
                                NavigationLink {
                                    ValidationView()
                                } label: {
                                    Text("Valider")
                                        .padding(.horizontal, 15)
                                        .padding(.vertical, 10)
                                        .foregroundColor(.black)
                                        .background(Color.accent)
                                        .cornerRadius(10)
                                }
                                
                                Button{
                                    onCancel?()
                                } label: {
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
            }
            .frame(width: 360, height: 180)
            .padding()
            .padding(.bottom, 20)
            .background(color)
            .cornerRadius(20)
            .shadow(color: .gray.opacity(0.3), radius: 5, x: 2, y: 2)
            .padding(.horizontal)
        }
    
}
#Preview {
    reservationCard(item: sampleModulesList[0], color: .accent, pickerOptions: .aVenir)
}
