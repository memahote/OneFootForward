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


struct Location: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let coordinate: CLLocationCoordinate2D
}

struct MapView: View {
    
    @State private var searchText: String = ""
    @State var selectedOption : Options = .carte
    @State private var showingSheet = false
    @State private var position: MapCameraPosition = .userLocation(fallback: .automatic)
    @State private var showSheet = false
    @State private var selectedLocation: Location?
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 48.849, longitude: 2.370),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    
    let locations: [Location] = [
        Location(name: "Brasserie de la Gare",
                 description: "Petit café parisien avec une belle terrasse.",
                 coordinate: CLLocationCoordinate2D(latitude: 48.84907, longitude: 2.37098)),
        Location(name: "Jardin des Plantes",
                 description: "Jardin botanique chargé d'Histoire.",
                 coordinate: CLLocationCoordinate2D(latitude: 48.84431, longitude: 2.35955)),
        Location(name: "Musée",
                 description: "Peintures, sculptures et expositions temporaires.",
                 coordinate: CLLocationCoordinate2D(latitude: 48.84219, longitude: 2.35623))
    ]
    
    
    var body: some View {
        
        
        NavigationStack {
            ZStack {
                
                if selectedOption == .carte {
                    
                    
                    Map {
                        
                        ForEach(locations) { location in
                            Annotation(location.name, coordinate: location.coordinate) {
                                Image(systemName: "mappin.circle.fill")
                                    .font(.title)
                                    .foregroundColor(.red)
                                    .onTapGesture {
                                        selectedLocation = location
                                    }
                            }
                        }
                    }
                    .sheet(item: $selectedLocation) { location in
                        DetailView(location: location)
                            .presentationDetents([.fraction(0.65), .large])
                    }
                }
                
                else {
                    
                    
                    VStack {
                        
                        Spacer().frame(height: 150)
                        
                        ScrollView (showsIndicators: false){
                            ForEach(sampleModulesList) {item in
                                
                                NavigationLink{
                                    eventDetailView(imageName: item.imageName, lieuName: item.lieuName, description: item.description, reward: item.reward, duration: item.duration, impact: item.impact)
                                } label: {
                                    listModuleView(
                                        imageName: item.imageName,
                                        lieuName: item.lieuName,
                                        description: item.description,
                                        reward: item.reward
                                    )
                                }
                                
                                
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
            .toolbar(.hidden)
        }
        
        
    }
    
}
#Preview {
    MapView()
}
