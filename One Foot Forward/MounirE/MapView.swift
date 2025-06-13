//
//  MapView.swift
//  One Foot Forward
//
//  Created by Mounir Emahoten on 06/06/2025.
//

import SwiftUI
import MapKit

enum Options: String, CaseIterable {
    case carte = "Carte"
    case liste = "Liste"
}

struct CustomSegmentedControlMap: View {
    
    @Binding var selectedOption: Options
    
    var body: some View {
        HStack (spacing: 0){
            ForEach(Options.allCases, id: \.self) { option in
                let isSelected = selectedOption == option
                
                Button {
                    
                    selectedOption = option
                    
                } label: {
                    HStack {
                        
                        Text(option.rawValue)
                        
                        
                    }
                    .frame(maxWidth: 175)
                    .padding(.vertical, 10)
                    .font(.headline)
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

struct MapView: View {
    
    @State private var searchText: String = ""
    @State var selectedOption : Options = .carte
    @State private var showingSheet = false
    @State private var position: MapCameraPosition = .userLocation(fallback: .automatic)
    
    
    let brasserie = CLLocationCoordinate2D(latitude: 48.84907150268555, longitude: 2.3709897994995117)
    
    let jardinDesPlantes = CLLocationCoordinate2D(latitude: 48.844312210441956, longitude: 2.3595523231077165)
    
    let musee = CLLocationCoordinate2D(latitude: 48.842193947885, longitude: 2.3562263839292497)
    
    
    var body: some View {
        
        
        ZStack {
            
            if selectedOption == .carte {
                
                
                Map(position: $position){
                    Marker("Brasserie de la gare", coordinate: brasserie)
                    Marker("Jardin Des Plantes", coordinate: jardinDesPlantes)
                    Marker("Musée", coordinate: musee)
                }
                
            } else {
                
                
                VStack {
                    
                    Spacer().frame(height: 150)
                    
                    ScrollView (showsIndicators: false){
                        ForEach(sampleModulesList) {item in
                            listModuleView(
                                imageName: item.imageName,
                                lieuName: item.lieuName,
                                description: item.description,
                                reward: item.reward
                            )
                            
                        }
                        .padding(.horizontal)
                        
                        
                        
                    }
                    .background(Color.white)
                }
                
            }
            
            VStack {
                
                VStack{
                    
                    HStack(spacing: 15){
                        
                        TextField("Search", text: $searchText)
                            .padding(.horizontal)
                            .frame(height: 50)
                            .background(Color.white)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.accentColor, lineWidth: 2)
                            )
                        
                        Button {
                            showingSheet.toggle()
                            
                        } label: {
                            
                                
                                Image(systemName: "line.3.horizontal.decrease")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .frame(width: 50, height: 50)
                                            .foregroundColor(.accent)
                                    )
                            
                            
                        }.sheet(isPresented: $showingSheet) {
                            filterSheetView()
                                .presentationDetents([.fraction(0.65), .large])
                        }
                        
                        
                        
                    }
                    .padding()
                    
                    CustomSegmentedControlMap(selectedOption: $selectedOption)
                }
                .padding([.top], 50)
                
                
                .background(
                    Rectangle()
                        .frame(height: 200)
                        .foregroundStyle(selectedOption == .carte ? Color.white.opacity(0.75) : Color.white)
                    
                )
                .ignoresSafeArea()
                
                Spacer()
            }
        }
        
        
        
        
    }
}

#Preview {
    MapView()
}
