//
//  filterSheetView.swift
//  One Foot Forward
//
//  Created by Mounir Emahoten on 08/06/2025.
//

import SwiftUI

struct Filter: Identifiable {
    let id = UUID()
    let name: String
    var isSelected: Bool
}

struct filterSheetView: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var distance = 0.0
    @State private var filtersRewards: [Filter] = [
        Filter(name: "🏆 Récompense", isSelected: false),
        Filter(name: "⚡ XP élevé", isSelected: false),
        Filter(name: "🚴 Activité physique", isSelected: false),
        Filter(name: "🧘 Bien-être", isSelected: false),
        Filter(name: "🧭 Hors des sentiers battus", isSelected: false)
    ]
    
    @State private var filtersActivity: [Filter] = [
        Filter(name: "🏆 Nourriture", isSelected: false),
        Filter(name: "🚴 Activité physique", isSelected: false),
        Filter(name: "🌱 Écologique", isSelected: false),
        Filter(name: "🧭 Autres", isSelected: false)
    ]
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            
            VStack {
                
                
                HStack{
                    Spacer()
                    
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.title)
                            .foregroundStyle(.red)
                    }

                }
                .padding()
                Text("Filtres")
                    .font(.title)
                    .bold()
                    .padding(.horizontal)
            }
            
            Divider()
                .frame(height: 2)
                .background(Color.accentColor)
                .padding(.horizontal)
            
            VStack(alignment: .leading, spacing: 16) {
                
                
                Text("Récompenses")
                    .font(.headline)
                    .padding(.horizontal)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack(spacing: 12) {
                        
                        ForEach($filtersRewards) { $filter in
                            Button(action: {
                                filter.isSelected.toggle()
                            }) {
                                Text(filter.name)
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 10)
                                    .background(filter.isSelected ? Color.accentColor : Color.gray.opacity(0.2))
                                    .foregroundColor(.primary)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                
                Text("Activités")
                    .font(.headline)
                    .padding(.horizontal)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack(spacing: 12) {
                        
                        ForEach($filtersActivity) { $filter in
                            Button(action: {
                                filter.isSelected.toggle()
                            }) {
                                Text(filter.name)
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 10)
                                    .background(filter.isSelected ? Color.accentColor : Color.gray.opacity(0.2))
                                    .foregroundColor(.primary)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                
                
                
                VStack {
                    Slider(value: $distance, in: 0...100)
                    Text("Distance : \(Int(distance)) km")
                        .font(.subheadline)
                }
                .padding()
                
                HStack(spacing: 20){
                    
                    Spacer()
                    
                    Button {
                        dismiss()
                    } label: {
                        Text("Tout Effacer")
                    }
                    
                    
                    Button {
                        dismiss()
                    } label: {
                        Text("Appliquer")
                            .foregroundStyle(.white)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 100, height: 45)
                                    .foregroundColor(.accent)
                            )
                    }
                    
                    Spacer()
                }.padding(.horizontal)
            }
        }
        .padding(.top, 20)
    }
}

#Preview {
    filterSheetView()
}
