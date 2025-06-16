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
        VStack(spacing: 10) {
            HStack {
                Text("14 Juillet 2026")
                    .font(.subheadline)
                Spacer()
            }
            .padding([.horizontal, .top], 10)
            
            Divider()
            
            HStack(spacing: 35) {
                
                Image(item.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 6) {
                    Text(item.description)
                        .font(.body)
                        .bold()
                        .lineLimit(1)
                    
                    HStack {
                        Image(systemName: "clock.fill")
                            .font(.footnote)
                        Text(item.duration)
                            .font(.footnote)
                    }
                    HStack {
                        Image(systemName: "mappin")
                            .font(.footnote)
                        Text(item.lieuName)
                            .font(.footnote)
                        if pickerOptions == .aVenir {
                            Button {
                                
                            } label: {
                                Image(systemName: "location")
                                    .padding(5)
                                    .background(Color.accent)
                                    .foregroundColor(.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                            }
                        }
                    }
                    if pickerOptions == .aVenir {
                        HStack(spacing: 10) {
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
                            
                            Button {
                                onCancel?()
                            } label: {
                                Text("Annuler")
                                    .padding(.horizontal, 15)
                                    .padding(.vertical, 10)
                                    .foregroundColor(.black)
                                    .background(Color.gray)
                                    .cornerRadius(10)
                            }
                        }
                    }
                }
                
                Spacer()
            }
            .padding([.horizontal, .bottom], 10)
        }
        .frame(width: 380)
        .background(color)
        .cornerRadius(15)
        .shadow(color: .gray.opacity(0.3), radius: 3, x: 1, y: 1)
        .padding([.horizontal], 10)
    }
}

#Preview {
    reservationCard(item: sampleModulesList[0], color: .accent, pickerOptions: .aVenir)
}
